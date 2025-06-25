((comment) @injection.content
  (#set! injection.language "comment"))

((groovy_doc) @injection.content
  (#set! injection.language "comment"))

((code_language) @injection.content (#set! injection.language "sh"))
((code_language) @code_language (#match? @code_language "python") (code_content) @injection.content (#set! injection.language "python"))
((code_language) @code_language (#match? @code_language "bash") (code_content) @injection.content (#set! injection.language "bash"))
((code_language) @code_language (#match? @code_language "node") (code_content) @injection.content (#set! injection.language "javascript"))
((code_language)* @code_language (#any-eq? @code_language "//") (code_content) @injection.content (#set! injection.language "sh"))



