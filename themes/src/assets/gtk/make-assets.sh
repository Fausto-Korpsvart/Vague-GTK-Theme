#! /usr/bin/env bash

for theme in '' '-Blue' '-Green' '-Grey' '-Orange' '-Pink' '-Purple' '-Red' '-Teal' '-Yellow'; do
    for type in '' '-Medium' '-Soft'; do
        case "$theme" in
            '')
                theme_color_dark='#7e98e8'
                theme_color_light='#6e94b2'
                ;;
            -Blue)
                theme_color_dark='#8fa6cb'
                theme_color_light='#4a5d7a'
                ;;
            -Green)
                theme_color_dark='#9db298'
                theme_color_light='#5a6b57'
                ;;
            -Grey)
                theme_color_dark='#c9c9e0'
                theme_color_light='#515163'
                ;;
            -Orange)
                theme_color_dark='#d69c7e'
                theme_color_light='#a6735a'
                ;;
            -Pink)
                theme_color_dark='#c99fb3'
                theme_color_light='#8e6a7a'
                ;;
            -Purple)
                theme_color_dark='#a6a6cc'
                theme_color_light='#6c6c8f'
                ;;
            -Red)
                theme_color_dark='#c17a7a'
                theme_color_light='#844f4f'
                ;;
            -Teal)
                theme_color_dark='#94b5ac'
                theme_color_light='#4d6b63'
                ;;
            -Yellow)
                theme_color_dark='#d1b88a'
                theme_color_light='#96825d'
                ;;
        esac

        if [[ "$type" == '-Medium' ]]; then
            background_light='#f0f0f5'
            background_dark='#1c1c24'
            base_dark='#141415'
            surface_dark='#383847'

            case "$theme" in
                '')
                    theme_color_dark='#7e98e8'
                    theme_color_light='#6e94b2'
                    ;;
                -Blue)
                    theme_color_dark='#8fa6cb'
                    theme_color_light='#4a5d7a'
                    ;;
                -Green)
                    theme_color_dark='#9db298'
                    theme_color_light='#5a6b57'
                    ;;
                -Grey)
                    theme_color_dark='#c9c9e0'
                    theme_color_light='#515163'
                    ;;
                -Orange)
                    theme_color_dark='#d69c7e'
                    theme_color_light='#a6735a'
                    ;;
                -Pink)
                    theme_color_dark='#c99fb3'
                    theme_color_light='#8e6a7a'
                    ;;
                -Purple)
                    theme_color_dark='#a6a6cc'
                    theme_color_light='#6c6c8f'
                    ;;
                -Red)
                    theme_color_dark='#c17a7a'
                    theme_color_light='#844f4f'
                    ;;
                -Teal)
                    theme_color_dark='#94b5ac'
                    theme_color_light='#4d6b63'
                    ;;
                -Yellow)
                    theme_color_dark='#d1b88a'
                    theme_color_light='#96825d'
                    ;;
            esac
        fi

        if [[ "$type" == '-Soft' ]]; then
            background_light='#f0f0f5'
            background_dark='#252530'
            base_dark='#1c1c24'
            surface_dark='#444454'

            case "$theme" in
                '')
                    theme_color_dark='#7e98e8'
                    theme_color_light='#6e94b2'
                    ;;
                -Blue)
                    theme_color_dark='#8fa6cb'
                    theme_color_light='#4a5d7a'
                    ;;
                -Green)
                    theme_color_dark='#9db298'
                    theme_color_light='#5a6b57'
                    ;;
                -Grey)
                    theme_color_dark='#c9c9e0'
                    theme_color_light='#515163'
                    ;;
                -Orange)
                    theme_color_dark='#d69c7e'
                    theme_color_light='#a6735a'
                    ;;
                -Pink)
                    theme_color_dark='#c99fb3'
                    theme_color_light='#8e6a7a'
                    ;;
                -Purple)
                    theme_color_dark='#a6a6cc'
                    theme_color_light='#6c6c8f'
                    ;;
                -Red)
                    theme_color_dark='#c17a7a'
                    theme_color_light='#844f4f'
                    ;;
                -Teal)
                    theme_color_dark='#94b5ac'
                    theme_color_light='#4d6b63'
                    ;;
                -Yellow)
                    theme_color_dark='#d1b88a'
                    theme_color_light='#96825d'
                    ;;
            esac
        fi

        if [[ "$type" != '' ]]; then
            cp -rf "assets.svg" "assets${theme}${type}.svg"
            sed -i "s/#7e98e8/${theme_color_dark}/g" "assets${theme}${type}.svg"
            sed -i "s/#6e94b2/${theme_color_light}/g" "assets${theme}${type}.svg"
            sed -i "s/#f0f0f5/${background_light}/g" "assets${theme}${type}.svg"
            sed -i "s/#141415/${background_dark}/g" "assets${theme}${type}.svg"
            sed -i "s/#0d0d10/${base_dark}/g" "assets${theme}${type}.svg"
            sed -i "s/#252530/${surface_dark}/g" "assets${theme}${type}.svg"
        elif [[ "$theme" != '' ]]; then
            cp -rf "assets.svg" "assets${theme}.svg"
            sed -i "s/#7e98e8/${theme_color_dark}/g" "assets${theme}.svg"
            sed -i "s/#6e94b2/${theme_color_light}/g" "assets${theme}.svg"
        fi
    done
done

echo -e "DONE!"
