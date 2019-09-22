					; lisp

(defun test-2()
  (with-ltk()
    (let* ((fr (make-instance 'frame))
	   (boton1 (make-instance 'button
	     :master fr
	     :text "Aceptar"
	     :command (lambda() (format t "Este es el boton 1~&"))))
	   (boton2 (make-instance 'button
	     :master fr
	     :text "Cancelar"
	     :command (lambda() (format t "Aca va todo lo que sea de BOTON 2...!!!~&"))))
	   (sc (make-instance 'scrolled-canvas))
	   (c (canvas sc))
	   (rectangulo (create-rectangle c 100 100 200 150))
	   (arco (create-arc c 200 200 260 260 :start 0 :extent 110 :style "chord"))
	   (elipse (create-oval c 2 2 50 125))
	   (texto3 (create-text c 200 10 "Probando ltk")))
    (pack fr)
    (pack boton1 :side :left)
    (pack boton2 :side :left)
    (pack sc)
    (configure fr :borderwidth 3)
    (configure fr :relief :raised)
    (itemconfigure c rectangulo :fill "blue")
    (itemconfigure c arco :fill "red")
    (itemconfigure c elipse :fill "yellow")
    (itemconfigure c texto3 :font "Ubuntu")
    (itemconfigure c texto3 :fill "blue")
    )))
