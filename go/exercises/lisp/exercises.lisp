(defun sum(numberOne numberTwo)
    (+ numberOne numberTwo))


(print (sum 1 2))   
(terpri)

(defun positiveOrNegative(number) 
    (if (> number 0) "positive" "negative"))


(print (positiveOrNegative 10))
(terpri)


(if (= (sum 2 3) 5) (print "ok") (print "error"))
(if (string= (positiveOrNegative 1) "positive") (print "ok") (print "error"))
(terpri) 

(defun vm(spaceVariation time)
    (/ spaceVariation time))

(print (vm 1000 5))

(defun empuxo(densidade volumeDeslocado gravidade)
    (* (* densidade volumeDeslocado) gravidade))

(print (empuxo 200 1000 9.8))

(defun grade(grade)
(if (> grade 10.0) "error" (if (>= grade 9.0) "A" (if (>= grade 7.0) "B" (if (>= grade 5.0) "C" (if (>= grade 4.5) "D" (if (>= grade 0) "F" "error")))))))

(print (grade 11))
(terpri)
