module Home.View exposing (view)

import Home.Types exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Home.Components exposing (loginForm)


view : Model -> Html Msg
view model =
    Html.div [] [ loginForm model ]
