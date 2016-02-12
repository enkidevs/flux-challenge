module Fetch (lookupDarkJedi) where

import Main
import Http
import Json.Decode as Json exposing ((:=))
import Task exposing (..)

import Types exposing (Jedi, JediResource)

lookupDarkJedi : String -> Task Http.Error (Jedi)
lookupDarkJedi query =
    Http.get parseJedi ("http://localhost:3000/dark-jedis/" ++ query)

parseJedi : Json.Decoder (Jedi)
parseJedi =
  Json.object4 (\id name master apprentice ->
      { id = id
      , name = name
      , master = master
      , apprentice = apprentice
      }
    )
    ("id" := Json.string)
    ("name" := Json.string)
    ("master" := parseResource)
    ("apprentice" := parseResource)

parseResource : Json.Decoder (JediResource)
parseResource =
  Json.object2 (\id url ->
      { id = id
      , url = url
      }
    )
    ("id" := Json.string)
    ("url" := Json.string)
