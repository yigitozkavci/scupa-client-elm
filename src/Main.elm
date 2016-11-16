module Main exposing (..)

import Html.App
import Types exposing (Model, Msg(..))
import State exposing (initialModel, update)
import Home.State
import View exposing (view)
import Routing exposing (Route)
import Navigation
import Mouse
import Home.Types


init : Result String Route -> ( Model, Cmd Msg )
init result =
    let
        currentRoute =
            Routing.routeFromResult result
    in
        ( initialModel currentRoute, Cmd.none )


convertMsg : Home.Types.Msg -> Msg
convertMsg homeMsg =
    HomeEvent homeMsg


mapSubs : List (Sub Home.Types.Msg) -> List (Sub Msg)
mapSubs subs =
    List.map (\sub -> (Sub.map convertMsg sub)) subs


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.batch
        (mapSubs
            (Home.State.subscriptions model.home)
        )


urlUpdate : Result String Route -> Model -> ( Model, Cmd Msg )
urlUpdate result model =
    let
        currentRoute =
            Routing.routeFromResult result
    in
        ( { model | route = currentRoute }, Cmd.none )



-- MAIN


main : Program Never
main =
    Navigation.program Routing.parser
        { init = init
        , view = view
        , update = update
        , urlUpdate = urlUpdate
        , subscriptions = subscriptions
        }
