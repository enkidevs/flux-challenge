import Html exposing (div, text, h1, h3, h6, section, ul, li, button)
import Html.Attributes exposing (class)
import String
import ExternalCSS exposing (stylesheet)
import Components.PlanetMonitor exposing (planetMonitor)
import Components.ScrollableList exposing (scrollableList)
import Types exposing (Model)
main =
  div [ class "app-container" ]
    [ stylesheet "/styles.css"
    , div [ class "css-root" ]
      [ planetMonitor
      , scrollableList
      ]
    ]

model : Model
model =
    { darkJedis = []
    , currentPlanet = Nothing
    }
