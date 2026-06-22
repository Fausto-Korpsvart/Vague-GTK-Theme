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
            rm -rf "theme${theme}${type}"
            cp -rf "theme" "theme${theme}${type}"
            sed -i "s/#7e98e8/${theme_color_dark}/g" "theme${theme}${type}"/*.svg
            sed -i "s/#6e94b2/${theme_color_light}/g" "theme${theme}${type}"/*.svg
        elif [[ "$theme" != '' ]]; then
            rm -rf "theme${theme}"
            cp -rf "theme" "theme${theme}"
            sed -i "s/#7e98e8/${theme_color_dark}/g" "theme${theme}"/*.svg
            sed -i "s/#6e94b2/${theme_color_light}/g" "theme${theme}"/*.svg
        fi
    done
done

echo -e "DONE!"
