import Html exposing (div, text, h1, h3, h6, section, ul, li, button)
import Html.Attributes exposing (class)
import String
import ExternalCSS exposing (stylesheet)

main =
  div [ class "app-container" ]
    [ stylesheet "/styles.css"
    , div [ class "css-root" ]
      [ h1 [ class "css-planet-monitor" ] [ text "Obi-Wan currently on Tatooine" ]
      , section [ class "css-scrollable-list" ]
        [ ul [ class "css-slots" ]
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
        , div [ class "css-scroll-buttons" ]
          [ button [ class "css-button-up" ] []
          , button [ class "css-button-down" ] []
          ]
        ]
      ]
    ]

type alias Planet =
  { id : String
  , name : String
  }
type alias JediRessource =
  { id: String
  , url : String
  }
type alias Jedi =
  { id: String
  , name : String
  , master : JediRessource
  , apprentice : JediRessource
  }

-- The full application state of our app.
type alias Model =
  { darkJedis : List Jedi
  , currentPlanet : Maybe Planet
  }

model : Model
model =
    { darkJedis = []
    , currentPlanet = Nothing
    }


view address model =
  div []
    [ button [ onClick address Decrement ] [ text "-" ]
    , div [] [ text (toString model) ]
    , button [ onClick address Increment ] [ text "+" ]
    ]


type Action = Increment | Decrement


update action model =
  case action of
    Increment -> model
    Decrement -> model
