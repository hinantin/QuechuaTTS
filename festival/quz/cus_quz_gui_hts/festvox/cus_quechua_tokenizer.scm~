;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;                                                                     ;;;
;;;                     Carnegie Mellon University                      ;;;
;;;                  and Alan W Black and Kevin Lenzo                   ;;;
;;;                      Copyright (c) 1998-2000                        ;;;
;;;                        All Rights Reserved.                         ;;;
;;;                                                                     ;;;
;;; Permission is hereby granted, free of charge, to use and distribute ;;;
;;; this software and its documentation without restriction, including  ;;;
;;; without limitation the rights to use, copy, modify, merge, publish, ;;;
;;; distribute, sublicense, and/or sell copies of this work, and to     ;;;
;;; permit persons to whom this work is furnished to do so, subject to  ;;;
;;; the following conditions:                                           ;;;
;;;  1. The code must retain the above copyright notice, this list of   ;;;
;;;     conditions and the following disclaimer.                        ;;;
;;;  2. Any modifications must be clearly marked as such.               ;;;
;;;  3. Original authors' names are not deleted.                        ;;;
;;;  4. The authors' names are not used to endorse or promote products  ;;;
;;;     derived from this software without specific prior written       ;;;
;;;     permission.                                                     ;;;
;;;                                                                     ;;;
;;; CARNEGIE MELLON UNIVERSITY AND THE CONTRIBUTORS TO THIS WORK        ;;;
;;; DISCLAIM ALL WARRANTIES WITH REGARD TO THIS SOFTWARE, INCLUDING     ;;;
;;; ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO EVENT  ;;;
;;; SHALL CARNEGIE MELLON UNIVERSITY NOR THE CONTRIBUTORS BE LIABLE     ;;;
;;; FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES   ;;;
;;; WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN  ;;;
;;; AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION,         ;;;
;;; ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF      ;;;
;;; THIS SOFTWARE.                                                      ;;;
;;;                                                                     ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Tokenizer for quz
;;;
;;;  To share this among voices you need to promote this file to
;;;  to say festival/lib/cus_quz/ so others can use it.
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;/*************************************************************************/
;;;/*      UNIVERSIDAD NACIONAL DE SAN ANTONIO ABAD DEL CUSCO               */
;;;/*      FACULTAD DE CIENCIAS QUIMICAS, FISICAS Y MATEMATICAS             */
;;;/*      CARRERA PROFESIONAL DE INGENIERIA INFORMATICA Y DE SISTEMAS      */
;;;/*                                                                       */
;;;/* THE MATERIAL PRESENTED HERE BELONGS TO THE THESIS PROJECT SUSCRIBED   */
;;;/* ACCORDING TO THE REQUIREMENTS AT UNSAAC BY THE AUTHORS, WITH THE      */
;;;/* RESOLUTION NUMBER D-1134-2011-FCQFM ON THE 21TH OF DECEMBER 2011      */
;;;/*                                                                       */
;;;/*  Authors :  John Edgar Vargas Muñoz jonv147@hotmail.com               */
;;;/*             Juan Antonio Cruz Tello j.socco@gmail.com                 */
;;;/*             Richard Alexander Castro Mamani richardtk_1@hotmail.com   */
;;;/*  Date    :  12 November 2012                                          */
;;;/*-----------------------------------------------------------------------*/
;;;/*                                                                       */
;;;/* This copy was granted to Amos Batto amosbatto@yahoo.com               */
;;;/* by Richard Alexander Castro Mamani                                    */
;;;/* to test the integration with StarDict.                                */
;;;/* Amos Batto is not allowed to redistribute or to modified              */
;;;/* the code without asking permission of the authors,                    */
;;;/* please notify the authors if your're not Amos Batto                   */
;;;/*                                                                       */
;;;/*=======================================================================*/

;;; Load any other required files

;; Punctuation for the particular language
;; Modificado por RCastro 25/10/2012 los textos que incluyen un guion
;; no son correctamente leidos 
(set! cus_quechua::token.punctuation "\"'`.,:;!?(){}[]-")
(set! cus_quechua::token.prepunctuation "\"'`({[")
(set! cus_quechua::token.whitespace " \t\n\r")
(set! cus_quechua::token.singlecharsymbols "")

