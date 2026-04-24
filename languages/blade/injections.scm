(php_only) @content
  (#set! "language" "php")

(php_statement) @content
  (#set! "language" "php")

(parameter) @content
  (#set! "language" "php")

(script_element (raw_text) @content
  (#set! "language" "javascript"))

(style_element (raw_text) @content
  (#set! "language" "css"))
