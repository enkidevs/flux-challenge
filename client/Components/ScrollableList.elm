module Components.ScrollableList (scrollableList) where
import Html exposing (div, text, h1, h3, h6, section, ul, li, button)
import Html.Attributes exposing (class)

slots =
  ul [ class "css-slots" ]
    [ li [ class "css-slot" ]
      [ h3 [] [ text "Jorak Uln" ]
      , h6 [] [ text "Homeworld: Korriban" ]
      ]
    , li [ class "css-slot" ]
      [ h3 [] [ text "Skere Kaan" ]
      , h6 [] [ text "Homeworld: Coruscant" ]
      ]
    , li [ class "css-slot" ]
      [ h3 [] [ text "Skere Kaan" ]
      , h6 [] [ text "Homeworld: Coruscant" ]
      ]
    , li [ class "css-slot" ]
      [ h3 [] [ text "Skere Kaan" ]
      , h6 [] [ text "Homeworld: Coruscant" ]
      ]
    , li [ class "css-slot" ]
      [ h3 [] [ text "Jorak Uln" ]
      , h6 [] [ text "Homeworld: Coruscant" ]
      ]
    ]

scrollButtons =
  div [ class "css-scroll-buttons" ]
    [ button [ class "css-button-up" ] []
    , button [ class "css-button-down" ] []
    ]

scrollableList =
  section [ class "css-scrollable-list" ]
    [ slots
    , scrollButtons
    ]
