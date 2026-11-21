(defstruct erva
    nome
    preco-por-grama
    toxicidade)

(defun classifica-erva (erva)
  (let ((tox (erva-toxicidade erva)))
    (cond
      ((>= tox 7) "veneno")
      ((and (>= tox 4) (<= tox 6)) "use com cuidado")
      (t "segura"))))

(defun preco-erva (erva gramas)
    (* (erva-preco-por-grama erva) gramas))

(defun descreve-erva (erva)
    (format nil "Nome da Erva: ~a :: Preco/g: ~,2f :: Toxicidade: ~a"
        (erva-nome erva)
        (erva-preco-por-grama erva)
        (classifica-erva erva)))

(defun aviso(erva)
    (if (>= (erva-toxicidade erva) 7)
    "Maomao vai testar em si mesma antes"
    "Erva liberada para o paciente"
    ))

(defun main ()
    (let ((ervas (list (make-erva :nome "A braba do Calipal"
                                  :preco-por-grama 12.5
                                  :toxicidade 9)
                        (make-erva :nome "Verdinha de Santa Rita"
                                   :preco-por-grama 4.2
                                   :toxicidade 5)
                        (make-erva :nome "Oregano"
                                   :preco-por-grama 1.75
                                   :toxicidade 1))))
    (dolist (e ervas)
        (format t "~a~%" (descreve-erva e))
        (format t "~a~%~%" (aviso e)))

    (let* ((erva-escolhida (first ervas))
           (gramas 15)
           (total (preco-erva erva-escolhida gramas)))
        
        (format t "Preco de uma dose de ~a (~d g): ~,2f~%"
              (erva-nome erva-escolhida)
              gramas
              total))))

(main)