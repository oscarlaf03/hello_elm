module PipeOperatorExample exposing (main)

import Html

add : number -> number -> number
add a b =
    a + b

multiply : number -> number -> number
multiply c d =
    c * d


divide : Float -> Float -> Float
divide e f =
    e / f

main : Html.Html msg
main =

-- Html.text(String.fromFloat (add (5 (multiply (10 (divide 30 10))))))
  -- Html.text (String.fromFloat (add 5 (multiply 10 (divide 30 10))))

  -- TODO read about oprators: https://package.elm-lang.org/packages/elm/core/latest/Basics#identity
  Html.text <| String.fromFloat <|  add 5 <| multiply 10 <| divide 30 10

