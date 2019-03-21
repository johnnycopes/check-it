module CheckIt exposing (main)

import Browser
import Html exposing (div, h1, text, input, button)
import Html.Attributes exposing (..)

main =
  Browser.sandbox { init = init, update = update, view = view }


-- MODEL

init =
  { tasks =
    [ 
      { name = "buy sweet potatoes"
      , completed = False }
      , { name = "walk the dog"
      , completed = False }
    ]
  }

-- UPDATE

update msg model =
  model


-- VIEW

view model =
  div [ class "app" ]
    [ h1 [ class "header" ] [ text "Check It!" ]
    , div [ class "list" ]
      [ div [ class "form" ]
      [ input 
        [ type_ "text"
        , class "form__input" 
        , placeholder "Any more tasks?" ] []
      , button 
      [ type_ "button", class "form__button" ] [ text "Add" ]
      ]
      , div [ class "tasks" ]
      (List.map viewTask init.tasks)
      ]
    ]

viewTask task =
  div [ class "task" ] [ text task.name ]