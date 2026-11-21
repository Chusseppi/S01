(defstruct dominio
    nome
    elemento
    dificuldade
    mora)

(defun bonus-elemental (elemento)
    (case elemento
        (:electro 1.5)
        (:hydro 1.2)
        (otherwise 1)))

(defun recompensa-final (d)
    (* (dominio-mora d)
        (bonus-elemental (dominio-elemento d))))

(defun rota (lista dificuldade-maxima)
    (let* ((filtrados (remove-if-not (lambda (d)
            (<= (dominio-dificuldade d) dificuldade-maxima))
                lista))
         (textos (mapcar (lambda (d)
            (format nil "Dominio: ~a | Recompensa final: ~,2f mora"
                (dominio-nome d)
                    (recompensa-final d)))
                        filtrados)))
    textos))

(defun main ()
    (let* ((dominios (list (make-dominio :nome "Templo do Leao" :elemento :electro :dificuldade 2 :mora 2500)
                            (make-dominio :nome "Vale das Mares" :elemento :hydro :dificuldade 3 :mora 3000)
                            (make-dominio :nome "Palacio Oculto de Zhou" :elemento :pyro :dificuldade 4 :mora 4000)
                            (make-dominio :nome "Pico de Vindagnyr" :elemento :cryo :dificuldade 5 :mora 5500)
                            (make-dominio :nome "Torre da Nevoa" :elemento :anemo :dificuldade 1 :mora 1800)))
         (dificuldade-max 3)
         (rota-escolhida (rota dominios dificuldade-max))
         (total-mora-lista (reduce #'+ (mapcar #'recompensa-final dominios)
                                    :initial-value 0))
         (original (first dominios))
         (copia (copy-dominio original)))

    (dolist (item rota-escolhida)
      (format t "~a~%" item))

    (format t "~%Total de mora da lista inteira: ~,2f~%~%" total-mora-lista)

    (setf (dominio-mora copia) 9999)
    (format t "Mora do dominio original (~a): ~a~%"
            (dominio-nome original)
            (dominio-mora original))
    (format t "Mora da copia alterada (~a): ~a~%"
            (dominio-nome copia)
            (dominio-mora copia))))

(main)