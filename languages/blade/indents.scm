(element (start_tag) @indent)
(element (end_tag) @outdent)

(loop (directive_start) @indent)
(loop (directive_end) @outdent)

(conditional (directive_start) @indent)
(conditional (directive_end) @outdent)

(switch (directive_start) @indent)
(switch (directive_end) @outdent)

(section (directive_start) @indent)
(section (directive_end) @outdent)

(once (directive_start) @indent)
(once (directive_end) @outdent)

(verbatim (directive_start) @indent)
(verbatim (directive_end) @outdent)

(stack (directive_start) @indent)
(stack (directive_end) @outdent)
