module Picshare exposing (main)

import Browser
import Html exposing (..)
import Html.Attributes exposing (class, src)
import Html.Events exposing (onClick)


type alias Model =
    { url : String, caption : String, liked : Bool }


initialModel : Model
initialModel =
    Model "https://avatars.githubusercontent.com/u/36134103?v=4" "kazuhi-ra" False


viewLobeButton : Model -> Html Msg
viewLobeButton model =
    let
        heartText =
            if model.liked then
                "❤️"

            else
                "♡"
    in
    div [ class "like-button" ]
        [ i [ onClick ToggleLike ] [ text heartText ] ]


viewDetailedPhoto : Model -> Html Msg
viewDetailedPhoto model =
    div [ class "detailed-photo" ]
        [ img [ src model.url ] []
        , div [ class "photo-info" ]
            [ viewLobeButton model ]
        ]


view : Model -> Html Msg
view model =
    div []
        [ div [ class "header" ]
            [ h1 [] [ text "Picshare" ] ]
        , div [ class "content-flow" ]
            [ viewDetailedPhoto model
            , h2 [ class "caption" ] [ text model.caption ]
            ]
        ]


type Msg
    = ToggleLike


update : Msg -> Model -> Model
update msg model =
    case msg of
        ToggleLike ->
            { model | liked = not model.liked }


main : Program () Model Msg
main =
    Browser.sandbox
        { init = initialModel
        , view = view
        , update = update
        }
