; 繰り返し
(dotimes (i 100)
  ; 局所変数の定義
  (let ((num (+ i 1)))
    (if (= 0 (mod num 3))
      (format t "Fizz"))
    (if (= 0 (mod num 5))
      (format t "Buzz"))
    (if (and (not (= 0 (mod num 5)))
             (not (= 0 (mod num 3))))
      (format t "~a" num))
    (format t " " )))

; 関数でやる
; counter 個のインクリメンタルなリストを作る
(defun iota (counter &optional (start 0))
  (if (= counter 0)
    nil
    (cons start (iota
                  (- counter 1)
                  (+ start 1)))))

; FizzBuzz を返す
(defun fizz_buzz (num)
  (cond ((and (= 0 (mod num 3)) (= 0 (mod num 5))) "FizzBuzz")
        ((= 0 (mod num 3)) "Fizz")
        ((= 0 (mod num 5)) "Buzz")
        (t num)))

; 出力
(format t
        "~{~a ~}"
        (mapcar #'fizz_buzz
                (iota 100 1)))
