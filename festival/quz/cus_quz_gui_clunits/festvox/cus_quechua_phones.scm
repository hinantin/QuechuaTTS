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
;;; Phonset for cus_quz
;;;

;;;  Feeel free to add new feature values, or new features to this
;;;  list to make it more appropriate to your language
(defPhoneSet
  cus_quechua
  ;;;  Phone Features
  (;; vowel or consonant
   (vc + -)  
   ;; vowel length: short long dipthong schwa
   (vlng s l d a 0)
   ;; vowel height: high mid low
   (vheight 1 2 3 0)
   ;; vowel frontness: front mid back
   (vfront 1 2 3 0)
   ;; lip rounding
   (vrnd + - 0)
   ;; consonant type: stop fricative affricative nasal liquid
   (ctype s f a n l 0)
   ;; place of articulation: labial alveolar palatal labio-dental
   ;;                         dental velar
   (cplace l a p b d v 0)
   ;; consonant voicing
   (cvox + - 0)
   )
  (
	(a + s 3 1 - 0 0 +)
	(ch - 0 0 0 0 a p 0)
	(chh - 0 0 0 0 a p 0)
	(chx - 0 0 0 0 a p 0)
	(e + s 2 1 - 0 0 +)
	(h - 0 0 0 0 f 0 0)
	(i + s 1 1 - 0 0 +)
	(k - 0 0 0 0 s v 0)
	(kh - 0 0 0 0 s v 0)
	(kx - 0 0 0 0 s v 0)
	(l - 0 0 0 0 s a 0)
	(L - 0 0 0 0 s p 0)
	(m - 0 0 0 0 n l 0)
	(n - 0 0 0 0 n a 0)
	(N - 0 0 0 0 n p 0)
	(o + s 2 3 + 0 0 +)
	(p - 0 0 0 0 s l 0)
	(ph - 0 0 0 0 s l 0)
	(px - 0 0 0 0 s l 0)
	(q - 0 0 0 0 s 0 0)
	(qh - 0 0 0 0 s 0 0)
	(qx - 0 0 0 0 s 0 0)
	(r - 0 0 0 0 s a 0)
	(s - 0 0 0 0 s a 0)
	(sh - 0 0 0 0 f p 0)
	(t - 0 0 0 0 s a 0)
	(th - 0 0 0 0 s a 0)
	(tx - 0 0 0 0 s a 0)
	(u + l 1 3 + 0 0 +)
	(w - 0 0 0 0 0 0 0)
	(y - 0 0 0 0 0 p 0)
	
	(a1 + s 3 1 - 0 0 +)
	(e1 + s 2 1 - 0 0 +)
	(i1 + s 1 1 - 0 0 +)
	(o1 + s 2 3 + 0 0 +)
	(u1 + l 1 3 + 0 0 +)
	
	(pau - 0 0 0 0 0 0 -)
	(_ - 0 0 0 0 0 0 -)
	(# - 0 0 0 0 0 0 -)

   ;; insert the phones here, see examples in 
   ;; festival/lib/*_phones.scm

  )
)
;;; (PhoneSet.silences '(#))
(PhoneSet.silences '(pau))
(provide 'cus_quechua_phones)
