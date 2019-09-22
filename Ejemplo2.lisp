;;;----------------------------------------------------------------------------------------------------------------

(load "~/Lisp/ltk/ltk.fasl")           

(use-package :ltk)                       


(with-ltk()                           
    (let* ((entrada (make-instance 'entry :width 20))       
           (etiqueta (make-instance 'label :text "Gol de Messi"))
       (marco (make-instance 'frame))                 
       (boton (make-instance 'button :master marco :text "Aceptar"))) 
             

      (bind etiqueta "<Enter>" (lambda(x) (configure etiqueta :foreground "green")))   
      (bind etiqueta "<Leave>" (lambda(x) (configure etiqueta :foreground "red")))   
      (bind boton "<Button-1>" (lambda(x) (do-msg "te amo Maria")))              
      (bind etiqueta "<Double-Button-1>" (lambda(x) (do-msg "Doble click del ratón")))       
      (bind boton "<Button-3>" (lambda(x) (do-msg "Botón derecho del ratón")))   
      (bind boton "<Button-2>" (lambda(x) (do-msg "Botón central del ratón")))
      (bind entrada "<Key-a>" (lambda(x) (do-msg "Has presionado la tecla a")))            
      (bind entrada "<Key-t>" (lambda(x) (do-msg "Has presionado la tecla t"))) 
      (bind entrada "<Control-Key-t>" (lambda(x) (do-msg "Has presionado Ctrl + t")))
      (bind entrada "<Control-Alt-Key-m>" (lambda(x) (do-msg "Has presionado Ctrl + Alt + m")))
      (bind entrada "<Escape>" (lambda(x) (do-msg "Has presionado la tecla Escape")))

      (pack etiqueta)                       
      (pack entrada)                       
      (pack marco)                       
      (pack boton)                       
      (configure marco :borderwidth 3)               
      (configure marco :relief :raised)))           
  
;;;----------------------------------------------------------------------------------------------------------------
