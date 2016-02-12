import Html exposing (div, button, text)
import Html.Events exposing (onClick)
import StartApp.Simple as StartApp


main =
  StartApp.start { model = model, view = view, update = update }

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
  , currentPlanet : Planet
  }

model = 0


view address model =
  div []
    [ button [ onClick address Decrement ] [ text "-" ]
    , div [] [ text (toString model) ]
    , button [ onClick address Increment ] [ text "+" ]
    ]


type Action = Increment | Decrement


update action model =
  case action of
    Increment -> model + 1
    Decrement -> model - 1
