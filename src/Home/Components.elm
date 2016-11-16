module Home.Components exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput, onSubmit)
import Home.Types exposing (Model, Msg(..))
import Mouse


debugPosition : Mouse.Position -> String
debugPosition position =
    "Clicked { x: " ++ (toString position.x) ++ ", y: " ++ (toString position.y) ++ " }"


loginForm : Model -> Html Msg
loginForm model =
    div [ class "container" ]
        [ div [ class "wrapper" ]
            [ div [ class "signup-form-wrapper" ]
                [ div [] [ text (debugPosition model.position) ]
                , Html.form [ action "", class "form-signup", method "post", onSubmit SendLogin ]
                    [ h3 [ class "form-signup-heading" ]
                        [ text "Welcome! Please Sign Up" ]
                    , hr [ class "colorgraph" ]
                        []
                    , br []
                        []
                    , input [ attribute "autofocus" "", class "form-control", name "Email", placeholder "Email", attribute "required" "", type' "text", onInput Email ]
                        []
                    , text ""
                    , input [ class "form-control", name "Password", placeholder "Password", attribute "required" "", type' "password", onInput Password ]
                        []
                    , button [ class "btn btn-lg btn-primary btn-block", name "Submit", type' "Submit", value "Login" ]
                        [ text "Login" ]
                    ]
                ]
            ]
        ]
