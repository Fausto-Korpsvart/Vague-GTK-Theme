#!/usr/bin/env bash

# Vague GTK Theme: GTK2 Config Generator
# Generates and patches the GTK2 gtkrc configuration file with selected variant colors.
# Author: @fkorpsvart | License: GPL-3.0

# --- Lookup Tables Definition ---
# Note: 'default' and 'none' sentinel keys are used because Bash arrays cannot have empty keys.
declare -A PALETTE_LIGHT
declare -A PALETTE_DARK
declare -A BACKGROUNDS

# --- Light Accent Palette Colors ---
PALETTE_LIGHT["default"]="#6E94B2"
PALETTE_LIGHT["-Blue"]="#4A5D7A"
PALETTE_LIGHT["-Green"]="#5A6B57"
PALETTE_LIGHT["-Grey"]="#515163"
PALETTE_LIGHT["-Orange"]="#A6735A"
PALETTE_LIGHT["-Pink"]="#8E6A7A"
PALETTE_LIGHT["-Purple"]="#6C6C8F"
PALETTE_LIGHT["-Red"]="#844F4F"
PALETTE_LIGHT["-Teal"]="#4D6B63"
PALETTE_LIGHT["-Yellow"]="#96825D"

# --- Dark Accent Palette Colors ---
PALETTE_DARK["default"]="#7E98E8"
PALETTE_DARK["-Blue"]="#8FA6CB"
PALETTE_DARK["-Green"]="#9DB298"
PALETTE_DARK["-Grey"]="#C9C9E0"
PALETTE_DARK["-Orange"]="#D69C7E"
PALETTE_DARK["-Pink"]="#C99FB3"
PALETTE_DARK["-Purple"]="#A6A6CC"
PALETTE_DARK["-Red"]="#C17A7A"
PALETTE_DARK["-Teal"]="#94B5AC"
PALETTE_DARK["-Yellow"]="#D1B88A"

# --- Background Shade Roles ---
# Key pattern: [ctype]-[blackness_flag]-[shade_role]

# Default scheme (standard bg)
BACKGROUNDS["none-FALSE-light"]="#F0F0F5"
BACKGROUNDS["none-FALSE-dark"]="#141415"
BACKGROUNDS["none-FALSE-darker"]="#0D0D10"
BACKGROUNDS["none-FALSE-alt"]="#1C1C24"

# Medium scheme (standard bg)
BACKGROUNDS["-Medium-FALSE-light"]="#F0F0F5"
BACKGROUNDS["-Medium-FALSE-dark"]="#1C1C24"
BACKGROUNDS["-Medium-FALSE-darker"]="#141415"
BACKGROUNDS["-Medium-FALSE-alt"]="#252530"

# Soft scheme (standard bg)
BACKGROUNDS["-Soft-FALSE-light"]="#F0F0F5"
BACKGROUNDS["-Soft-FALSE-dark"]="#252530"
BACKGROUNDS["-Soft-FALSE-darker"]="#1C1C24"
BACKGROUNDS["-Soft-FALSE-alt"]="#2E2E3B"

# OLED Black overrides
BACKGROUNDS["none-TRUE-dark"]="#000000"
BACKGROUNDS["none-TRUE-darker"]="#0D0D10"
BACKGROUNDS["none-TRUE-alt"]="#0D0D10"

BACKGROUNDS["-Medium-TRUE-dark"]="#0D0D10"
BACKGROUNDS["-Medium-TRUE-darker"]="#141415"
BACKGROUNDS["-Medium-TRUE-alt"]="#1C1C24"

BACKGROUNDS["-Soft-TRUE-dark"]="#141415"
BACKGROUNDS["-Soft-TRUE-darker"]="#1C1C24"
BACKGROUNDS["-Soft-TRUE-alt"]="#252530"

