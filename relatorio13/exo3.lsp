(defstruct garota-magica
    nome
    escuridao
    bruxas)

(defun escuridao-total (grupo)
    (if (null grupo)
    0
    (+ (garota-magica-escuridao (car grupo))
        (escuridao-total (cdr grupo)))))

(defun total-de-bruxas (grupo)
    (reduce #'+ (mapcar #'garota-magica-bruxas grupo) :initial-value 0))

(defun purifica (g quantidade)
    (let ((nova-escuridao (if (>= quantidade (garota-magica-escuridao g))
                        0
                        (- (garota-magica-escuridao g) quantidade))))
    (make-garota-magica :nome (garota-magica-nome g)
                    :escuridao nova-escuridao
                    :bruxas (garota-magica-bruxas g))))

(defun main ()
  (let* ((grupo (list (make-garota-magica :nome "Madoka" :escuridao 35 :bruxas 3)
                      (make-garota-magica :nome "Homura" :escuridao 60 :bruxas 12)
                      (make-garota-magica :nome "Mami" :escuridao 25 :bruxas 8)))

        (nova-garota (make-garota-magica :nome "Kyoko" :escuridao 15 :bruxas 5))
        (novo-grupo (cons nova-garota grupo))
        (garota-alvo (second grupo))
        (garota-purificada (purifica garota-alvo 40)))

    (format t "Escuridao total do grupo inicial: ~d~%" (escuridao-total grupo))
    (format t "Total de bruxas derrotadas: ~d~%~%" (total-de-bruxas grupo))

    (format t "Escuridao total do grupo original: ~d~%" (escuridao-total grupo))
    (format t "Escuridao total do novo grupo (com ~a): ~d~%~%"
            (garota-magica-nome nova-garota)
            (escuridao-total novo-grupo))

    (format t "Escuridao original de ~a: ~d~%"
            (garota-magica-nome garota-alvo)
            (garota-magica-escuridao garota-alvo))
    (format t "Escuridao nova de ~a apos purificacao: ~d~%"
            (garota-magica-nome garota-purificada)
            (garota-magica-escuridao garota-purificada))))

(main)