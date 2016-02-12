{--
    You *can* load an external CSS file in Elm, but currently,
    in Pure Elm that means adding a style element to the body instead of the head.

    It does cause a flash of unstyled content, so I think it's only useful
    for testing in Reactor.
--}

module ExternalCSS (stylesheet) where

import Html exposing (..)
import Html.Attributes exposing (..)

stylesheet href =
    let
        tag = "link"
        attrs =
            [ attribute "rel"       "stylesheet"
            , attribute "property"  "stylesheet"
            , attribute "href"      href
            ]
        children = []
    in
        node tag attrs children
