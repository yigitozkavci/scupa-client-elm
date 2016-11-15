module Update exposing (..)

import Types exposing (Model, Msg(..))
import Home.State


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        HomeEvent homeMsg ->
            let
                ( home, cmd ) =
                    Home.State.update homeMsg model.home
            in
                ( { model | home = home }, Cmd.map HomeEvent cmd )

        NoMsg ->
            ( model, Cmd.none )
