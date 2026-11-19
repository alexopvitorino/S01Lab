(defstruct erva nome preco-por-grama toxicidade)

(defun classifica-erva (e)
  (let ((tox (erva-toxicidade e)))
    (cond ((>= tox 7) "veneno")
          ((>= tox 4) "use com cuidado")
          (t "segura"))))


(defun preco-da-dose (e gramas)
  (* (erva-preco-por-grama e) gramas))

(defun descreve-erva (e)
  (format nil "~a | Preco/g: ~,2f | Classificacao: ~a"
          (erva-nome e)
          (erva-preco-por-grama e)
          (classifica-erva e)))

(defun aviso (e)
  (if (>= (erva-toxicidade e) 7)
      "Aviso: Maomao vai testar a erva em si mesma antes!"
      "Liberada para o paciente."))

(defun main ()
  (let ((estoque (list (make-erva :nome "Camomila" :preco-por-grama 2.50 :toxicidade 1)
                       (make-erva :nome "Raiz de Mandragora" :preco-por-grama 15.00 :toxicidade 5)
                       (make-erva :nome "Belladona" :preco-por-grama 45.75 :toxicidade 9))))
    
    (format t "--- Estoque da Maomao ---~%")
    (dolist (e estoque)
      (format t "~a -> ~a~%" (descreve-erva e) (aviso e)))
    
    (let ((primeira (first estoque)))
      (format t "~%Preco de 5g de ~a: ~,2f~%"
              (erva-nome primeira)
              (preco-da-dose primeira 5)))))

(main)
