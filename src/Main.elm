module Main exposing (Msg(..), main, update, view)

import Browser
import Element exposing (..)
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)
import Widget
import Widget.Customize as Customize
import Widget.Icon exposing (Icon)
import Widget.Material as Material


main =
    Browser.sandbox { init = 0, update = update, view = view }


type Msg
    = Noop


update msg model =
    case msg of
        Noop ->
            model


button =
    Widget.textButton
        (Material.containedButton
            |> Customize.element [ Element.width Element.fill ]
        )
        { onPress = Nothing
        , text = "Press Button"
        }


view model =
    Element.layout []
        (Element.column [] [ button ])
