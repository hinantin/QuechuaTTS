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
;;; POS tagger for quz
;;;
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
;;;/*                                                                       */
;;;/*=======================================================================*/

;;; Load any necessary files here


(set! cus_quz_guess_pos 
'((fn
    ;; function words 
  )
  ;; Or split them into sub classes (but give them meaningful names)
  ; (fn0 .. .. .. ..)
  ; (fn1 .. .. .. ..)
  ; (fn2 .. .. .. ..)
))

(define (cus_quz_gui::select_tagger)
  "(cus_quz_gui::select_tagger)
Set up the POS tagger for quz."
  (set! pos_lex_name nil)
  (set! guess_pos cus_quz_guess_pos) 
)

(define (cus_quz_gui::reset_tagger)
  "(cus_quz_gui::reset_tagger)
Reset tagging information."
  t
)

(provide 'cus_quz_gui_tagger)
