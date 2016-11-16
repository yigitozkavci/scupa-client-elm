module Home.State exposing (..)

import Home.Types exposing (..)
import Jwt
import Json.Encode as E
import Json.Decode
import Task


initialModel : Model
initialModel =
    { email = "base"
    , password = ""
    }


tokenStringDecoder : Json.Decode.Decoder String
tokenStringDecoder =
    Json.Decode.string


baseUrl : String
baseUrl =
    "http://localhost:3000"


loginUrl : String
loginUrl =
    baseUrl ++ "/auth_user"


auth : Model -> Cmd Msg
auth model =
    let
        credentials =
            E.object
                [ ( "email", E.string model.email )
                , ( "password", E.string model.password )
                ]
                |> E.encode 0
    in
        Task.perform
            LoginFail
            LoginSuccess
            (Jwt.authenticate tokenStringDecoder loginUrl credentials)


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Email email ->
            ( { model | email = (Debug.log "Email" email) }, Cmd.none )

        Password password ->
            ( { model | password = password }, Cmd.none )

        SendLogin ->
            ( model, auth model )

        LoginFail _ ->
            ( model, Cmd.none )

        LoginSuccess _ ->
            ( model, Cmd.none )
