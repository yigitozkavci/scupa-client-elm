module State exposing (..)

import Routing
import Home.State
import Types exposing (Model, Msg(..))
import Mouse


initialModel : Routing.Route -> Model
initialModel route =
    { route = route
    , home = Home.State.initialModel
    , position = { x = 0, y = 0 }
    }


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

        MouseEvent mousePosition ->
            ( { model | position = Debug.log "position" mousePosition }, Cmd.none )
