module Home.View exposing (view)

import Home.Messages exposing (..)
import Models exposing (Model)
import Html exposing (..)
import Html.Attributes exposing (..)


loginForm : Html Msg
loginForm =
    div [ class "container" ]
        [ div [ class "wrapper" ]
            [ Html.form [ action "", class "form-signin", method "post", name "Login_Form" ]
                [ h3 [ class "form-signin-heading" ]
                    [ text "Welcome! Please Sign Up" ]
                , hr [ class "colorgraph" ]
                    []
                , br []
                    []
                , input [ attribute "autofocus" "", class "form-control", name "Username", placeholder "Username", attribute "required" "", type' "text" ]
                    []
                , text ""
                , input [ class "form-control", name "Password", placeholder "Password", attribute "required" "", type' "password" ]
                    []
                , button [ class "btn btn-lg btn-primary btn-block", name "Submit", type' "Submit", value "Login" ]
                    [ text "Login" ]
                ]
            ]
        ]


view : Model -> Html Msg
view model =
    Html.div [] [ loginForm ]
