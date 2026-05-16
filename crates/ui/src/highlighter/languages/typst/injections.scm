; Handle Math Mode ($ ... $)
; We inject 'typst' into itself so that symbols like 'pi' and 'sum' get highlighted
((math) @injection.content
 (#set! injection.language "typst"))

; Handle Code Blocks (``` ... ```)
(raw_blck
  (blob) @injection.shebang @injection.content)

(raw_blck
  lang: (ident) @_lang
  (blob) @injection.content
  (#set! injection.language @_lang))
