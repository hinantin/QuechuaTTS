;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;                                                                       ;;
;;;                Centre for Speech Technology Research                  ;;
;;;                     University of Edinburgh, UK                       ;;
;;;                       Copyright (c) 1996,1997                         ;;
;;;                        All Rights Reserved.                           ;;
;;;                                                                       ;;
;;;  Permission to use, copy, modify, distribute this software and its    ;;
;;;  documentation for research, educational and individual use only, is  ;;
;;;  hereby granted without fee, subject to the following conditions:     ;;
;;;   1. The code must retain the above copyright notice, this list of    ;;
;;;      conditions and the following disclaimer.                         ;;
;;;   2. Any modifications must be clearly marked as such.                ;;
;;;   3. Original authors' names are not deleted.                         ;;
;;;  This software may not be used for commercial purposes without        ;;
;;;  specific prior written permission from the authors.                  ;;
;;;                                                                       ;;
;;;  THE UNIVERSITY OF EDINBURGH AND THE CONTRIBUTORS TO THIS WORK        ;;
;;;  DISCLAIM ALL WARRANTIES WITH REGARD TO THIS SOFTWARE, INCLUDING      ;;
;;;  ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO EVENT   ;;
;;;  SHALL THE UNIVERSITY OF EDINBURGH NOR THE CONTRIBUTORS BE LIABLE     ;;
;;;  FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES    ;;
;;;  WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN   ;;
;;;  AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION,          ;;
;;;  ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF       ;;
;;;  THIS SOFTWARE.                                                       ;;
;;;                                                                       ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;   A hand specified tree to predict zcore durations
;;;
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

(set! cus_quz_gui::zdur_tree 
 '
   ((R:SylStructure.parent.R:Syllable.p.syl_break > 1 ) ;; clause initial
    ((1.5))
    ((R:SylStructure.parent.syl_break > 1)   ;; clause final
     ((1.5))
     ((1.0)))))

(set! cus_quz_gui::phone_durs
 ;; should be hand specified
 ;; '(
 ;;   (pau 0.0 0.250)
 ;;   ...  ;; the other phones
 ;;  )
 ;; But this will fake it until you build a duration model 
 (mapcar
  (lambda (p)
    (list (car p) 0.0 0.100))
  (cadr (assoc_string 'phones (PhoneSet.description ))))
)

(provide 'cus_quz_gui_durdata)
