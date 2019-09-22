					; slime
(use-package :ltk)
(with-ltk ()
  (let
      (
       (etiqueta (make-instance 'label :master nil :text "Hola mundo"))
       )
    (pack etiqueta)
    )
  )
