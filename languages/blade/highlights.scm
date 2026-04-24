(directive) @keyword
(directive_start) @keyword
(directive_end) @keyword
(conditional_keyword) @keyword

(comment) @comment

(attribute_name) @attribute
(attribute_value) @string
(quoted_attribute_value) @string

(entity) @constant

(php_tag) @keyword
(php_end_tag) @keyword
(php_only) @embedded

"{{" @punctuation.special
"}}" @punctuation.special
"{!!" @punctuation.special
"!!}" @punctuation.special
"<" @punctuation.bracket
">" @punctuation.bracket
"</" @punctuation.bracket
"/>" @punctuation.bracket
"=" @operator
"(" @punctuation.bracket
")" @punctuation.bracket

(start_tag
  (tag_name) @function
  (#match? @function "^x-"))

(end_tag
  (tag_name) @function
  (#match? @function "^x-"))

(self_closing_tag
  (tag_name) @function
  (#match? @function "^x-"))

(tag_name) @tag
