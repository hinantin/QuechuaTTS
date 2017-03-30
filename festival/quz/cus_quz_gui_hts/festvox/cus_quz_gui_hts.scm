;;  ----------------------------------------------------------------  ;;
;;                 Nagoya Institute of Technology and                 ;;
;;                     Carnegie Mellon University                     ;;
;;                         Copyright (c) 2002                         ;;
;;                        All Rights Reserved.                        ;;
;;                                                                    ;;
;;  Permission is hereby granted, free of charge, to use and          ;;
;;  distribute this software and its documentation without            ;;
;;  restriction, including without limitation the rights to use,      ;;
;;  copy, modify, merge, publish, distribute, sublicense, and/or      ;;
;;  sell copies of this work, and to permit persons to whom this      ;;
;;  work is furnished to do so, subject to the following conditions:  ;;
;;                                                                    ;;
;;    1. The code must retain the above copyright notice, this list   ;;
;;       of conditions and the following disclaimer.                  ;;
;;                                                                    ;;
;;    2. Any modifications must be clearly marked as such.            ;;
;;                                                                    ;;
;;    3. Original authors' names are not deleted.                     ;;
;;                                                                    ;;
;;    4. The authors' names are not used to endorse or promote        ;;
;;       products derived from this software without specific prior   ;;
;;       written permission.                                          ;;
;;                                                                    ;;
;;  NAGOYA INSTITUTE OF TECHNOLOGY, CARNEGIE MELLON UNIVERSITY AND    ;;
;;  THE CONTRIBUTORS TO THIS WORK DISCLAIM ALL WARRANTIES WITH        ;;
;;  REGARD TO THIS SOFTWARE, INCLUDING ALL IMPLIED WARRANTIES OF      ;;
;;  MERCHANTABILITY AND FITNESS, IN NO EVENT SHALL NAGOYA INSTITUTE   ;;
;;  OF TECHNOLOGY, CARNEGIE MELLON UNIVERSITY NOR THE CONTRIBUTORS    ;;
;;  BE LIABLE FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR   ;;
;;  ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR        ;;
;;  PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER    ;;
;;  TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR  ;;
;;  PERFORMANCE OF THIS SOFTWARE.                                     ;;
;;                                                                    ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;     A voice based on "HTS" HMM-Based Speech Synthesis System.      ;;
;;          Author :  Alan W Black                                    ;;
;;          Date   :  August 2002                                     ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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

