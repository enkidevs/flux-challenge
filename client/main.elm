import Html exposing (div, text, h1, h3, h6, section, ul, li, button)
import Html.Attributes exposing (class)
import String
import ExternalCSS exposing (stylesheet)
import Components.PlanetMonitor exposing (planetMonitor)
import Components.ScrollableList exposing (scrollableList)

main =
  div [ class "app-container" ]
    [ stylesheet "/styles.css"
    , div [ class "css-root" ]
      [ planetMonitor
      , scrollableList
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
