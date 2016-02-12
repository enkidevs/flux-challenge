module Types (Planet, JediResource, Jedi, Model) where

type alias Planet =
  { id : String
  , name : String
  }
type alias JediResource =
  { id: String
  , url : String
  }
type alias Jedi =
  { id: String
  , name : String
  , master : JediResource
  , apprentice : JediResource
  }

type alias Model =
  { darkJedis : List Jedi
  , currentPlanet : Maybe Planet
  }
