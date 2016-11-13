module Components exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Messages exposing (Msg(..))


navbar : Html Msg
navbar =
    nav [ class "navbar navbar-light bg-faded navbar-fixed-top" ]
        [ button [ class "navbar-toggler hidden-sm-up", attribute "data-target" "#exCollapsingNavbar2", attribute "data-toggle" "collapse", type' "button" ]
            [ text "&#9776;    " ]
        , div [ class "collapse navbar-toggleable-xs", id "exCollapsingNavbar2" ]
            [ a [ class "navbar-brand", href "#" ]
                [ text "Navbar" ]
            , ul [ class "nav navbar-nav" ]
                [ li [ class "nav-item" ]
                    [ a [ class "nav-link", href "about.html" ]
                        [ text "About" ]
                    ]
                , li [ class "nav-item" ]
                    [ a [ class "nav-link", href "services.html" ]
                        [ text "Services" ]
                    ]
                , li [ class "nav-item" ]
                    [ a [ class "nav-link", href "contact.html" ]
                        [ text "Contact" ]
                    ]
                ]
            , Html.form [ class "form-inline navbar-form pull-right" ]
                [ input [ class "form-control", placeholder "Search", type' "text" ]
                    []
                ]
            ]
        ]