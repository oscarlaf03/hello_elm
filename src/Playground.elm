module Playground exposing (main)

import Html

escapeEarth : Float -> Float -> String
escapeEarth myVelocity mySpeed =
  let
    escapeVelocityInKmPerSecond =
      11.186
    orbitalSpeedInKmPerSecond =
      7.67
  in

  if myVelocity > escapeVelocityInKmPerSecond then
    "Godsped"
  else if mySpeed == orbitalSpeedInKmPerSecond then
    "Stay in orbit"
  else
    "Come back"

computedSpeed : Float -> Float -> Float
computedSpeed distance time =
  distance / time

computedTime : number -> number -> number
computedTime startTime endTime =
  endTime - startTime




main : Html.Html msg
main =
  -- Html.text (escapeEarth 11 (computedSpeed 7.67 (computedTime 2 3)))
-- TODO  Difference between "|>" operatro and ">>" operator :  https://www.reddit.com/r/elm/comments/67izmq/when_to_use_vs/
  computedTime 2 3
    |> computedSpeed 7.67
    |> escapeEarth 11
    |> Html.text

  

