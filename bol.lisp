;----------------------------------------------------------------------------------------------------------------

(load "~/Lisp/ltk/ltk.fasl")            ;cargo ltk desde la ruta donde lo guarde :)

(use-package :ltk)                        ;para usar los paquetes ltk


(with-ltk()                           
    (let* ((entrada (make-instance 'entry :width 20))        ;crea cuadro de entrada de ancho 20
           (etiqueta (make-instance 'label :text "Gol de Messi")) ;crea etiqueta
       (marco (make-instance 'frame))                  ;crea marco
       (boton (make-instance 'button :master marco :text "Aceptar"  ;crea boton dentro de marco
        :command (lambda() (do-msg "te amo Talia :-)")))))      ;al pulsar envia un mensaje


      (pack etiqueta)                     ;coloca la etiqueta dentro del form
      (pack entrada)                     ;coloca el cuadro de entrada
      (pack marco)                       ;coloca el marco
      (pack boton)                        ;coloca el boton
      (configure marco :borderwidth 3)                ;ajusta el ancho del borde del marco
      (configure marco :relief :raised)                ;ajusta el estilo del marco
        
      ))

;------------------------------------------------------------------------------------------------------------
