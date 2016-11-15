module Update exposing (..)

import Types exposing (Model, Msg(..))
import Home.State


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        HomeEvent homeMsg ->
            ( { model | home = Home.State.update homeMsg model.home }, Cmd.none )

        NoMsg ->
            ( model, Cmd.none )