;;; Try to find the directory where the voice is, this may be from
;;; .../festival/lib/voices/ or from the current directory
(if (assoc 'cus_quz_gui_hts voice-locations)
    (defvar cus_quz_gui_hts::hts_dir 
      (cdr (assoc 'cus_quz_gui_hts voice-locations)))
    (defvar cus_quz_gui_hts::hts_dir (string-append (pwd) "/")))

(defvar cus_quz_gui::clunits_dir cus_quz_gui_hts::hts_dir)
(defvar cus_quz_gui::clunits_loaded nil)

;;; Did we succeed in finding it
(if (not (probe_file (path-append cus_quz_gui_hts::hts_dir "festvox/")))
    (begin
     (format stderr "cus_quz_gui_hts::hts: Can't find voice scm files they are not in\n")
     (format stderr "   %s\n" (path-append  cus_quz_gui_hts::hts_dir "festvox/"))
     (format stderr "   Either the voice isn't linked in Festival library\n")
     (format stderr "   or you are starting festival in the wrong directory\n")
     (error)))

;;;  Add the directory contains general voice stuff to load-path
(set! load-path (cons (path-append cus_quz_gui_hts::hts_dir "festvox/") 
		      load-path))

(set! hts_data_dir (path-append cus_quz_gui_hts::hts_dir "hts/"))

(set! hts_feats_list
      (load (path-append hts_data_dir "feat.list") t))

(require 'hts)
(require_module 'hts_engine)

;;; Voice specific parameter are defined in each of the following
;;; files
(require 'cus_quz_gui_phoneset)
(require 'cus_quz_gui_tokenizer)
(require 'cus_quz_gui_tagger)
(require 'cus_quz_gui_lexicon)
(require 'cus_quz_gui_phrasing)
(require 'cus_quz_gui_intonation)
(require 'cus_quz_gui_duration)
(require 'cus_quz_gui_f0model)
(require 'cus_quz_gui_other)
;; ... and others as required


(define (cus_quz_gui_hts::voice_reset)
  "(cus_quz_gui_hts::voice_reset)
Reset global variables back to previous voice."
  (cus_quz_gui::reset_phoneset)
  (cus_quz_gui::reset_tokenizer)
  (cus_quz_gui::reset_tagger)
  (cus_quz_gui::reset_lexicon)
  (cus_quz_gui::reset_phrasing)
  (cus_quz_gui::reset_intonation)
  (cus_quz_gui::reset_duration)
  (cus_quz_gui::reset_f0model)
  (cus_quz_gui::reset_other)

  t
)

(set! cus_quz_gui_hts::hts_feats_list
      (load (path-append hts_data_dir "feat.list") t))

(set! cus_quz_gui_hts::hts_engine_params
      (list
       (list "-md" (path-append hts_data_dir "dur.pdf"))
       (list "-mm" (path-append hts_data_dir "mgc.pdf"))
       (list "-mf" (path-append hts_data_dir "lf0.pdf"))
       (list "-td" (path-append hts_data_dir "tree-dur.inf"))
       (list "-tm" (path-append hts_data_dir "tree-mgc.inf"))
       (list "-tf" (path-append hts_data_dir "tree-lf0.inf"))
       (list "-dm1" (path-append hts_data_dir "mgc.win1"))
       (list "-dm2" (path-append hts_data_dir "mgc.win2"))
       (list "-dm3" (path-append hts_data_dir "mgc.win3"))
       (list "-df1" (path-append hts_data_dir "lf0.win1"))
       (list "-df2" (path-append hts_data_dir "lf0.win2"))
       (list "-df3" (path-append hts_data_dir "lf0.win3"))
       (list "-cm" (path-append hts_data_dir "gv-mgc.pdf"))
       (list "-cf" (path-append hts_data_dir "gv-lf0.pdf"))
       (list "-em" (path-append hts_data_dir "tree-gv-mgc.inf"))
       (list "-ef" (path-append hts_data_dir "tree-gv-lf0.inf"))
       (list "-k" (path-append hts_data_dir "gv-switch.inf"))
;; ... 09/10/2012 - For this version we change the sampling rate to 16000 and the frameshift 80 agregado por RCastro
       '("-s" 16000.0)
       '("-p" 80.0)
       '("-a" 0.55)
       '("-g" 0.0)
       '("-b" 0.0)
       '("-u" 0.5)
       ))

;; This function is called to setup a voice.  It will typically
;; simply call functions that are defined in other files in this directory
;; Sometime these simply set up standard Festival modules othertimes
;; these will be specific to this voice.
;; Feel free to add to this list if your language requires it

(define (voice_cus_quz_gui_hts)
  "(voice_cus_quz_gui_hts)
Define voice for limited domain: us."
  ;; *always* required
  (voice_reset)

  ;; Select appropriate phone set
  (cus_quz_gui::select_phoneset)

  ;; Select appropriate tokenization
  (cus_quz_gui::select_tokenizer)

  ;; For part of speech tagging
  (cus_quz_gui::select_tagger)

  (cus_quz_gui::select_lexicon)
  ;; For hts selection you probably don't want vowel reduction
  ;; the unit selection will do that
  (if (string-equal "cuscoquechua" (Param.get 'Language))
      (set! postlex_vowel_reduce_cart_tree nil))

  (cus_quz_gui::select_phrasing)

  (cus_quz_gui::select_intonation)

  (cus_quz_gui::select_duration)

  (cus_quz_gui::select_f0model)

  ;; Waveform synthesis model: hts
  (set! hts_engine_params cus_quz_gui_hts::hts_engine_params)
  (set! hts_feats_list cus_quz_gui_hts::hts_feats_list)
  (Parameter.set 'Synth_Method 'HTS)

  ;; This is where you can modify power (and sampling rate) if desired
  (set! after_synth_hooks nil)
;  (set! after_synth_hooks
;      (list
;        (lambda (utt)
;          (utt.wave.rescale utt 2.1))))

  (set! current_voice_reset cus_quz_gui_hts::voice_reset)

  (set! current-voice 'cus_quz_gui_hts)
)

(proclaim_voice
 'cus_quz_gui_hts
 '((language cuscoquechua)
   (gender male)
   (dialect cuscoquechua)
   (coding UTF-8)
   (description
    "Quechua speaker gui recorded by graduate degree students UNSAAC - CPIIS.")))

(provide 'cus_quz_gui_hts)

