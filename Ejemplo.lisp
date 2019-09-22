(load "~/Lisp/ltk/ltk.fasl")
(use-package :ltk)

(with-ltk()
  (let* ((entrada (make-instance 'entry :width 20))
	 (etiqueta (make-instance 'label :text "Ley de Evo"))
	 (marco (make-instance 'frame))
	 (boton (make-instance 'button
			       :master marco
			       :text "Aceptar"
			       :command (lambda()(do-msg "Aprendan ambiciosos")))))
	 (pack etiqueta)
	 (pack entrada)
	 (pack marco)
	 (pack boton)
	 (configure marco :borderwidth 3)
	 (configure marco :relief :raised)

	 ))
			       
