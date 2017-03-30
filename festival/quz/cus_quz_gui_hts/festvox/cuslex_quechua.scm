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
;;; Lexicon, LTS and Postlexical rules for cus_quz
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
;;;/*=======================================================================*/

;;; Load any necessary files here

(define (cus_quechua_addenda)
  "(cus_quechua_addenda)
Basic lexicon should (must ?) have basic letters, symbols and punctuation."

;;; Pronunciation of letters in the alphabet
;(lex.add.entry '("a" nn (((a) 0))))
(lex.add.entry '("ch" nn (((ch a) 0))))
(lex.add.entry '("chh" nn (((chh a) 0))))
(lex.add.entry '("ch'" nn (((chx a) 0))))
;(lex.add.entry '("e" nn (((e) 0))))
(lex.add.entry '("h" nn (((h a) 0))))
;(lex.add.entry '("i" nn (((i) 0))))
(lex.add.entry '("k" nn  (((k a) 0))))
(lex.add.entry '("kh" nn (((kh a) 0))))
(lex.add.entry '("k'" nn (((kx a) 0))))
(lex.add.entry '("l" nn (((l a) 0))))
(lex.add.entry '("ll" nn (((L a) 0))))
(lex.add.entry '("m" nn (((m a) 0))))
(lex.add.entry '("n" nn (((n a) 0))))
-(lex.add.entry '("~n" nn (((N a) 0))))
(lex.add.entry '("ñ" nn (((N a) 0))))
;(lex.add.entry '("o" nn (((o) 0))))
(lex.add.entry '("p" nn (((p a) 0))))
(lex.add.entry '("ph" nn (((ph a) 0))))
(lex.add.entry '("p'" nn (((px a) 0))))
(lex.add.entry '("q" nn (((q a) 0))))
(lex.add.entry '("qh" nn (((qh a) 0))))
(lex.add.entry '("q'" nn (((qx a) 0))))
(lex.add.entry '("s" nn (((s a) 0))))
(lex.add.entry '("sh" nn (((sh a) 0))))
(lex.add.entry '("chk" nn (((sh a) 0))))
(lex.add.entry '("t" nn (((t a) 0))))
(lex.add.entry '("th" nn (((th a) 0))))
(lex.add.entry '("t'" nn (((tx a) 0))))
;(lex.add.entry '("u" nn (((u) 0))))
(lex.add.entry '("w" nn (((w a) 0))))
(lex.add.entry '("y" nn (((y a) 0))))

;Prestamos del español
(lex.add.entry '("á" nn (((a1) 1))))
(lex.add.entry '("é" nn (((e1) 1))))
(lex.add.entry '("í" nn (((i1) 1))))
(lex.add.entry '("ó" nn (((o1) 1))))
(lex.add.entry '("ú" nn (((u1) 1))))
(lex.add.entry '("ü" nn (((u1) 1))))
; ...

;;; Symbols ...
(lex.add.entry '("*" n (((a s) 0) ((t e) 0) ((r i1 s) 1)  ((k o) 0))))
(lex.add.entry '("%" n (((p o r) 0) ((s i1 n) 1) ((t o) 0))))

;; Basic punctuation must be in with nil pronunciation
(lex.add.entry '("." punc nil))
;(lex.add.entry '("." nn (((p u1 n) 1) ((t o) 0))))
(lex.add.entry '("'" punc nil))
(lex.add.entry '(":" punc nil))
(lex.add.entry '(";" punc nil))
(lex.add.entry '("," punc nil))
;(lex.add.entry '("," nn (((k o1) 1) ((m a) 0))))
(lex.add.entry '("-" punc nil))
(lex.add.entry '("\"" punc nil))
(lex.add.entry '("`" punc nil))
(lex.add.entry '("?" punc nil))
(lex.add.entry '("!" punc nil))
(lex.add.entry '("¡" punc nil))

)

(require 'lts)

;;;  Function called when word not found in lexicon
;;;  and you've trained letter to sound rules
(define (cus_quechua_lts_function word features)
  "(cus_quechua_lts_function WORD FEATURES)
Return pronunciation of word not in lexicon."
  (let (phones syl stresssyl dword weakened  letter)
	(if (lts.in.alphabet word 'quechua_downcase)
		(set! dword (quechua_downcase word))
		(set! dword (quechua_downcase "equis"))
	)
	;(print (length dword))
	(set! phones (lts.apply dword 'quechua))
	;(print phones)	
	(set! syl (lts.apply phones 'quechua_syl))
	;(print syl)
	;; function words leave as is
	(set! stresssyl (lts.apply syl 'quechua.stress))
	;(print stresssyl)	
	(list 	word nil (quechua_tosyl_brackets stresssyl))
  )
)

(define (quechua_downcase word)
  "(quechua_downcase WORD)
Downs case word by letter to sound rules because or accented form
this can't use the builtin downcase function."
  (lts.apply word 'quechua_downcase))

(define (quechua_tosyl_brackets phones)
   "(quechua_tosyl_brackets phones)
Takes a list of phones containing - as syllable boundary.  Construct the
Festival bracket structure."
 (let ((syl nil) (syls nil) (p phones) (stress 0))
    (while p
     (set! syl nil)
     (set! stress 0)
     (while (and p (not (eq? '- (car p))))
       (set! syl (cons (car p) syl))
       (if (string-matches (car p) ".*1")
           (set! stress 1))
       (set! p (cdr p)))
     (set! p (cdr p))  ;; skip the syllable separator
     (set! syls (cons (list (reverse syl) stress) syls)))
    (reverse syls))
 )   


;; utf8 letter based one
;(define (cus_quechua_lts_function word features)
;  "(cus_quechua_lts_function WORD FEATURES)
;Return pronunciation of word not in lexicon."
;  (let ((dword word) (phones) (syls))
;    (set! phones (utf8explode dword))
;    (set! syls (cus_quz_lex_syllabify_phstress phones))
;    (list word features syls)))

(define (cus_quz_is_vowel x)
  (string-equal "+" (phone_feature x "vc")))

(define (cus_quz_contains_vowel l)
  (member_string
   t
   (mapcar (lambda (x) (cus_quz_is_vowel x)) l)))

(define (cus_quz_lex_sylbreak currentsyl remainder)
  "(cus_quz_lex_sylbreak currentsyl remainder)
t if this is a syl break, nil otherwise."
  (cond
   ((not (cus_quz_contains_vowel remainder))
    nil)
   ((not (cus_quz_contains_vowel currentsyl))
    nil)
   (t
    ;; overly naive, I mean wrong
    t))
)

(define (cus_quz_lex_syllabify_phstress phones)
 (let ((syl nil) (syls nil) (p phones) (stress 0))
    (while p
     (set! syl nil)
     (set! stress 0)
     (while (and p (not (cus_quz_lex_sylbreak syl p)))
       (if (string-matches (car p) "xxxx")
           (begin
             ;; whatever you do to identify stress
             (set! stress 1)
             (set syl (cons (car p-stress) syl)))
           (set! syl (cons (car p) syl)))
       (set! p (cdr p)))
     (set! syls (cons (list (reverse syl) stress) syls)))
    (reverse syls)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Lexicon definition
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(lex.create "cus_quechua")

(lex.set.lts.ruleset 'quechua)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;  Down cases with accents
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(lts.ruleset
 quechua_downcase
 ( )
 (
  ( [ a ] = a )
  ( [ c ] = c )
  ( [ e ] = e )
  ( [ h ] = h )
  ( [ i ] = i )
  ( [ k ] = k )
  ( [ l ] = l )
  ( [ m ] =  m )
  ( [ n ] =  n )
  ( [ ñ ] = ñ )
  ( [ o ] =  o )
  ( [ p ] =  p )
  ( [ q ] =  q )
  ( [ r ] =  r )
  ( [ s ] =  s )
  ( [ t ] =  t )
  ( [ u ] =  u )
  ( [ w ] =  w )
  ( [ y ] =  y )
  ( [ "\'" ] = "\'" )
  ( [ : ] = : )
  ( [ ~ ] = ~ )
  ( [ "\"" ] = "\"" )
  ( [ A ] = a )
  ( [ C ] = c )
  ( [ E ] = e )
  ( [ H ] = h )
  ( [ I ] = i )
  ( [ K ] = k )
  ( [ L ] = l )
  ( [ M ] =  m )
  ( [ N ] =  n )
  ( [ Ñ ] =  ñ )
  ( [ O ] =  o )
  ( [ P ] =  p )
  ( [ Q ] =  q )
  ( [ R ] =  r )
  ( [ S ] =  s )
  ( [ T ] =  t )
  ( [ U ] =  u )
  ( [ W ] =  w )
  ( [ Y ] =  y )
 ; Added by RCastro to support Bolivian Quechua
  ( [ j ] = j )
  ( [ J ] = j )
 ; Added by RCastro to support Bolivian Aymara
  ( [ X ] =  x )
  ( [ x ] =  x )
 ; Added by RCastro to quechualize spanish words
  ( [ B ] =  b )
  ( [ b ] =  b )
  ( [ D ] =  d )
  ( [ d ] =  d )
  ( [ F ] =  f )
  ( [ f ] =  f )  
  ( [ G ] =  g )
  ( [ g ] =  g )
  ( [ V ] =  v )
  ( [ v ] =  v )  
  ( [ Z ] =  z )
  ( [ z ] =  z )    
 ; Added by RCastro to support utf-8
  ( [ Á ] = a )  
  ( [ É ] = e )  
  ( [ Í ] = i )  
  ( [ Ó ] = o )  
  ( [ Ú ] = u )  
  ( [ á ] = a )  
  ( [ é ] = e )  
  ( [ í ] = i )  
  ( [ ó ] = o )  
  ( [ ú ] = u )  
  ( [ Ü ] = u )  
  ( [ ü ] = u ) 
))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;   Main letter to sound rules
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(lts.ruleset
;  Name of rule set
 quechua
;  Sets used in the rules
(
  (V a e i o u )
  (C b c d f g h j k l m n ñ ~ p q r s t v w x y z )
)
;  Rules
(
 
 ( [ a ] = a )
 ( [ c h k ] = sh )  
 ( [ c h h ] = chh )
 ( [ c h "'" ] = chx )
 ( [ c h ] = ch )
 ( [ e ] = e )
 ( [ i ] = i )
 ( [ k h ] = kh )
 ( [ k "'" ] = kx )
 ( [ k ] = k )
 ( [ l l ] = L )
 ( [ l ] = l )
 ( [ m ] =  m )
 ( [ "~" n ] = N )
 ( [ n ] =  n )
 ( [ o ] =  o )
 ( [ p h ] =  ph )
 ( [ p "'" ] =  px )
 ( [ p ] =  p )
 ( [ q h ] =  qh )
 ( [ q "'" ] =  qx )
 ( [ q ] =  q )
 ( [ r ] =  r )
 ( [ s h ] =  sh )
 ( [ s ] =  s )
 ( [ t h ] =  th )
 ( [ t "'" ] =  tx )
 ( [ t ] =  t )
 ( [ u ] =  u )
 ( [ w ] =  w )
 ( [ y ] =  y )
 ( [ h ] = h )
 ; quotes are used for vowel accents in foreign keyboards (i.e. cami'on).
  ; remove those that were not before a vowel. same with other signs.
 ( [ "'" ] = )  
 ( [ ":" ] = )  
 ( [ "\"" ] = )  
; ( [ "~" ] = )  
 ( [ "-" ] = )  
 ; Added by RCastro 08/11/2012
 ; Varieties of trivocalic Bolivian quechua
 ( [ j ] a = h )  
 ( [ j ] e = h )  
 ( [ j ] i = h )  
 ( [ j ] o = h )  
 ( [ j ] u = h )  
 ( a [ j ] = q )  
 ( e [ j ] = q )  
 ( i [ j ] = q )  
 ( o [ j ] = q )  
 ( u [ j ] = q )  
 ( q [ u ] =  o )  
 ( q [ i ] =  e )  
 ( [ u ] q =  o )  
 ( [ i ] q =  e )  
 ( q h [ u ] =  o )  
 ( q h [ i ] =  e )  
 ( q "'" [ u ] =  o )  
 ( q "'" [ i ] =  e )  

 ; Varieties of Aymara
 ( [ x ] a = h )  
 ( [ x ] e = h )  
 ( [ x ] i = h )  
 ( [ x ] o = h )  
 ( [ x ] u = h )  
 ( a [ x ] = q )  
 ( e [ x ] = q )  
 ( i [ x ] = q )  
 ( o [ x ] = q )  
 ( u [ x ] = q )  
 ; UTF8
 ( [ g ] = k )
 ( [ ñ ] = N )
 ; Added by RCastro to support utf-8
 ( [ á ] = a1 )  
 ( [ é ] = e1 )  
 ( [ í ] = i1 )  
 ( [ ó ] = o1 )  
 ( [ ú ] = u1 )  
 ( [ ü ] = u )  
 ; to support texts written in a wrong way
 ( [ c ] = k )  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;   letter to sound rules for Quechualization of spanish words
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 ; Added by RCastro 08/11/2012
 ; Quechualization of Spanish words
 ; Diphthongs: 
 ; ae -> ayi, (ai -> ai), ao -> aw, au -> aw
 ; (ea -> ea), eí -> iyi ,eo -> iyu, eu -> iw,
 ; ía -> iya, ia->ya, ie ->i,  ió -> yiu, io -> yu
 ; ua -> wa, ue -> uwi, cpt_ue ->wi 
 ;( [ a e ] = a y i )  
 ;( [ a i ] = a i )  
 ( a [ o ] = w )  
 ( a [ u ] = w )  
 ;( [ e a ] = e a )  
 ;( [ e i i ] = i y i )  
 ;( [ e o ] = i y u )  
 ;( [ e u ] = i w )  
 ;( [ i i a ] = i y a )  
 ;( [ i a ] = y a )  
 ;( [ i e ] = i )  
 ;( [ i o o ] = y i u )  
 ;( [ i o ] = y u )  
 ;( [ u ] a = w )  
 ;( [ b u e ] = w i)  
 ;( # c [ u e ] = w i)  ;encuentro -> enkuwintru
 ;( # p [ u e ] = w i)  ;puente -> pwinte
 ;( # t [ u e ] = w i)  ;atuendo -> atwintu
 ;( c [ u e ] = u w i)  ;cuervo -> kuwirwo
 ;( p [ u e ] = u w i)  ;puente -> puwinte
 ;( t [ u e ] = u w i)  ;tuerca -> tuwirka
 ;( [ o ] = u )  
 ;( [ o o ] = u )  
 ;( [ u u ] = u )  
 ;( [ e ] = i)  
 ;( [ e e ] = i)  
 ;( [ i i ] = i)  
 ( [ r r ] = r )  
 ( [ r z ] = s )  
 ( [ d r ] = r )  
 ( [ q u ] = k )  
 ( [ c ] e = s )  
 ( [ c ] i = s )  
 ( [ c ] y = s )  
; ( [ c ] i i = s )  
; ( [ c ] e e = s )  
; ( # [ c ] e = k )  
; ( # [ c ] i = k )  
; ( # [ c ] y = k )  
; ( # [ c ] i i = k )  
; ( # [ c ] e e = k )  
; ( # [ c ] h = k )  
 ( [ c ] a = k )  
 ( [ c ] o = k )  
 ( [ c ] u = k )  
 ( [ c ] r = k )  
 ( [ c ] t = k )  
 ( [ c ] l = k )  
 ( [ c ] m = k )  
 ( [ c ] n = k )  
 ( [ c ] ñ = k )  
 ( [ c ] p = k )  
 ( [ d ] = t )   
 ( [ z ] = s )  
 ( [ f ] = ph )  
 ( [ g ] e = h )  
 ( [ g ] i = h )  
 ( [ g ] y = h )  
 ( [ g ] i i = h )  
 ( [ g ] a = h )  
 ( [ g ] o = k )  
 ( [ g ] u = k )  
 ( [ g ] r = k ) 
 ( [ v ] = w )  
 ( [ b ] = w )  
; ( a [ r ] = y )  
; ( e [ r ] = y )  
; ( i [ r ] = y )  
; ( a [ r ] = y )  
; ( e [ r ] = y )  
; ( i [ r ] = y )  
))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  quechua sylabification by rewrite rules
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(lts.ruleset
   quechua_syl
   (  (V a i u e o a1 e1 i1 o1 u1 )
      (C ch chh chx h k kh kx l L m n N p ph px q qh qx r s sh chk t th tx w y )
   )
   ;; Rules will add - at syllable boundary
   (

      ;; If any consonant is followed by a vowel and there is a vowel
      ;; before it, its a syl break
      ;; the consonant cluster are dealt with above
	  
      ( V C * [ ch ] V = - ch )
      ( V C * [ chh ] V = - chh )
	  ( V C * [ chx ] V = - chx )
	  ( V C * [ h ] V = - h )
	  ( V C * [ k ] V = - k )
	  ( V C * [ kh ] V = - kh )
	  ( V C * [ kx ] V = - kx )
	  ( V C * [ l ] V = - l )
	  ( V C * [ L ] V = - L )
	  ( V C * [ m ] V = - m )
	  ( V C * [ n ] V = - n )
	  ( V C * [ N ] V = - N )
	  ( V C * [ p ] V = - p )
	  ( V C * [ ph ] V = - ph )
	  ( V C * [ px ] V = - px )
	  ( V C * [ q ] V = - q )
	  ( V C * [ qh ] V = - qh )
	  ( V C * [ qx ] V = - qx )
	  ( V C * [ r ] V = - r )
	  ( V C * [ s ] V = - s )
	  ( V C * [ sh ] V = - sh )
	  ( V C * [ chk ] V = - chk ) ; Added by RCastro 12/11/2012
	  ( V C * [ t ] V = - t )
	  ( V C * [ th ] V = - th )
	  ( V C * [ tx ] V = - tx )
	  ( V C * [ w ] V = - w )
	  ( V C * [ y ] V = - y )

      ;; Catch all consonants on their own (at end of word)
      ;; and vowels not preceded by vowels are just written as it
      ( [ ch ] = ch )
	  ( [ chh ] = chh )
	  ( [ chx ] = chx )
	  ( [ h ] = h )
	  ( [ k ] = k )
	  ( [ kh ] = kh )
	  ( [ kx ] = kx )
	  ( [ l ] = l )
	  ( [ L ] = L )
	  ( [ m ] = m )
	  ( [ n ] = n )
	  ( [ N ] = N )
	  ( [ p ] = p )
	  ( [ ph ] = ph )
	  ( [ px ] = px )
	  ( [ q ] = q )
	  ( [ qh ] = qh )
	  ( [ qx ] = qx )
	  ( [ r ] = r )
	  ( [ s ] = s )
	  ( [ sh ] = sh )
	  ( [ chk ] = sh )  ; Added by RCastro 12/11/2012
	  ( [ t ] = t )
	  ( [ th ] = th )
	  ( [ tx ] = tx )
	  ( [ w ] = w )
	  ( [ y ] = y )
	  ( [ a ] = a )
	  ( [ e ] = e )
	  ( [ i ] = i )
	  ( [ o ] = o )
	  ( [ u ] = u )
   )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;  Stress assignment in unstress words by rewrite rules
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(lts.ruleset
 ;; Assign stress to a vowel when non-exists
 quechua.stress
 (
	(V a i u e o )
	(C ch chh chx h k kh kx l L m n N p ph px q qh qx r s sh chk t th tx w y )  ; Modified by RCastro 12/11/2012
	(VC a i u e o ch chh chx h k kh kx l L m n N p ph px q qh qx r s sh chk t th tx w y ) ; Modified by RCastro 12/11/2012
	(ANY a i u e o ch chh chx h k kh kx l L m n N p ph px q qh qx r s sh chk t th tx w y - ) ; Modified by RCastro 12/11/2012
  )
 (
  ;; consonants to themselves
  ( [ ch ] = ch )
  ( [ chh ] = chh )
  ( [ chx ] = chx )
  ( [ h ] = h )
  ( [ k ] = k )
  ( [ kh ] = kh )
  ( [ kx ] = kx )
  ( [ l ] = l )
  ( [ L ] = L )
  ( [ m ] = m )
  ( [ n ] = n )
  ( [ N ] = N )
  ( [ p ] = p )
  ( [ ph ] = ph )
  ( [ px ] = px )
  ( [ q ] = q )
  ( [ qh ] = qh )
  ( [ qx ] = qx )
  ( [ r ] = r )
  ( [ s ] = s )
  ( [ sh ] = sh )
  ( [ chk ] = chk )   ; Added by RCastro 12/11/2012
  ( [ t ] = t )
  ( [ th ] = th )
  ( [ tx ] = tx )
  ( [ w ] = w )
  ( [ y ] = y )
  ( [ - ] = - )
  ;; stressed vowels to themselves
  ( [ a1 ] = a1 )
  ( [ e1 ] = e1 )
  ( [ i1 ] = i1 )
  ( [ u1 ] = u1 )
  ( [ o1 ] = o1 )
  
  ;; stress on previous syllable (paroxitona)
  ( [ a ] VC * - VC * # = a1 )
  ( [ e ] VC * - VC * # = e1 )
  ( [ i ] VC * - VC * # = i1 )
  ( [ o ] VC * - VC * # = o1 )
  ( [ u ] VC * - VC * # = u1 )
  
  ;;; vowels
  ( [ a ] = a )
  ( [ e ] = e )
  ( [ i ] = i )
  ( [ o ] = o )
  ( [ u ] = u )
  
))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; OR: Hand written letter to sound rules
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; ;;;  Function called when word not found in lexicon
; (define (cus_quz_lts_function word features)
;   "(cus_quz_lts_function WORD FEATURES)
; Return pronunciation of word not in lexicon."
;   (format stderr "failed to find pronunciation for %s\n" word)
;   (let ((dword (downcase word)))
;     ;; Note you may need to use a letter to sound rule set to do
;     ;; casing if the language has non-ascii characters in it.
;     (if (lts.in.alphabet word 'cus_quz)
; 	(list
; 	 word
; 	 features
; 	 ;; This syllabification is almost certainly wrong for
; 	 ;; this language (its not even very good for English)
; 	 ;; but it will give you something to start off with
; 	 (lex.syllabify.phstress
; 	   (lts.apply word 'cus_quz)))
; 	(begin
; 	  (format stderr "unpronouncable word %s\n" word)
; 	  ;; Put in a word that means "unknown" with its pronunciation
; 	  '("nepoznat" nil (((N EH P) 0) ((AO Z) 0) ((N AA T) 0))))))
; )

; ;; You may or may not be able to write a letter to sound rule set for
; ;; your language.  If its largely lexicon based learning a rule
; ;; set will be better and easier that writing one (probably).
; (lts.ruleset
;  cus_quz
;  (  (Vowel WHATEVER) )
;  (
;   ;; LTS rules 
;   ))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Postlexical Rules 
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (cus_quechua::postlex_rule1 utt)
  "(cus_quz::postlex_rule1 utt)
A postlexical rule form correcting phenomena over word boundaries."
  (mapcar
   (lambda (s)
     ;; do something
     )
   (utt.relation.items utt 'Segment))
   utt)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Lexicon definition part 2
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(lex.set.phoneset "cus_quechua")
(lex.set.lts.method 'cus_quechua_lts_function)
;;;(if (probe_file (path-append cus_quz_gui::dir "festvox/cus_quz_lex.out"))
;;;    (lex.set.compile.file (path-append cus_quz_gui::dir 
;;;                                       "festvox/cus_quz_lex.out")))
(cus_quechua_addenda)

(provide 'cuslex_quechua)
