module Models exposing (..)

import Routing
import Types exposing (Model)
import Home.State


initialModel : Routing.Route -> Model
initialModel route =
    { route = route
    , home = Home.State.initialModel
    }
