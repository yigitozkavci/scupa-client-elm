module View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Models exposing (Model)
import Home.View
import Messages exposing (Msg(..))
import Html.App
import Components


view : Model -> Html Msg
view model =
    div []
        [ Components.navbar
        , div [ class "content-wrapper" ]
            [ Html.App.map HomeMsg (Home.View.view model)
            ]
        ]
