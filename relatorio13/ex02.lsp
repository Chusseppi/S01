(defstruct criatura
    nome
    bioma
    profundidade
    perigo)

(defun texto-do-perigo (perigo)
    (case perigo 
        (:inofensiva "Inofensiva")
        (:agressiva "Agressiva")
        (:leviata "Leviata: mantenha distancia")
        (otherwise "Desconhecido")))

(defun descreve-criatura (c)
  (format nil "Nome: ~a :: Bioma: ~a :: Profundidade: ~dm :: Perigo: ~a"
          (criatura-nome c)
          (criatura-bioma c)
          (criatura-profundidade c)
          (texto-do-perigo (criatura-perigo c))))

(defun abaixo-de (metros catalogo)
  (remove-if-not (lambda (c)
                   (> (criatura-profundidade c) metros))
                 catalogo))

(defparameter *catalogo*
    (list
        (make-criatura :nome "Peixinho" :bioma "Mar raso" :profundidade 50 :perigo :inofensiva)
        (make-criatura :nome "Peixao" :bioma "Mar profundo" :profundidade 100 :perigo :agressiva)
        (make-criatura :nome "Tubarao" :bioma "Angra dos Reis" :profundidade 1000 :perigo :leviata)
        (make-criatura :nome "Tutuba" :bioma "Fossa abissal" :profundidade 10000 :perigo :perigosao)))

(defun main ()

    (format t "Todas as Criaturas ~%")

    (dolist (criaturas (mapcar #'descreve-criatura *catalogo*))
        (format t "~a~%" criaturas))

    (format t "Todas as Criaturas abaixo de 200m ~%")

    (let* ((limite-metros 200)
        (profundas (abaixo-de limite-metros *catalogo*))
        (textos-profundas (mapcar #'descreve-criatura profundas)))

    (dolist (texto textos-profundas)
      (format t "~a~%" texto))

    (format t "~%Total de criaturas abaixo de ~dm: ~d~%"
            limite-metros
            (length profundas))))

(main)