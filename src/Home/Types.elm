-- TODO: Report bug
-- module Home.Types exposing (..)


module Home.Types exposing (Model, Msg(..))

import Jwt exposing (JwtError)
import Mouse


type alias Model =
    { email : String
    , password : String
    , position : Mouse.Position
    }


type Msg
    = Email String
    | Password String
    | SendLogin
    | LoginFail JwtError
    | LoginSuccess String
    | MouseClickEvent Mouse.Position
