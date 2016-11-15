module View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Home.View
import Types exposing (Model, Msg(..))
import Html.App
import Components
import Routing exposing (..)
import Home.State
import Home.Types


routedPage : Model -> Html Msg
routedPage model =
    case model.route of
        HomeRoute ->
            Html.App.map (\action -> HomeEvent action) (Home.View.view Home.State.initialModel)

        AppRoute ->
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