;;; General Functions
(define (quechua_number name)
"(quechua_number name)
Convert a string of digits into a list of words saying the number."
  (if (string-matches name "0")
      (list "ch'usaq")
      (quechua_number_from_digits (utf8explode name))))

(define (just_zeros digits)
"(just_zeros digits)
If this only contains 0s then we just do something different."
 (cond
  ((not digits) t)
  ((string-equal "0" (car digits))
   (just_zeros (cdr digits)))
  (t nil)))
  
(define (sufx num)
	(string-append 
		(cond
			((string-equal num "1") "ni")
			((string-equal num "2") "ni")
			((string-equal num "7") "ni")
			((string-equal num "8") "ni")
			((string-equal num "9") "ni")
			(t "")
		)
		"yoq"
	)
)

(define (single_digit num)
    ;(print num)
	(cond 
       ((string-equal num "0") "ch'usaq")
       ((string-equal num "1") "huk")
       ((string-equal num "2") "iskay")
       ((string-equal num "3") "kinsa")
       ((string-equal num "4") "tawa")
       ((string-equal num "5") "pisqa")
       ((string-equal num "6") "soqta")
       ((string-equal num "7") "qanchis")
       ((string-equal num "8") "pusaq")
       ((string-equal num "9") "isqon")
       ;; fill in the rest
       (t ""))
)

(define (quechua_number_from_digits digits)
  "(quechua_number_from_digits digits)
Takes a list of digits and converts it to a list of words
saying the number."
  (let ((l (length digits)))
    (cond
     ((equal? l 0)
      nil)
     ((equal? l 1);; single digit
		(list (single_digit (car digits)))
	  );; $$$ what should say?
     ((equal? l 2);; less than 100
      (cond
       ((string-equal (car digits) "0");; 0x
			(list (string-append (single_digit (car (reverse digits))) (sufx (car (reverse digits)))))
		)
       ((string-equal (car digits) "1");; 1x
		 (cond
			((string-equal (car (reverse digits)) "0") (list "chunka"))
			(t (list "chunka" (string-append (single_digit (car (reverse digits))) (sufx (car (reverse digits))))))
		 )
		)
		(t    ;; xx
		 (cond
			((string-equal (car (reverse digits)) "0") (list (single_digit (car digits)) "chunka"))
			(t (list (single_digit (car digits)) "chunka" (string-append (single_digit (car (reverse digits))) (sufx (car (reverse digits))))))
		 )
		)
       ))
     ((equal? l 3);; in the hundreds
      (cond 
		((string-equal (car digits) "0");; 0xx
			(quechua_number_from_digits (cdr digits))
		)
		((string-equal (car digits) "1");; 1xx
			(if (just_zeros (cdr digits)) (list "pachak") (cons "pachak" (quechua_number_from_digits (cdr digits))) ) 
		)
		(t
			(cons (single_digit (car digits)) 
				(if (just_zeros (cdr digits)) (list "pachak") (cons "pachak" (quechua_number_from_digits (cdr digits))) ) 
			)
		)
       ))
     ((< l 7)
      (let ((sub_waranqa 
	     (list 
	      (car (cdr (cdr (reverse digits))))
	      (car (cdr (reverse digits)))
	      (car (reverse digits))))
	    (waranqa (reverse (cdr (cdr (cdr (reverse digits)))))))
		(append
			(cond 
				((just_zeros waranqa) nil)
				((string-equal (car (quechua_number_from_digits waranqa)) "huk") (list "waranqa"))
				((string-equal (car (quechua_number_from_digits waranqa)) "hukniyoq") (list "waranqa"))
				(t (append (quechua_number_from_digits waranqa) (list "waranqa") ))
			)
			(if (just_zeros sub_waranqa) nil (quechua_number_from_digits sub_waranqa) ) 
		)
	  ))

     ((< l 13)
      (let ((sub_hunu 
	     (list 
	      (car (cdr (cdr (cdr (cdr (cdr(reverse digits)))))))
	      (car (cdr (cdr (cdr (cdr (reverse digits))))))
	      (car (cdr (cdr (cdr (reverse digits)))))
	      (car (cdr (cdr (reverse digits))))
	      (car (cdr (reverse digits)))
	      (car (reverse digits))
	      ))
	    (hunu (reverse (cdr (cdr (cdr (cdr (cdr (cdr (reverse digits))))))))))
		(append
			(cond
				((string-equal (car (quechua_number_from_digits hunu)) "huk") (list "hunu"))
				((string-equal (car (quechua_number_from_digits hunu)) "hukniyoq") (list "hunu"))
				(t (append (quechua_number_from_digits hunu) (list "hunu") ))
			)
			(if (just_zeros sub_hunu) nil (quechua_number_from_digits sub_hunu) )
		)
	))

     (t
      (list "sinchi" "hatun" "yupay")))))


