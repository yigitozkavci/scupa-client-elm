-- TODO: Report bug
-- module Home.Types exposing (..)


module Home.Types exposing (Model, Msg(..))


type alias Model =
    { email : String
    , password : String
    }


type Msg
    = Email String
    | Password String
    | SendLogin
