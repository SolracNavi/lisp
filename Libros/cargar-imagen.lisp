


(use-package :ltk)



(with-ltk() ; Ventana principal ---------------------------------
  (let* 
      ((canvas (make-instance 'canvas))
       (boton (make-instance 'button :text "Cargar Imagen")))
	   


    ; Eventos ---------------------------------------------------
    (bind boton "<Button-1>" (lambda (evento) ;carga una imagen en el canvas al presionar el boton
			           (setf imagen (make-image)) ;crear imagen...
				   (image-load imagen "~/Descargas/test.gif")
				   (create-image canvas 0 0 :image imagen)))


    ; Configuraciones de widgets --------------------------------
   
    (configure canvas :width 100) ;tamaño del canvas
    (configure canvas :height 100)
    
    (minsize *tk* 280 280) ;detalles de la ventana
    (maxsize *tk* 280 280)
    (wm-title *tk* "Cargar imagen")

    (place canvas 50 50) ;ubicaciones de los widgets
    (place boton 100 200)))

