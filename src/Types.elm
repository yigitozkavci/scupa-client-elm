module Types exposing (..)

import Home.Types
import Routing
import Mouse


type Msg
    = NoMsg
    | HomeEvent Home.Types.Msg
    | MouseEvent Mouse.Position



-- = HomeMsg Home.Types.Msg


type alias Model =
    { route : Routing.Route
    , home : Home.Types.Model
    , position : Mouse.Position
    }
