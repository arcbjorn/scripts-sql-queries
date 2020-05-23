#!/bin/bash

PS3='
Please select task to review (number + enter to select): '
options=(
        "Sorting array"
        "Paint RU Flag in console"
        "View HTML Form"
        "View SQL Queries"
        "Close"
        )
select opt in "${options[@]}"
do
    case $opt in
        "Sorting array")
            PS3='Would you like to test the script or view the source code? '
            modes=("Test the script" "View source code" "Close")
            select md in "${modes[@]}"
            do
                case $md in
                    "Test the script")
                        node sort.js
                        break
                        ;;
                    "View source code")
                        cat sort.js
                        break
                        ;;
                    "Close")
                        break
                        ;;
                    *) echo "invalid option $REPLY";;
                esac
            done
            break
            ;;
        "Paint RU Flag in console")
            PS3='Would you like to test the script or view the source code? '
            modes=("Test the script" "View source code" "Close")
            select md in "${modes[@]}"
            do
                case $md in
                    "Test the script")
                        node flag.js
                        break
                        ;;
                    "View source code")
                        cat flag.js
                        break
                        ;;
                    "Close")
                        break
                        ;;
                    *) echo "invalid option $REPLY";;
                esac
            done
            break
            ;;
        "View HTML Form")
            PS3='Please select browser to open the form with: (number + enter to select)'
            browsers=("Open in Firefox" "Open in Google Chrome" "Close")
            select brws in "${browsers[@]}"
            do
                case $brws in
                    "Open in Firefox")
                        firefox form.html
                        ;;
                    "Open in Google Chrome")
                        google-chrome form.html
                        ;;
                    "Close")
                        break
                        ;;
                    *) echo "invalid option $REPLY";;
                esac
            done
            break
            ;;
        "View SQL Queries")
            cat task-queries.sql
            break
            ;;
        "Close")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done