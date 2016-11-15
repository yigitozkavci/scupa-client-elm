module Home.State exposing (..)

import Home.Types exposing (..)


initialModel : Model
initialModel =
    { email = "base"
    , password = ""
    }


auth : Model -> Model
auth model =
    Debug.log "Model" model


update : Msg -> Model -> Model
update msg model =
    case msg of
        Email email ->
            { model | email = email }

        Password password ->
            { model | password = password }

        SendLogin ->
            auth model