;;; "Voice/ca token_to_word rules 
(define (cus_quechua::token_to_words token name)
  "(cus_quechua::token_to_words TOKEN NAME)
Returns a list of words for the NAME from TOKEN.  This primarily
allows the treatment of numbers, money etc."
  ;(print name)
  (cond
   ((string-matches name "[1-9][0-9]+")
    (quechua_number name))
     
	((not (lts.in.alphabet name 'quechua_downcase))
		;; It contains some other than the lts can deal with
		(let ((subwords) (name_temp))
			(set! name_temp "")
			(item.set_feat token "pos" "nn")
			(mapcar
				(lambda (letter)
					;; might be symbols or digits
					(set! subwords
						(car ;append subwords
							(cond
								((string-matches letter "[0-9]") (quechua_number letter))
								((string-matches letter "Ñ") (list "~n"))
								((string-matches letter "ñ") (list "~n"))
								((string-matches letter "Á") (quechua_downcase "a"))
								((string-matches letter "É") (quechua_downcase "e"))
								((string-matches letter "Í") (quechua_downcase "i"))
								((string-matches letter "Ó") (quechua_downcase "o"))
								((string-matches letter "Ú") (quechua_downcase "u"))
								((string-matches letter "Ü") (quechua_downcase "u"))
								((string-matches letter "á") (quechua_downcase "a"))
								((string-matches letter "é") (quechua_downcase "e"))
								((string-matches letter "í") (quechua_downcase "i"))
								((string-matches letter "ó") (quechua_downcase "o"))
								((string-matches letter "ú") (quechua_downcase "u"))
								((string-matches letter "ü") (quechua_downcase "u"))
								((string-matches letter "&") (list "wan"))
								((string-matches letter "º") (list ""))
								((string-matches letter "’") (list "'"))
								((string-matches letter "“") (list ""))
								((string-matches letter "”") (list ""))
								((string-matches letter "!") (list ""))
								((string-matches letter "¡") (list ""))
								((string-matches letter ",") (list ""))
								((string-matches letter ".") (list ""))
								((string-matches letter "(") (list ""))
								((string-matches letter ")") (list ""))
								((string-matches letter " ") (list ""))
								(t 
								(
								;(print letter)
								(list ("equis"))
								)
								)
							)
						)
					)

					(if (equal? subwords "")
						(if (string-matches letter "[A-Za-z]")
							(set! name_temp (string-append name_temp letter))
							(set! name_temp name_temp)
						)
						(set! name_temp (string-append name_temp subwords))
					)
					
					;(print (list letter name_temp))
				)  
				(utf8explode name)
			)
			(list name_temp);subwords
		)
    )
	(t (list name))
   )
)


(define (cus_quechua::select_tokenizer)
  "(cus_quechua::select_tokenizer)
Set up tokenizer for Cusco Quechua."
  (Parameter.set 'Language 'cuscoquechua)

  (set! token_to_words cus_quechua::token_to_words)
)

(define (cus_quechua::reset_tokenizer)
  "(cus_quechua::reset_tokenizer)
Reset any globals modified for this voice.  Called by 
(cus_quechua::voice_reset)."
  ;; None

  t
)

(provide 'cus_quechua_tokenizer)
