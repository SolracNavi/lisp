

(defun hola-1() 
  (with-ltk() 
    (let ((b (make-instance 'button :master nil 
			    :text "Presioname" 
			    :command (lambda() (format t "Hola mundo!~&"))))) 
      (pack b))))

(defun hola-2()
  (with-ltk()
    (let* ((f (make-instance 'frame))
	   (b1 (make-instance 'button
			      :master f
			      :text "Botón 1"
			      :command (lambda() (format t "Botón1~&"))))
	   (b2 (make-instance 'button
			      :master f
			      :text "Botón 2"
			      :command (lambda() (format t "Botón2~&")))))
      (pack f)
      (pack b1 :side :left)
      (pack b2 :side :left)
      (configure f :borderwidth 3)
      (configure f :relief :raised)
      )))

(defun test()
  (with-ltk()
    (let* ((sc (make-instance 'scrolled-canvas))
	   (c (canvas sc))
	   (linea (create-line c 
			      (list 100 100 400 50 500 100 500 300 400 350 100 400 100 100)))
	   (poligono (create-polygon c (list 200 150 400 160 400 300 200 330)))
	   (texto (create-text c 260 250 "Esto es un texto"))
	   (texto2 (create-text c 200 270 "Aca va otro texto")))
      (pack sc :expand 1 :fill :both)
      (scrollregion c 0 0 800 800)
      (itemconfigure c poligono :fill "red")
      (itemconfigure c linea :width 5)
      (itemconfigure c linea :fill "blue")
      (itemconfigure c texto :fill "green")
      (itemconfigure c texto2 :fill "orange")
      )))

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
	     
(defun test-3()
  (with-ltk()
    (let*
	((cuadro (make-instance 'frame))
	 (verifica1 (make-instance 'check-button
				   :master cuadro
				   :text "ahi te ves     "))
	 (verifica2 (make-instance 'check-button
				   :master cuadro
				   :text "eso si que no"))
	 (verifica3 (make-instance 'check-button
				   :master cuadro
				   :text "prueba x      ")))
      (pack cuadro)
      (pack verifica1)
      (pack verifica2)
      (pack verifica3)
      (configure cuadro :borderwidth 3)
      (configure cuadro :relief :raised)
      (place cuadro 20 50)       
      )))

(defun test-4()
  (with-ltk()
    (let*
	((entrada1 (make-instance 'entry))
	 (etiqueta1 (make-instance 'label
				   :text "Apretá uno de los botones, ..."))
	 (boton1 (make-instance 'button
				:text "Aceptar"
				:command (lambda() (format t (text entrada1)))))
	 (boton2 (make-instance 'button
				:text "Cancelar"
				:command (lambda() (format t "esto es un mensaje")))))
      (pack entrada1)
      (pack boton1)
      (pack boton2)
      (pack etiqueta1)
      (place entrada1 20 20)
      (place boton1 50 50)
      (place boton2 136 50)
      (place etiqueta1 20 0)
      )))

(defun test-5() 
  (with-ltk()
    (let*
	((cuadro-con-etiqueta (make-instance 'labelframe
					     :text "veremos"))
	 (boton1 (make-instance 'button
				:master cuadro-con-etiqueta
				:text "Aceptar")))
				      
      (pack cuadro-con-etiqueta)
      (pack boton1)
      )))


(defun test-6()
  (with-ltk()
    (let*
	((texto1 (make-instance 'text)))

      (pack texto1)
      )))


