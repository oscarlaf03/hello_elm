module Playground exposing (main)

import Html

escapeEarth : Float -> Float -> String
escapeEarth myVelocity mySpeed =
  if myVelocity > 11.186 then
    "Godsped"
  else if mySpeed == 7.67 then
    "Stay in orbit"
  else
    "Come back"

main : Html.Html msg
main =
  Html.text (escapeEarth 11.2 7.2)
