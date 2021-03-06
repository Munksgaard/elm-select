module Select.Select exposing (view)

import Html exposing (..)
import Html.Attributes exposing (class, id, style)
import Select.Config exposing (Config)
import Select.Messages exposing (..)
import Select.Models exposing (State)
import Select.Select.Input
import Select.Select.Menu


view : Config msg item -> State -> List item -> List item -> Html (Msg item)
view config model availableItems selectedItems =
    let
        classes =
            "elm-select"
    in
    div [ id model.id, class classes, style "position" "relative" ]
        [ Select.Select.Input.view config model availableItems selectedItems
        , Select.Select.Menu.view config model availableItems selectedItems
        ]
