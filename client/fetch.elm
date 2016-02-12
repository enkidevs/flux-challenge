module Fetch (lookupDarkJedis) where

import Http
import Json.Decode as Json exposing ((:=))
import Task exposing (..)

lookupDarkJedis : String -> Task Http.Error (List String)
lookupDarkJedis query =
    Http.get parseJedi ("http://localhost:3000/dark-jedis/" ++ query)

parseJedi : Json.Decoder (List String)
parseJedi =
 let jedi =
        Json.object2 (\city state -> city ++ ", " ++ state)
          ("place name" := Json.string)
          ("state" := Json.string)
  in
      "places" := Json.list jedi
