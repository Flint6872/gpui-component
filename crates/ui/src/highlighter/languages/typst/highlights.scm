; --- Identifiers & Calls ---
(ident) @variable
(call item: (ident) @function)
(call item: (field field: (ident) @function.method))

; --- Parameters and Fields ---
; This handles the 'page' and 'width' in #set page(width: ...)
(tagged field: (ident) @variable.parameter)
(field field: (ident) @variable.member)

; --- Keywords ---
["let" "set" "show" "import" "include" "as" "context"] @keyword.control
["if" "else" "for" "while" "in" "return" "break" "continue"] @keyword.control

; --- Operators & Punctuation ---
"#" @punctuation.special
"$" @punctuation.special
["(" ")" "{" "}" "[" "]"] @punctuation.bracket
["," ";" ".." ":" "sep"] @punctuation.delimiter
["+" "-" "*" "/" "==" "!=" "<" ">" "<=" ">=" "=" "=>"] @operator

; --- Literals ---
(number) @constant.numeric
(string) @string
(bool) @constant.builtin.boolean
(none) @constant.builtin
(auto) @constant.builtin
(comment) @comment

; --- Markup ---
(heading) @markup.heading
(item) @markup.list
(term) @markup.list
(emph) @markup.italic
(strong) @markup.bold
(raw_blck) @markup.raw
(raw_span) @markup.raw
(url) @markup.link
(label) @variable.other.member
(ref) @variable.other.member

; --- Math ---
(letter) @variable
(symbol) @constant.character
(shorthand) @constant.character
