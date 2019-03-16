module CheckIt exposing (main)

import Html exposing (div, h1, text, button)
import Html.Attributes exposing (..)

main =
  view "no model yet"


-- MODEL


-- UPDATE


-- VIEW

view model =
  div [ class "app" ]
    [ h1 [ class "header" ] [ text "Check It" ]
    , div [ class "list" ]
      [ div [ class "list__item" ] [ text "buy sweet potatoes" ]
      , div [ class "list__item" ] [ text "walk the dog" ]
      ]
    ]