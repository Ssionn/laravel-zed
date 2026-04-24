(element
  (start_tag) @start
  (end_tag) @end) @around

(loop
  (directive_start) @start
  (directive_end) @end) @around

(conditional
  (directive_start) @start
  (directive_end) @end) @around

(switch
  (directive_start) @start
  (directive_end) @end) @around

(section
  (directive_start) @start
  (directive_end) @end) @around

(once
  (directive_start) @start
  (directive_end) @end) @around

(verbatim
  (directive_start) @start
  (directive_end) @end) @around

(stack
  (directive_start) @start
  (directive_end) @end) @around

(comment) @comment.around
