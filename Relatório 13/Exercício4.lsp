(defstruct dominio nome elemento dificuldade mora)

(defun bonus-elemental (elemento)
  (case elemento
    (:electro 1.5)
    (:hydro 1.2)
    (otherwise 1.0)))

(defun recompensa-final (d)
  (* (dominio-mora d) (bonus-elemental (dominio-elemento d))))

(defun rota (lista dificuldade-maxima)
  (let* ((possiveis (remove-if-not (lambda (d) (<= (dominio-dificuldade d) dificuldade-maxima))
                                   lista))
         (textos (mapcar (lambda (d)
                           (format nil "~a - Recompensa: ~,1f mora"
                                   (dominio-nome d)
                                   (recompensa-final d)))
                         possiveis)))
    textos))

(defun main ()
  (let* ((d1 (make-dominio :nome "Jardim de Cecilia" :elemento :hydro :dificuldade 2 :mora 1000))
         (d2 (make-dominio :nome "Palacio Oculto" :elemento :pyro :dificuldade 4 :mora 2500))
         (d3 (make-dominio :nome "Corte de Flowing Sand" :elemento :electro :dificuldade 3 :mora 2000))
         (d4 (make-dominio :nome "Pico de Vindagnyr" :elemento :cryo :dificuldade 5 :mora 3000))
         (d5 (make-dominio :nome "Vale das Lembrancas" :elemento :anemo :dificuldade 1 :mora 800))
         (dominios (list d1 d2 d3 d4 d5)))
    
    (format t "--- Rota (Dificuldade ate 3) ---~%")
    (dolist (item (rota dominios 3))
      (format t "~a~%" item))
    
    (format t "~%Mora total de todos os dominios: ~,1f~%"
            (reduce #'+ (mapcar #'recompensa-final dominios)))
    
    (let ((copia (copy-dominio d1)))
      (setf (dominio-mora copia) 9999)
      (format t "~%Mora da copia alterada: ~a~%" (dominio-mora copia))
      (format t "Mora do original (intacto): ~a~%" (dominio-mora d1)))))

(main)
