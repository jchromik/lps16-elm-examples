import Char exposing (isDigit)
import String exposing (filter)
import Html exposing (Html, input, div, text)
import Html.Attributes exposing (placeholder)
import Html.Events exposing (onInput)

main =
  Html.beginnerProgram { model = model, view = view, update = update }

-- MODEL --

type alias Model = String

model : Model
model =
  ""

-- UPDATE --

type Msg =
  Change String

update : Msg -> Model -> Model
update msg model =
  case msg of
    Change content ->
      content

-- VIEW --

view : Model -> Html Msg
view model =
  div []
    [ input [ placeholder "Feed me Numbers!", onInput Change ] []
    , div [] [ text (filter isDigit model) ]
    ]
