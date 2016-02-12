module Components.PlanetMonitor (planetMonitor) where
import Html exposing (div, text, h1, h3, h6, section, ul, li, button)
import Html.Attributes exposing (class)

planetMonitor =
  h1 [ class "css-planet-monitor" ] [ text "Obi-Wan currently on Tatooine" ]
