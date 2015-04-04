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

;;; Load any other required files
(require 'cus_quechua_tokenizer)

;;; Voice/quz token_to_word rules 
(define (cus_quz_gui::token_to_words token name)
  "(cus_quz_gui::token_to_words token name)
Specific token to word rules for the voice cus_quz_gui.  Returns a list
of words that expand given token with name."
  (cond
   ;; voice specific token to word rules
   (t ;; when no specific rules apply do the general ones
    (cus_quechua::token_to_words token name))))

;;;(define (cus_quz::number token name)
;;;  "(cus_quz::number token name)
;;;Return list of words that pronounce this number in quz."
;;;
;;;  (error "cus_quz::number to be written\n")
;;;
;;;)

(define (cus_quz_gui::select_tokenizer)
  "(cus_quz_gui::select_tokenizer)
Set up tokenizer for quz."
  (Parameter.set 'Language 'cus_quz)
  (set! token.punctuation cus_quechua::token.punctuation)
  (set! token.prepunctuation cus_quechua::token.prepunctuation)
  (set! token.whitespace cus_quechua::token.whitespace)
  (set! token.singlecharsymbols cus_quechua::token.singlecharsymbols)

  (set! token_to_words cus_quz_gui::token_to_words)
)

(define (cus_quz_gui::reset_tokenizer)
  "(cus_quz_gui::reset_tokenizer)
Reset any globals modified for this voice.  Called by 
(cus_quz_gui::voice_reset)."
  ;; None

  t
)

(provide 'cus_quz_gui_tokenizer)
