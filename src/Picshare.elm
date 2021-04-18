module Picshare exposing (main)

import Html exposing (..)
import Html.Attributes exposing (class, src)


main : Html msg
main =
    div []
        [ div [ class "header" ]
            [ h1 [] [ text "Picshare" ] ]
        , div [ class "content-flow" ]
            [ img [ src "https://avatars.githubusercontent.com/u/36134103?v=4" ] []
            , div [ class "photo-info" ]
                [ h2 [ class "caption" ] [ text "kazuhi-ra" ] ]
            ]
        ]