# Builds and injects the customized GTK2 gtkrc stylesheet.
# Args:
#   1: dest       - Base destination path
#   2: name       - Theme name prefix
#   3: theme      - Accent variant suffix
#   4: color      - Color scheme suffix
#   5: size       - Size suffix
#   6: ctype      - Background scheme suffix
#   7: window     - Button layout suffix
#   8: tweaks_tag - Tweaks tag suffix
make_gtkrc() {
    local dest="${1}"
    local name="${2}"
    local theme="${3:-default}"
    local color="${4}"
    local size="${5}"
    local ctype="${6:-none}"
    local window="${7}"
    local tweaks_tag="${8:-}"

    # Normalise empty parameters into sentinel keys
    [[ -z "${theme}" ]] && theme="default"
    [[ -z "${ctype}" ]] && ctype="none"

    local ELSE_DARK=""
    [[ "${color}" == '-Dark' ]] && ELSE_DARK="${color}"

    local GTKRC_DIR="${SRC_DIR}/main/gtk-2.0"
    local THEME_DIR="${1}/${2}${6}${3}${4}${5}${tweaks_tag}"

    # Resolve accent color
    local theme_color
    local lookup_key="${ctype}${theme}"
    [[ "${ctype}" == "none" ]] && lookup_key="${theme}"

    if [[ "${color}" == '-Dark' ]]; then
        theme_color="${PALETTE_DARK[$lookup_key]:-${PALETTE_DARK[$theme]:-}}"
    else
        theme_color="${PALETTE_LIGHT[$lookup_key]:-${PALETTE_LIGHT[$theme]:-}}"
    fi

    # Resolve background shades
    local is_black="${blackness:-false}"
    is_black="${is_black^^}"

    local bg_key_prefix="${ctype}-${is_black}"
    local bg_light="${BACKGROUNDS[${ctype}-FALSE-light]:-${BACKGROUNDS[none-FALSE-light]:-#F0F0F5}}"
    local bg_dark="${BACKGROUNDS[${bg_key_prefix}-dark]:-${BACKGROUNDS[none-${is_black}-dark]:-#141415}}"
    local bg_darker="${BACKGROUNDS[${bg_key_prefix}-darker]:-${BACKGROUNDS[none-${is_black}-darker]:-#0D0D10}}"
    local bg_alt="${BACKGROUNDS[${bg_key_prefix}-alt]:-${BACKGROUNDS[none-${is_black}-alt]:-#1C1C24}}"

    local titlebar_light="${bg_light}"
    local titlebar_dark="${bg_dark}"

    # Deploy and patch gtkrc template
    run_safe mkdir -p "${THEME_DIR}/gtk-2.0"
    run_safe cp -r "${GTKRC_DIR}/gtkrc${ELSE_DARK}-default" "${THEME_DIR}/gtk-2.0/gtkrc"

    # Substitute placeholder colors with resolved theme colors
    if [[ "${color}" == '-Dark' ]]; then
        run_safe sed -i "s/#7e98e8/${theme_color}/g"    "${THEME_DIR}/gtk-2.0/gtkrc"
        run_safe sed -i "s/#F0F0F5/${bg_light}/g"       "${THEME_DIR}/gtk-2.0/gtkrc"
        run_safe sed -i "s/#141415/${bg_dark}/g"        "${THEME_DIR}/gtk-2.0/gtkrc"
        run_safe sed -i "s/#1C1C24/${bg_alt}/g"         "${THEME_DIR}/gtk-2.0/gtkrc"
        run_safe sed -i "s/#0D0D10/${bg_darker}/g"      "${THEME_DIR}/gtk-2.0/gtkrc"
        run_safe sed -i "s/#141415/${titlebar_dark}/g"  "${THEME_DIR}/gtk-2.0/gtkrc"
    else
        run_safe sed -i "s/#6e94b2/${theme_color}/g"    "${THEME_DIR}/gtk-2.0/gtkrc"
        run_safe sed -i "s/#F0F0F5/${titlebar_light}/g" "${THEME_DIR}/gtk-2.0/gtkrc"
    fi
}
