main = putStrLn myhtml

myhtml :: String
myhtml = makeHtml "My page title" "My page content"

el :: String -> String -> String
el tag content =
  "<" <> tag <> ">" <> content <> "</" <> tag <> ">"

html_ :: String -> String
html_ = el "html"

body_ :: String -> String
body_ = el "body"

head_ :: String -> String
head_ content = "<head>" <> content <> "</head>"

title_ :: String -> String
title_ content = "<title>" <> content <> "</title>"

makeHtml :: String -> String -> String
makeHtml t b =
    html_ 
        (head_ (title_ t) <> body_ b)

