module Playground exposing (main)

import Html

escapeEarth : Float -> Float -> String -> String
escapeEarth myVelocity mySpeed fuelStatus =
  let
    escapeVelocityInKmPerSecond =
      11.186
    orbitalSpeedInKmPerSecond =
      7.67
    whereToLand fuel =
      if fuel == "low" then
        "Land on the droenship"
      else
        "Land on the launchpad"
  in

  if myVelocity > escapeVelocityInKmPerSecond then
    "Godsped"
  else if mySpeed == orbitalSpeedInKmPerSecond then
    "Stay in orbit"
  else
    whereToLand fuelStatus

computedSpeed : Float -> Float -> Float
computedSpeed distance time =
  distance / time

computedTime : number -> number -> number
computedTime startTime endTime =
  endTime - startTime




main : Html.Html msg
main =
--   -- Html.text (escapeEarth 11 (computedSpeed 7.67 (computedTime 2 3)))
-- -- TODO  Difference between "|>" operatro and ">>" operator :  https://www.reddit.com/r/elm/comments/67izmq/when_to_use_vs/
--   computedTime 2 3
--     |> computedSpeed 7.67
--     |> escapeEarth 11 
--     |> "low"
--     |> Html.text
      escapeEarth 10 6.7 "low"
        |> Html.text

  

