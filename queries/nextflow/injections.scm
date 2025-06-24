((comment) @injection.content
  (#set! injection.language "comment"))

((groovy_doc) @injection.content
  (#set! injection.language "comment"))

((code_content) @injection.content (#set! injection.language "python") (#set! injection.combined true))
