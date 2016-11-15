module View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Models exposing (Model)
import Home.View
import Messages exposing (Msg(..))
import Html.App
import Components
import Routing exposing (..)


routedPage : Model -> Html Msg
routedPage model =
    case model.route of
        HomeRoute ->
            Html.App.map HomeMsg (Home.View.view model)

        LoginRoute ->
            div [ class "wrapper" ] [ text "whoa!" ]

        NotFoundRoute ->
            div [] [ text "Not found!" ]


view : Model -> Html Msg
view model =
    div []
        [ Components.navbar
        , div [ class "content-wrapper" ]
            [ routedPage model
            ]
        ]
