module Leap exposing (..)

isLeapYear year =
    let
        isDivBy4 : Int -> Bool
        isDivBy4 year =
            (rem year 4 == 0)

        isDivBy100 : Int -> Bool
        isDivBy100 year =
            (rem year 100 == 0)

        isDivBy400 : Int -> Bool
        isDivBy400 year =
            (rem year 400 == 0)
     in
        if not (isDivBy4 year) then
            False
        else if isDivBy4 year && isDivBy100 year && not (isDivBy400 year) then
            False
        else
            True