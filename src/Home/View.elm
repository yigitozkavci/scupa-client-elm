module Home.View exposing (view)

import Home.Messages exposing (..)
import Models exposing (Model)
import Html exposing (Html)


view : Model -> Html Msg
view model =
    Html.div [] [ Html.text "Home!" ]
