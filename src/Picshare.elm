module Picshare exposing (main)

import Html exposing (..)
import Html.Attributes exposing (class, src)


initialModel : { url : String, caption : String }
initialModel =
    { url = "https://avatars.githubusercontent.com/u/36134103?v=4"
    , caption = "kazuhi-ra"
    }


viewDetailedPhoto : { url : String, caption : String } -> Html msg
viewDetailedPhoto model =
    div [ class "detailed-photo" ]
        [ img [ src model.url ] []
        , div [ class "photo-info" ]
            [ h2 [ class "caption" ] [ text model.caption ] ]
        ]


view : { url : String, caption : String } -> Html msg
view model =
    div []
        [ div [ class "header" ]
            [ h1 [] [ text "Picshare" ] ]
        , div [ class "content-flow" ]
            [ viewDetailedPhoto model ]
        ]


main =
    view initialModel
