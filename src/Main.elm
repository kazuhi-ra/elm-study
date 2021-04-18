module Main exposing (main)

import Html exposing (text)


main =
    text (bottlesOf "juice" 99)


greeting : String
greeting =
    "Hello, Static Elm!"


bottlesOf : String -> Int -> String
bottlesOf contents amount =
    Debug.toString amount ++ " bottles of " ++ contents ++ " on the wall"


sayHello : String -> String
sayHello name =
    "Hello, " ++ name ++ "."


meaningOfLife : Int
meaningOfLife =
    42


pi : Float
pi =
    3.14


canChuck : Bool
canChuck =
    True
