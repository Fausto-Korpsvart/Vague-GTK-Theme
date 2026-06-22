#! /usr/bin/env bash

for theme in '' '-Blue' '-Green' '-Grey' '-Orange' '-Pink' '-Purple' '-Red' '-Teal' '-Yellow'; do
    for color in '' '-Dark'; do
        for type in '' '-Medium' '-Soft'; do
            if [[ "$color" == '' ]]; then
                case "$theme" in
                    '')
                        theme_color='#6e94b2'
                        ;;
                    -Blue)
                        theme_color='#4a5d7a'
                        ;;
                    -Green)
                        theme_color='#5a6b57'
                        ;;
                    -Grey)
                        theme_color='#515163'
                        ;;
                    -Orange)
                        theme_color='#a6735a'
                        ;;
                    -Pink)
                        theme_color='#8e6a7a'
                        ;;
                    -Purple)
                        theme_color='#6c6c8f'
                        ;;
                    -Red)
                        theme_color='#844f4f'
                        ;;
                    -Teal)
                        theme_color='#4d6b63'
                        ;;
                    -Yellow)
                        theme_color='#96825d'
                        ;;
                esac

                if [[ "$type" == '-Medium' ]]; then
                    background_color='#f0f0f5'

                    case "$theme" in
                        '')
                            theme_color='#6e94b2'
                            ;;
                        -Blue)
                            theme_color='#4a5d7a'
                            ;;
                        -Green)
                            theme_color='#5a6b57'
                            ;;
                        -Grey)
                            theme_color='#515163'
                            ;;
                        -Orange)
                            theme_color='#a6735a'
                            ;;
                        -Pink)
                            theme_color='#8e6a7a'
                            ;;
                        -Purple)
                            theme_color='#6c6c8f'
                            ;;
                        -Red)
                            theme_color='#844f4f'
                            ;;
                        -Teal)
                            theme_color='#4d6b63'
                            ;;
                        -Yellow)
                            theme_color='#96825d'
                            ;;
                    esac
                fi

                if [[ "$type" == '-Soft' ]]; then
                    background_color='#f0f0f5'

                    case "$theme" in
                        '')
                            theme_color='#6e94b2'
                            ;;
                        -Blue)
                            theme_color='#4a5d7a'
                            ;;
                        -Green)
                            theme_color='#5a6b57'
                            ;;
                        -Grey)
                            theme_color='#515163'
                            ;;
                        -Orange)
                            theme_color='#a6735a'
                            ;;
                        -Pink)
                            theme_color='#8e6a7a'
                            ;;
                        -Purple)
                            theme_color='#6c6c8f'
                            ;;
                        -Red)
                            theme_color='#844f4f'
                            ;;
                        -Teal)
                            theme_color='#4d6b63'
                            ;;
                        -Yellow)
                            theme_color='#96825d'
                            ;;
                    esac
                fi

            else
                case "$theme" in
                    '')
                        theme_color='#7e98e8'
                        ;;
                    -Blue)
                        theme_color='#8fa6cb'
                        ;;
                    -Green)
                        theme_color='#9db298'
                        ;;
                    -Grey)
                        theme_color='#c9c9e0'
                        ;;
                    -Orange)
                        theme_color='#d69c7e'
                        ;;
                    -Pink)
                        theme_color='#c99fb3'
                        ;;
                    -Purple)
                        theme_color='#a6a6cc'
                        ;;
                    -Red)
                        theme_color='#c17a7a'
                        ;;
                    -Teal)
                        theme_color='#94b5ac'
                        ;;
                    -Yellow)
                        theme_color='#d1b88a'
                        ;;
                esac

                if [[ "$type" == '-Medium' ]]; then
                    background_color='#1c1c24'

                    case "$theme" in
                        '')
                            theme_color='#7e98e8'
                            ;;
                        -Blue)
                            theme_color='#8fa6cb'
                            ;;
                        -Green)
                            theme_color='#9db298'
                            ;;
                        -Grey)
                            theme_color='#c9c9e0'
                            ;;
                        -Orange)
                            theme_color='#d69c7e'
                            ;;
                        -Pink)
                            theme_color='#c99fb3'
                            ;;
                        -Purple)
                            theme_color='#a6a6cc'
                            ;;
                        -Red)
                            theme_color='#c17a7a'
                            ;;
                        -Teal)
                            theme_color='#94b5ac'
                            ;;
                        -Yellow)
                            theme_color='#d1b88a'
                            ;;
                    esac
                fi

                if [[ "$type" == '-Soft' ]]; then
                    background_color='#252530'

                    case "$theme" in
                        '')
                            theme_color='#7e98e8'
                            ;;
                        -Blue)
                            theme_color='#8fa6cb'
                            ;;
                        -Green)
                            theme_color='#9db298'
                            ;;
                        -Grey)
                            theme_color='#c9c9e0'
                            ;;
                        -Orange)
                            theme_color='#d69c7e'
                            ;;
                        -Pink)
                            theme_color='#c99fb3'
                            ;;
                        -Purple)
                            theme_color='#a6a6cc'
                            ;;
                        -Red)
                            theme_color='#c17a7a'
                            ;;
                        -Teal)
                            theme_color='#94b5ac'
                            ;;
                        -Yellow)
                            theme_color='#d1b88a'
                            ;;
                    esac
                fi

            fi

            if [[ "$type" != '' ]]; then
                cp -r "assets${color}.svg" "assets${theme}${color}${type}.svg"
                if [[ "$color" == '' ]]; then
                    sed -i "s/#6e94b2/${theme_color}/g" "assets${theme}${color}${type}.svg"
                else
                    sed -i "s/#7e98e8/${theme_color}/g" "assets${theme}${color}${type}.svg"
                fi
            elif [[ "$theme" != '' ]]; then
                cp -r "assets${color}.svg" "assets${theme}${color}.svg"
                if [[ "$color" == '' ]]; then
                    sed -i "s/#6e94b2/${theme_color}/g" "assets${theme}${color}.svg"
                else
                    sed -i "s/#7e98e8/${theme_color}/g" "assets${theme}${color}.svg"
                fi
            fi

        done
    done
done

echo -e "DONE!"
