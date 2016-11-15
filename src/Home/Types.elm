-- TODO: Report bug
-- module Home.Types exposing (..)


module Home.Types exposing (Model, Msg(..))

import Jwt exposing (JwtError)


type alias Model =
    { email : String
    , password : String
    }


type Msg
    = Email String
    | Password String
    | SendLogin
    | LoginFail JwtError
    | LoginSuccess String
