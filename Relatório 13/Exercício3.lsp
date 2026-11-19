(defstruct garota-magica nome escuridao bruxas)

(defun escuridao-total (grupo)
  (if (null grupo)
      0
      (+ (garota-magica-escuridao (car grupo))
         (escuridao-total (cdr grupo)))))

(defun total-de-bruxas (grupo)
  (reduce #'+ (mapcar #'garota-magica-bruxas grupo)))

(defun purifica (g quantidade)
  (let* ((atual (garota-magica-escuridao g))
         (nova-escuridao (if (>= quantidade atual) 0 (- atual quantidade))))
    (make-garota-magica :nome (garota-magica-nome g)
                        :escuridao nova-escuridao
                        :bruxas (garota-magica-bruxas g))))

(defun main ()
  (let* ((homura (make-garota-magica :nome "Homura" :escuridao 65 :bruxas 12))
         (mami (make-garota-magica :nome "Mami" :escuridao 30 :bruxas 8))
         (kyoko (make-garota-magica :nome "Kyoko" :escuridao 50 :bruxas 10))
         (grupo (list homura mami kyoko)))
    
    (format t "Escuridao total do grupo: ~a~%" (escuridao-total grupo))
    (format t "Total de bruxas derrotadas: ~a~%" (total-de-bruxas grupo))
    
    (let* ((madoka (make-garota-magica :nome "Madoka" :escuridao 5 :bruxas 1))
           (novo-grupo (cons madoka grupo)))
      (format t "~%Escuridao grupo antigo: ~a~%" (escuridao-total grupo))
      (format t "Escuridao grupo novo: ~a~%" (escuridao-total novo-grupo)))
    
    (let ((homura-limpa (purifica homura 40)))
      (format t "~%Escuridao Homura original: ~a~%" (garota-magica-escuridao homura))
      (format t "Escuridao Homura purificada: ~a~%" (garota-magica-escuridao homura-limpa)))))

(main)
