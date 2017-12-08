module Bob exposing (..)
import Char exposing (isDigit)
import String exposing (..)



hey question = 
    let 
        isEmptyQuestion : String -> Bool
        isEmptyQuestion question = 
            isEmpty (trim question)

        isNumericQuestion : String -> Bool
        isNumericQuestion question = 
            all isDigit question
        
        isShouting : String -> Bool
        isShouting question =
            (toUpper question == question) && (isNumericQuestion (dropRight 1 question) == False)

        isQuestion : String -> Bool
        isQuestion question =
            endsWith "?" question

    in
        if isEmptyQuestion question then
            "Fine. Be that way!"

        else if isNumericQuestion (join "" (split ", " question)) then
            "Whatever."

        else if (isQuestion question) && not (isShouting question) then
            "Sure."

        else if isShouting question then
            "Whoa, chill out!"

        else 
            "Whatever."