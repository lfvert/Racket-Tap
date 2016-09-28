;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname |Final Project|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp")))))
;Racket Tap
;By Liam Schmid, Megan Pieczynski, Jounghee Kim, Luis Verastegui

(require rsound)
(define (both a b ) b )
;scene constants------------------------------
(define WIDTH 1000)
(define HEIGHT 500)
;----------List for songs------------------------------------------------------------------ 
;Song 1 list ----------------------------------------------------------------------- 

;left1 is a list of notes for the left key
(define left1 (list 0 -90 -190 -450 -560 -670 -900 -1210 -1420 -1520 -1820 -2120 -2420 -2720 -3020 -3320 -3520 -3620 -3920 -4220 -4520 -4820 -5120 -5500 -5600 -5700 -5800 -5900 -6000 -6100 -6200 -6300 -6400 -6500 -6600 -6700 -6800 -6900 -7000 -7100 -7200 -7300 -7400 -7500 -7550 -7700 -7850 -8000 -8150 -8300 -8420 -8720 -9020 -9320 -9620 -9920 -10300 -10400 -10500 -10600 10620 -10700 -10800 -10900 -11000 -11040 -11200 -11300 -11400 -11500 -11600))
              
;down1 is a list of notes for the down key
(define down1  (list -970 -1500 -1600 -1800 -1900 -2100 -2200 -2400 -2500 -2700 -2800 -3000 -3100 -3300 -3400 -3500 -3700 -3900 -4000 -4200 -4300 -4500 -4600 -4800 -4900 -5100 -5200 -5400 -5650 -5850 -6050 -6250 -6450 -6650 -6850 -7050 -7250 -7450 -7600 -7750 -7900 -8050 -8200 -8350 -8400 -8500 -8700 -8800 -9000 -9100 -9300 -9400 -9600 -9700 -9900 -10000 -10200 -10660 -11020 -11550 -11700))

;right1 is a list of notes for the right key
(define right1  (list -1050  -1680  -1980  -2280  -2580  -2880  -3180  -3480  -3780 -4080 -4380  -4680  -4980  -5280  -5500  -5600  -5700  -5800  -5900 -6000  -6100  -6200  -6300  -6400  -6500  -6600  -6700  -6800  -6900  -7000  -7100  -7200  -7300  -7400  -7500  -7650  -7800  -7950 -8100  -8250  -8400  -8580  -8880  -9180  -9480  -9780  -10080  -10400 -10500 -10600 -10640 -10700 -10800 -10900 -11000 -11060 -11200 -11300 -11400 -11500 -11650))

;Song 2 list

;left2 is a list of notes for the left key
(define left2 (list -260 -560 -660 -960 -1060 -1360 -1460 -1760 -1860 -2300 -2800 -3340 -3870 -4400 -5200 -5350 -5400 -5500 -5590 -5680 -5770 -5860 -5950 -6040 -6130 -6220 -6310 -6400 -6490 -6580 -6670 -6760 -6850 -6940 -7030 -7120 -7210 -7300 -7390 -7480 -7570 -7660 -7750 -7840 -7930 -8290 -8360 -8510 -8630 -8730 -8980 -9220 -9450 -9550 -9580 -9810 -9870 -10000 -10190 -10270 -10300 -10540 -10780 -11020 -11260 -11500 -11740 -12150 -12440 -12740 -12840 -13140 -13240 -13540 -13640 -13940 -14000 -14150 -14200 -14300 -14400 -14500 -14600 -14700 -14800 -14900 -15000 -15100 -15200 -15300 -15400 -15500 -15550 -15600 -15650 -15700 -15800 -15900 -16000 -16100 -16200 -16300 -16400 -16500 -16700 -16800 -17150 -17450 -17600 -17750 -17900 -18050 -18200 -18350 -18500 -18650 -18800 -18950 -19100 -19250 -19300 -19400 -19500 -19600 -19700 -19800 -19900 -20000 -20100 -20200 -20300 -20400 -20500 -20600 -20700 -20800 -20900 -21000 -21100 -21200 -21300 -21400 -21500 -21600 -21700 -21800 -21900 -22000 -22100 -22150 -22300 -22400 -22500 -22600 -22700 -22800 -22900 -23000 -23100 -23200 -23300 -23400 -23500 -23550 -23700 -23850 -24000 -24300 -24400 -24500 -24560 -24620 -24680 -24750))

;down2 is a list of notes for the down key
(define down2 (list -340 -740 -1140 -1540 -1900 -2330 -2390 -2830 -2900 -3370 -3430 -3900 -3960 -4430 -4970 -5800 -6070 -6340 -6610 -6880 -7150 -7420 -7690 -7960 -8020 -8080 -8140 -8200 -8260 -8410 -8450 -8490 -8570 -8610 -8790 -8920 -9040 -9160 -9280 -9400 -9610 -9840 -9900 -10030 -10160 -10210 -10360 -10480 -10600 -10720 -10840 -10960 -11080 -11200 -11320 -11440 -11560 -11680 -11800 -11920 -12020 -12060 -12100 -12520 -12920 -13320 -13720 -14230 -14330 -14430 -14530 -14630 -14730 -15030 -15330 -15580 -15830 -16130 -16430 -16920 -17040 -17270 -17390 -17500 -17650 -17800 -17950 -18100 -18250 -18400 -18550 -18700 -18850 -19000 -19150 -19350 -19550 -19750 -19950 -20150 -20350 -20550 -20750 -20950 -21150 -21350 -21550 -21750 -21950 -22150 -22200 -22350 -22450 -22550 -22650 -22700 -22800 -22900 -23050 -23150 -23250 -23350 -23450 -23600 -23750 -23900 -24200 -24800 -24900 -25000 -25100 -25200))

;right2 is a list of notes for the right key
(define right2 (list -460  -860  -1260  -1660  -1940  -2360  -2870  -3400  -3930  -4460  -5200  -5350  -5400  -5500  -5590  -5680  -5770  -5860  -5950 -6040  -6130 -6220  -6310  -6400  -6490  -6580  -6670  -6760  -6850  -6940  -7030  -7120  -7210  -7300  -7390  -7480  -7570  -7660  -7750  -7840  -7930 -8290  -8360  -8510  -8630  -8860  -9100 -9340 -9450  -9550  -9580  -9810  -9870  -10060  -10270  -10420  -10660  -10900  -11140  -11380  -11620  -11860 -12150  -12640  -13040  -13440  -13840  -14000  -14150  -14200  -14300  -14400  -14500  -14600 -14700  -14800 -14900 -15000 -15100 -15200 -15300  -15400 -15500  -15550  -15600  -15650  -15700  -15800  -15900  -16000  -16100  -16200  -16300  -16400  -16500  -16980 -17330 -17550 -17700 -17850 -18000 -18150 -18300  -18450  -18600  -18750  -18900  -19050  -19200  -19250  -19300  -19400  -19500  -19600  -19700  -19800 -19900 -20000 -20100 -20200 -20300 -20400 -20500  -20600  -20700  -20800  -20900  -21000  -21100  -21200  -21300  -21400  -21500  -21600  -21700  -21800 -21900 -22000 -22200 -22250 -22300 -22400 -22500  -22600  -22700  -22800  -22900  -23500  -23650  -23800  -23950  -24000  -24300  -24400  -24500  -24560 -24620 -24680))

;Song 3 list

;left3 is a list of notes for the left key
(define left3 (list 180 120 60 0 -60 -120 -180 -240 -300 -1680 -1740 -1800 -2220 -2280 -2580 -2640 -2700  -3000 -3240 -3300 
-3360 -3420  -3540 -3600 -3660 -3780 -3840 -4380 -4440 -4500 -4560  -6000 -6060 -6120 -6180 -6240 -6300 -6360 -6420 -6480 
-6540 -6600 -6660 -6720 -6780 -7320 -7380 -7440 -7560 -7800 -7860 -7920 -7980 -8040 -8100 -8160 -8220 -8280 -8340 -8400 
-8460 -8520 -8580 -8640 -8700 -8760 -8820 -8880 -8940  -10560 10680  -10920 -10980  -11220 -11280 -11340 -11400 -11460 
-11520 -11580 -11640 -11700 -11760 -11820 -11880 -11940 -12000 -12060  -12180 -12240 -12300 -12360 -12420 -12480 -12540
-12600  -13260 -13920 -13980 -14040 -14100 -14160 -14220 -14280 -14340 -14400 -14460 -14520 -14580 -14640 -14700 -14760 -14820
-15660 -15720 -15780 -15840 -15900 -16020 -16080 -16140 -16200 -16260 -16320 -16380 -16440 -16500 -16560 -16620))

;down3 is a list of notes for the down key
(define down3 (list 180 120 60 0 -60 -120 -180 -240 -300 -360 -420 -480 -540 -600 -1440 -1500 -1560 -1620 -2520 -2580 
-2640 -2700 -2760 -2820 -2880 -3060 -3180 -3360 -3660 -3720 -3780 -4260 -4500 -4860 -5400 -5460 -5520 -5580 -5640 -5700 
-6000 -6060 -6120 -6180 -6240 -6300 -6360 -6420 -6480 -6540 -600 -6660 -6720 -6780 -7800 -7860 -7920 -8700 -8820 -8940 
-9000 -9060 -9120 -9180 -9240 -9300 -9360 -9240 -9540 -9600 -9660 -9720 -9780 -9840  -10920 -10980 -11340 -11400 -12180 
-12300 -12360  -12660 -12780 -13140 -13200 -13260   -14040  -14160  -14280  -14400 -14460 -14700 -15120 -15180 -15240 
-15300 -15360 -15420 -15480 -16680))

;right3 is a list of notes for the right key
(define right3 (list  180 120 60 0 -60 -120 -180 -240 -300 -360   -1290  -1530  -1590   -1680  -1740 -1860   -2130  -2250
-2460 -2550 -2670 -2700  -2760  -2820 -2910 -3120 -3900 -3960 -4020 -4080 -4140 -4200 -4260 -4320  -4920 -5040 -5100  -5220  -5280
-5340 -5400 -5460 -5520 -5580 -5640 -5700 -5760 -5820 -5880 -5940 -6000 -6960  -7080 -7140 -7320 -7380 -7440 -7560 -7800 -7860 -7920
-7980 -8040 -8100 -8160 -8220 -8280 -8340 -10740 -10860 -11100 -11160 -13290 -13410 -13530 -13770  -15900 -16020 -16080 -16140 -16200
-16260 -16320 -16380 -16440 -16500 -16740))

;Song 4 list

;left4 is a list of notes for the left key
(define left4 (list -430 -1085 -1115 -1410 -2134 -2201 -2501 -3137 -3204 -3504 -3850 -4100 -4325 -4600 -4675 -4900 -5050 -5150 -5250
-5300 -5500 -5700 -5900 -6000 -6150 -6325 -6475 -6550 -6700 -6900 -7025 -7300 -7500 -7700 -7725 -8100 -8250 -8300 -8400 -8500 -8550 
-8650 -8800 -9000 -9200 -9250 -9350 -9450 -9700 -9750 -9850 -9950 -10150 -10250 -10350 -10400 -10500 -10600 -10700 -10800 -10950 
-11175 -11400 -11475 -11600 -11750 -11800 -12025 -12575 -12775 -12925 -13150 -13250 -13350 -13550 -13700 -13800 -13950 -14100 -14150 
-14250 -14700 -14750 -14900 -14950 -15025 -15100 -15275 -16200 -16340 -16640 -16850 -17080 -17150 -17640 -17850))

;down4 is a list of notes for the down key
(define down4 (list -505 -1025 -1345 -1525 -2067 -2568 -3069 -3384 -3571 -3750 -4500 -4600 -4800 -4975 -5000 -5200 -5350 -5450 -5550 -5650 -5750 
-5850 -5950 -6000 -6075 -6225 -6550 -6625 -6775 -6950 -7025 -7075 -7350 -7425 -7500 -7800 -7825 -8000 -8050 -8250 -9300 -9400 -9600 -9650 -9800 
-10000 -10050 -10200 -10250 -10300 -11025 -11100 -11400 -11475 -11875 -12500  -12700 -13100 -13500 -13600 -13750 -13900 -14000 -14100 -14200 -14300 
-14600 -14850 -15000 -15250 -15325 -16270 -16410 -16640 -16710 -16780 -17270 -17780 -18150 -18220 -18290 -18360))

;right4 is a list of notes for the right key
(define right4 (list -580 -655 -958 -1610 -1675 -2000 -2635 -2702 -3002 -3638 -3705 -4025 -4250 -4500 -4675 -4900 -5100 -5250 -5400 -5600 -5800
-6075 -6150 -6325 -6475 -6625 -6700 -6900 -7075 -7300 -7425 -7750 -7775 -8050 -8100 -8300 -8400 -8500 -8600 -8700 -8750 -8850 -8900 -8950 -9500 
-9550 -9750 -9900 -10100 -10200 -10300 -10350 -10400 -10500 -10700 -10800 -10875 -11175 -11675  -11925 -11975 -12100 -12625 -12850 -13000 -13200
-13300 -13400 -13550 -13700 -13800 -13950 -14150 -14200 -14250 -14700 -14750 -14800 -14950 -14975 -15100 -15300 -16200 -16340 -16710 -16850 -17080 
-17340 -17640 -17710))

;Begin main---------------------------------------------------------------------------------------------------

;A world state is one of 
;1) An image containg the background image for a specific song
;2) a struc which contains the 3 lists of the y values, the points, the list of combo, and the current song playing 

;the structure is one of the 3 lists of y values(left note, down note, right note), the points, the list of combo values, 
;and a string of song titles
(define-struct struc [yl yd yr points combo song])

;Initial main menu world is an image background for one of the songs
; We selected "rain" to be the image background for the initial main menu
;from there you can switch to a different song 
;Intial Game World for song1
;starts the song at zero points with a zero combo
(define world1 (make-struc left1 down1 right1 0 0 "song1"))
;Initial Game World for song2
(define world2  (make-struc left2 down2 right2 0 0 "song2"))
;Initial Game World for song3
(define world3 (make-struc left3 down3 right3 0 0 "song3"))
;Initial Game world for song4
(define world4 (make-struc left4 down4 right4 0 0 "song4"))

;song constants and pstream
;defines song name as the corresponding wave file
(define ps (make-pstream))
(define norain (rs-read "./no rain.wav"))
(define unwritten (rs-read "./unwritten.wav"))
(define levels (rs-read "./levels av.wav"))
(define su (rs-read "./su.wav"))

; visual constants:
;defines the image background for each song
(define galaxy (bitmap "./galaxy.jpg"))
(define rain (bitmap "./rain.jpg"))
(define sun (bitmap "./sun.jpg"))
(define beach (bitmap "./beach.jpg"))

;scene for main game image background for each song
(define scene1 (add-line (add-line (add-line rain 400 0 400 500 "black") 500 0 500 500 "black") 600 0 600 500 "black"))
(define scene2 (add-line (add-line (add-line sun 400 0 400 500 "black") 500 0 500 500 "black") 600 0 600 500 "black"))
(define scene3 (add-line (add-line (add-line galaxy 400 0 400 500 "black") 500 0 500 500 "black") 600 0 600 500 "black"))
(define scene4 (add-line (add-line (add-line beach 400 0 400 500 "black") 500 0 500 500 "black") 600 0 600 500 "black"))

;scene for active multiplier     
;when combo reaches 25 the multiplier comes
;into effect and adds colors to the lines
(define sceneM1 (add-line (add-line (add-line rain 400 0 400 500 "red") 500 0 500 500 "green") 600 0 600 500 "blue"))
(define sceneM2 (add-line (add-line (add-line sun 400 0 400 500 "red") 500 0 500 500 "green") 600 0 600 500 "blue"))
(define sceneM3 (add-line (add-line (add-line galaxy 400 0 400 500 "red") 500 0 500 500 "green") 600 0 600 500 "blue"))
(define sceneM4 (add-line (add-line (add-line beach 400 0 400 500 "red") 500 0 500 500 "green") 600 0 600 500 "blue"))

;defines the note circles 
;and hit circle outline
;0-1-2 are left down right respectively
;red circle corresponds with left key
;green circle corresponds with down key
;blue circle corresponds with right key
;3 is outline where note is hit
(define cir
   (circle 20 "solid" "red"))
(define cir1
   (circle 20 "solid" "green"))
(define cir2
   (circle 20 "solid" "blue"))
(define cir3
  (circle 21 "outline" "white"))

;big bang for main menu and main game
(define (main w)
  (big-bang w
  [on-tick nxt]
  [to-draw mainr]
  [on-mouse mouse]
  [on-key hit]))

;Drawing of main menu
;draw function for main menu
(define (mainr w)
  (cond
    [(image? w)
  (place-image (rectangle 550 110 "outline" "white") 500 150
  (place-image (text "Racket Tap" 100 "white") 500 150 
  (place-image (text "Single Player" 60 "white") 500 250
  (place-image (text "song switch" 40 "white") 500 300
  (place-image (text "Instructions" 30 "white") 500 350
  (place-image (text (songc w) 30 "white") 500 450 w))))))]
    [else (render w)]))

;used in mainr to decide which song is being used based on image displayed in the background
(define (songc w)
  (cond
    [(image=? w rain) "No rain - Blind Melon"]
    [(image=? w sun) "Unwritten - Natasha Bedingfield"]
    [(image=? w galaxy) "Levels - Avicii"]
    [(image=? w beach) "Sunshine - Atmosphere"]
    [else "unknown"]))


;Draw function for the instructions
(define (instr w)
  (place-image (text "instructions" 30 "White") 500 50
  (place-image (text "Left arrow for left note" 20 "white") 500 100 
  (place-image (text "Right arrow for right note" 20 "white") 500 150 
  (place-image (text "Down arrow for middle note" 20 "white") 500 200 w)))))

;separate big bang for the instructions window
(define (inst w)
  (big-bang w
  [to-draw instr]
  ))

;mouse handler for main menu-------------------------------------------------------
;has buttons to:
;start game
;change song/BG
;Open Instructions
(define (mouse w x y me)
  (cond [(image? w)
  (cond[(and (image=? w rain) (and (mouse=? "button-down" me) (and (and (> x 400) (< x 600)) (and (> y 220) (< y 280))))) 
        (both (pstream-queue ps norain (+ 60000(pstream-current-frame ps))) world1)]
      [(and (image=? w sun) (and (mouse=? "button-down" me) (and (and (> x 400) (< x 600)) (and (> y 220) (< y 280))))) 
       (both (pstream-queue ps unwritten (+ 60000(pstream-current-frame ps))) world2)]
      [(and (image=? w galaxy) (and (mouse=? "button-down" me) (and (and (> x 400) (< x 600)) (and (> y 220) (< y 280))))) 
        (both (pstream-queue ps levels (+ 62500(pstream-current-frame ps))) world3)]
      [(and (image=? w beach) (and (mouse=? "button-down" me) (and (and (> x 400) (< x 600)) (and (> y 220) (< y 280))))) 
        (both (pstream-queue ps su (+ 11000 (pstream-current-frame ps))) world4)]
       [(and (image=? w rain) (and (mouse=? "button-down" me) (and (< 400 x 600) (< 280 y 320))))  sun]
       [(and (image=? w sun) (and (mouse=? "button-down" me) (and (< 400 x 600) (< 280 y 320))))  galaxy]
       [(and (image=? w galaxy) (and (mouse=? "button-down" me) (and (< 400 x 600) (< 280 y 320))))  beach]
       [(and (image=? w beach) (and (mouse=? "button-down" me) (and (< 400 x 600) (< 280 y 320))))  rain]
       [(and (mouse=? "button-down" me) (and (and (> x 400) (< x 600)) (and (> y 335) (< y 365)))) (both w (inst w))]
       [else w])]
        [else w]
  ))

;;On tick-------------------------------------------------------------
 ; WorldState -> WorldState
; computes next location of note/circle coming down
(define (nxt w)
  (cond [(image? w) w]
        [(and (empty? (struc-yl w)) (empty? (struc-yd w)) (empty? (struc-yr w))) rain]
        [(and (< 0 (length (struc-yl w))) (and (< 0 (length (struc-yd w))) (< 0 (length (struc-yr w))))) 
         (cond 
           [(and (< 500 (first (struc-yl w))) (and (< 500 (first (struc-yd w))) (< 500 (first (struc-yr w))))) 
            (combokiller w)]
           [(and (< 500 (first (struc-yl w))) (< 500 (first (struc-yd w)))) 
            (combokiller w)]
           [(and (< 500 (first (struc-yl w))) (< 500 (first (struc-yr w)))) 
            (combokiller w)]
           [(and (< 500 (first (struc-yd w))) (< 500 (first (struc-yr w)))) 
            (combokiller w)]
           [(< 500 (first (struc-yl w))) 
            (combokiller w)]
           [(< 500 (first (struc-yd w))) 
            (combokiller w)]
           [(< 500 (first (struc-yr w))) 
            (combokiller w)]
           [else
            (make-struc (add-sevl (remove-big (struc-yl w))) (add-sevd (remove-big (struc-yd w))) (add-sevr (remove-big(struc-yr w))) (struc-points w) (struc-combo w) (struc-song w))])]
        [(and (< 0 (length (struc-yl w))) (< 0 (length (struc-yd w))))
         (cond 
           [(and (< 500 (first (struc-yl w))) (< 500 (first (struc-yd w)))) 
            (combokiller w)]
           [(< 500 (first (struc-yl w))) 
            (combokiller w)]
           [(< 500 (first (struc-yd w))) 
            (combokiller w)]
           [else
            (make-struc (add-sevl (remove-big (struc-yl w))) (add-sevd (remove-big (struc-yd w))) (struc-yr w) (struc-points w) (struc-combo w) (struc-song w))])]
        [(and (< 0 (length (struc-yl w))) (< 0 (length (struc-yr w))))
         (cond 
           [(and (< 500 (first (struc-yl w))) (< 500 (first (struc-yr w)))) 
            (combokiller w)]
           [(< 500 (first (struc-yl w))) 
            (combokiller w)]
           [(< 500 (first (struc-yr w))) 
            (combokiller w)]
           [else
            (make-struc (add-sevl (remove-big (struc-yl w))) (struc-yd w) (add-sevr (remove-big (struc-yr w))) (struc-points w) (struc-combo w) (struc-song w))])]
        [(and (< 0 (length (struc-yd w))) (< 0 (length (struc-yr w))))
         (cond 
           [(and (< 500 (first (struc-yd w))) (< 500 (first (struc-yr w)))) 
            (combokiller w)]
           [(< 500 (first (struc-yd w))) 
            (combokiller w)]
           [(< 500 (first (struc-yr w))) 
            (combokiller w)]
           [else
            (make-struc (struc-yl w) (add-sevd (remove-big (struc-yd w))) (add-sevr (remove-big (struc-yr w))) (struc-points w) (struc-combo w) (struc-song w))])]
        [(< 0 (length (struc-yl w)))
         (cond 
           [(< 500 (first (struc-yl w))) 
            (combokiller w)]
           [else
             (make-struc (add-sevd (remove-big (struc-yl w))) (struc-yd w) (struc-yr w) (struc-points w) (struc-combo w) (struc-song w))])]
        [(< 0 (length (struc-yd w)))
         (cond 
           [(< 500 (first (struc-yd w))) 
            (combokiller w)]
           [else
            (make-struc (struc-yl w) (add-sevd (remove-big (struc-yd w))) (struc-yr w) (struc-points w) (struc-combo w) (struc-song w))])]
        [(< 0 (length (struc-yr w)))
         (cond 
           [(< 500 (first (struc-yr w))) 
            (combokiller w)]
           [else
            (make-struc (struc-yl w) (struc-yd w) (add-sevd (remove-big (struc-yr w))) (struc-points w) (struc-combo w) (struc-song w))])]))

;add-sev used to add seven to y value and move it down the grid in the on-tick function
;3 functions each for their respective list left, down, and right
(define (add-sevl w)
  (cond [(empty? w) empty]
        [else (cons (+ (first w) 7)
                    (add-sevl (rest w)))]))
(define (add-sevd w)
  (cond [(empty? w) empty]
        [else (cons (+ (first w) 7)
                    (add-sevd (rest w)))]))
(define (add-sevr w)
  (cond [(empty? w) empty]
        [else (cons (+ (first w) 7)
                    (add-sevr (rest w)))]))

;Checks if value is too big
;if it's too big for the screen it will remove it from the list
;in order to be able to check next value used in on-tick function
(define (remove-big w)
  (cond [(empty? w) empty]
        [else (cond [(> 500 (first w))
                     (cons (first w)
                           (remove-big (rest w)))]
                    [else (remove-big (rest w))])]))

;;kills combo if note is too far down without being hit
 (define (combokiller w)
   (make-struc (add-sevl (remove-big (struc-yl w))) (add-sevd (remove-big (struc-yd w))) (add-sevr (remove-big(struc-yr w))) (struc-points w) 0
               (struc-song w)))
 
;;;start image processing functions--------------------------------------------------------------------------------
; WorldState -> Image
; main game rendering
(define (render w)
  (place-image (rectangle 100 55 "outline" "white") 900 50
  (place-image (text (number->string (struc-points w)) 30 "white") 900 50
  (place-image (text "combo" 30 "white") 900 100
  (place-image (text (number->string (struc-combo w)) 30 "white") 900 135
  (place-image cir3 400 450
  (place-image cir3 500 450
  (place-image cir3 600 450
  (place-notesl (struc-yl w) (struc-yd w) (struc-yr w) w)))))))))

;Places notes as needed on the grid
;return scene at the end to make the render function work
(define (place-notesl l d r w)
  (cond [(and (string=? (struc-song w) "song1") (and (and (and (empty? l)(empty? d)) (empty? r)) (<= 25 (struc-combo w)))) sceneM1]
        [(and (string=? (struc-song w) "song2") (and (and (and (empty? l)(empty? d)) (empty? r)) (<= 25 (struc-combo w)))) sceneM2]
        [(and (string=? (struc-song w) "song3") (and (and (and (empty? l)(empty? d)) (empty? r)) (<= 25 (struc-combo w)))) sceneM3]
        [(and (string=? (struc-song w) "song4") (and (and (and (empty? l)(empty? d)) (empty? r)) (<= 25 (struc-combo w)))) sceneM4]
        [(and (string=? (struc-song w) "song1") (and (and (empty? l)(empty? d)) (empty? r))) scene1]
        [(and (string=? (struc-song w) "song2") (and (and (empty? l)(empty? d)) (empty? r))) scene2]
        [(and (string=? (struc-song w) "song3") (and (and (empty? l)(empty? d)) (empty? r))) scene3]
        [(and (string=? (struc-song w) "song4") (and (and (empty? l)(empty? d)) (empty? r))) scene4]
        [(and (< 0(length l)) (and (< 0(length d)) (< 0(length r))))
         (cond [(and (< -100 (first l)) (and (< -100 (first d)) (< -100 (first r))))
                (place-image cir 400 (first l)
                             (place-image cir1 500 (first d)
                                          (place-image cir2 600 (first r)
                                                       (place-notesl (rest l) (rest d) (rest r) w))))]
               [(and (< -100 (first l)) (< -100 (first d)))
                (place-image cir 400 (first l)
                             (place-image cir1 500 (first d)
                                          (place-notesl (rest l) (rest d) r w)))]
               [(and (< -100 (first l)) (< -100 (first r)))
                (place-image cir 400 (first l)
                             (place-image cir2 600 (first r)
                                          (place-notesl (rest l) d (rest r) w)))]
               [(and (< -100 (first r)) (< -100 (first d)))
                (place-image cir1 500 (first d)
                             (place-image cir2 600 (first r)
                                          (place-notesl l (rest d) (rest r) w)))]
               [(< -100 (first l))
                (place-image cir 400 (first l)
                             (place-notesl (rest l) d r w))]
                [(< -100 (first d))
                (place-image cir1 500 (first d)
                             (place-notesl l (rest d) r w))]
                [(< -100 (first r))
                (place-image cir2 600 (first r)
                             (place-notesl l d (rest r) w))]
              
               [else (place-notesl (rest l) (rest d) (rest r) w)])]
        
        [(and (< 0(length l)) (< 0(length d)))
         (cond [(and (< -100 (first l)) (< -100 (first d)))
                (place-image cir 400 (first l)
                             (place-image cir1 500 (first d)
                                          (place-notesl (rest l) (rest d) r w)))]
               [(< -100 (first l))
                (place-image cir 400 (first l)
                             (place-notesl (rest l) d r w))]
                [(< -100 (first d))
                (place-image cir1 500 (first d)
                             (place-notesl l (rest d) r w))]
               [else (place-notesl (rest l) (rest d) r w)])]
        
        [(and (< 0(length l)) (< 0(length r)))
         (cond [(and (< -100 (first l)) (< -100 (first r)))
                (place-image cir 400 (first l)
                             (place-image cir2 600 (first r)
                                          (place-notesl (rest l) d (rest r) w)))]
               [(< -100 (first l))
                (place-image cir 400 (first l)
                             (place-notesl (rest l) d r w))]
                [(< -100 (first r))
                (place-image cir2 600 (first r)
                             (place-notesl l d (rest r) w))]
               
               [else (place-notesl (rest l) d (rest r) w)])]
        
        [(and (< 0(length d)) (< 0(length r)))
         (cond [(and (< -100 (first d)) (< -100 (first r)))
                (place-image cir1 500 (first d)
                             (place-image cir2 600 (first r)
                                          (place-notesl l (rest d) (rest r) w)))]
               [(< -100 (first r))
                (place-image cir2 600 (first r)
                             (place-notesl l d (rest r) w))]
                [(< -100 (first d))
                (place-image cir1 500 (first d)
                             (place-notesl l (rest d) r w))]
               [else (place-notesl l (rest d) (rest r) w)])]
        
        [(< 0(length l))
         (cond [(< -100 (first l))
                (place-image cir 400 (first l)
                             (place-notesl (rest l) d r w))]
               [else (place-notesl (rest l) d r w)])]
        
        [(< 0(length d))
         (cond [(< -100 (first d))
                (place-image cir1 500 (first d)
                             (place-notesl l (rest d) r w))]
               [else (place-notesl l (rest d) r w)])]
        [(< 0(length r))
         (cond [(< -100 (first r))
                (place-image cir2 600 (first r)
                             (place-notesl l d (rest r) w))]
               [else(place-notesl l d (rest r) w)])]
        [(and (string=? (struc-song w) "song1") (<= 25 (struc-combo w))) sceneM1]
        [(and (string=? (struc-song w) "song2") (<= 25 (struc-combo w))) sceneM2]
        [(and (string=? (struc-song w) "song3") (<= 25 (struc-combo w))) sceneM3]
        [(and (string=? (struc-song w) "song4") (<= 25 (struc-combo w))) sceneM4]
        [(string=? (struc-song w) "song1") scene1]
        [(string=? (struc-song w) "song2") scene2]
        [(string=? (struc-song w) "song3") scene3]
        [(string=? (struc-song w) "song4") scene4]))

;On-key functions-----------------------------------------------------------------------------------------------------------
;WorldState, key pressed -> WorldState
;check circle location and key pressed, and adds or subtracts points accordingly
;different points depending on how close you are to the note
(define (hit w a-key) 
  (cond
    [(and (yl-very-close? w) (key=? a-key "left"))
     (success (pointsC w) (drop-one-yl w))]
    [(and (and (and (yl-very-close? w) (yd-very-close? w)) (yr-very-close? w)) (and (and (key=? a-key "left") (key=? a-key "down")) (key=? a-key "right")))
     (success (points3C w) (drop-triple w))]
    
    [(and (and (and (yl-medium-close? w) (yd-medium-close? w)) (yr-medium-close? w)) 
          (and (and (key=? a-key "left") (key=? a-key "down")) (key=? a-key "right")))
     (success (points3F w) (drop-triple w))]
    
    [(and (and (yl-very-close? w) (yd-very-close? w)) (and (key=? a-key "left") (key=? a-key "down")))
     (success (points2C w) (drop-two-yl-yd w))]
    [(and (and (yl-medium-close? w) (yd-medium-close? w)) (and (key=? a-key "left") (key=? a-key "down")))
     (success (points2F w) (drop-two-yl-yd w))]
    [(and (and (yl-medium-close? w) (yd-very-close? w)) (and (key=? a-key "left") (key=? a-key "down")))
     (success (pointsCF w) (drop-two-yl-yd w))]
    [(and (and (yl-very-close? w) (yd-medium-close? w)) (and (key=? a-key "left") (key=? a-key "down")))
     (success (pointsCF w) (drop-two-yl-yd w))]
    
    [(and (and (yl-very-close? w) (yr-very-close? w)) (and (key=? a-key "left") (key=? a-key "right")))
     (success (points2C w) (drop-two-yl-yr w))]
    [(and (and (yl-medium-close? w) (yr-medium-close? w)) (and (key=? a-key "left") (key=? a-key "right")))
     (success (points2F w) (drop-two-yl-yr w))]
    [(and (and (yl-medium-close? w) (yr-very-close? w)) (and (key=? a-key "left") (key=? a-key "right")))
     (success (pointsCF w) (drop-two-yl-yr w))]
    [(and (and (yl-very-close? w) (yr-medium-close? w)) (and (key=? a-key "left") (key=? a-key "right")))
     (success (pointsCF w) (drop-two-yl-yr w))]
    
    [(and (and (yd-very-close? w) (yr-very-close? w)) (and (key=? a-key "down") (key=? a-key "right")))
     (success (points2C w) (drop-two-yd-yr w))]
    [(and (and (yd-medium-close? w) (yr-medium-close? w)) (and (key=? a-key "down") (key=? a-key "right")))
     (success (points2F w) (drop-two-yd-yr w))]
    [(and (and (yd-medium-close? w) (yr-very-close? w)) (and (key=? a-key "down") (key=? a-key "right")))
     (success (pointsCF w) (drop-two-yd-yr w))]
    [(and (and (yd-very-close? w) (yr-medium-close? w)) (and (key=? a-key "down") (key=? a-key "right")))
     (success (pointsCF w) (drop-two-yd-yr w))]
    
    [(and (yd-very-close? w) (key=? a-key "down"))
     (success (pointsC w) (drop-one-yd w))]
    [(and (yr-very-close? w) (key=? a-key "right"))
     (success (pointsC w) (drop-one-yr w))]
    [(and (yl-medium-close? w) (key=? a-key "left"))
     (success (pointsF w) (drop-one-yl w))]
    [(and (yd-medium-close? w) (key=? a-key "down"))
     (success (pointsF w) (drop-one-yd w))]
    [(and (yr-medium-close? w) (key=? a-key "right"))
     (success (pointsF w) (drop-one-yr w))]
    [(and (key=? a-key "right") (yr-not-close? w)) 
     (both (pstream-queue ps crash-cymbal (pstream-current-frame ps)) (miss w))]
    [(and (key=? a-key "down") (yd-not-close? w)) 
     (both (pstream-queue ps crash-cymbal (pstream-current-frame ps)) (miss w))]
    [(and (key=? a-key "left") (yl-not-close? w)) 
     (both (pstream-queue ps crash-cymbal (pstream-current-frame ps)) (miss w))]
    [(key=? a-key "right")
     (both (pstream-queue ps crash-cymbal (pstream-current-frame ps)) (miss w))]
    [(key=? a-key "left")
     (both (pstream-queue ps crash-cymbal (pstream-current-frame ps)) (miss w))]
    [(key=? a-key "down")
     (both (pstream-queue ps crash-cymbal (pstream-current-frame ps)) (miss w))]
    
    [else w]))
;manages loss of points if you miss
(define (miss w)
  (make-struc (struc-yl w) (struc-yd w) (struc-yr w) (- (struc-points w) 3) 0 (struc-song w)))

;;increases the score and the combo
(define (success points w)
  (make-struc (struc-yl w) (struc-yd w) (struc-yr w) 
              (+ points (struc-points w)) 
              (+ 1 (struc-combo w)) (struc-song w)))
(define (thingy-very-close? accessor w)
  (and (cons? (accessor  w))
       (< 445 (first (accessor w)) 455)))
(define (thingy-medium-close? accessor w)
  (and (cons? (accessor  w))
       (< 425 (first (accessor w)) 475)))
(define (thingy-not-close? accessor w)
  (and (cons? (accessor  w))
       (> 425 (first (accessor w)))))
(define (yd-not-close? w) (thingy-not-close? struc-yd w))
(define (yl-not-close? w) (thingy-not-close? struc-yl w))
(define (yr-not-close? w) (thingy-not-close? struc-yr w))
(define (yd-very-close? w) (thingy-very-close? struc-yd w))
(define (yl-very-close? w) (thingy-very-close? struc-yl w))
(define (yr-very-close? w) (thingy-very-close? struc-yr w))
(define (yd-medium-close? w) (thingy-medium-close? struc-yd w))
(define (yl-medium-close? w) (thingy-medium-close? struc-yl w))
(define (yr-medium-close? w) (thingy-medium-close? struc-yr w))
(define (drop-one-yl w) (make-struc (rest (struc-yl w)) (struc-yd w) (struc-yr w) (struc-points w) (struc-combo w) (struc-song w)))
(define (drop-one-yd w) (make-struc (struc-yl w) (rest (struc-yd w)) (struc-yr w) (struc-points w) (struc-combo w) (struc-song w)))
(define (drop-one-yr w) (make-struc (struc-yl w) (struc-yd w) (rest (struc-yr w)) (struc-points w) (struc-combo w) (struc-song w)))
(define (drop-two-yl-yd w) (make-struc (rest (struc-yl w)) (rest (struc-yd w)) (struc-yr w) (struc-points w) (struc-combo w) (struc-song w)))
(define (drop-two-yl-yr w) (make-struc (rest (struc-yl w)) (struc-yd w) (rest (struc-yr w)) (struc-points w) (struc-combo w) (struc-song w)))
(define (drop-two-yd-yr w) (make-struc (struc-yl w) (rest (struc-yd w)) (rest (struc-yr w)) (struc-points w) (struc-combo w) (struc-song w)))
(define (drop-triple w) (make-struc (rest (struc-yl w)) (rest (struc-yd w)) (rest (struc-yr w)) (struc-points w) (struc-combo w) (struc-song w)))

;;;Points managing functions--------------------------------------------------------------------------------   
;pointsC and pointsF Multiplier info
;takes in account for double and
;triple notes as well

;Multiplier and score addition if you are very accurate
(define (pointsC w)
  (cond[(> 10 (struc-combo w)) 10]
       [(and (<= 10 (struc-combo w)) (> 25 (struc-combo w))) (* 2 10)]
       [(<= 25 (struc-combo w)) (* 3 10)]))
;Multiplier and score addition if you are not very accurate
(define (pointsF w)
  (cond[(> 10 (struc-combo w)) 5]
       [(and (<= 10 (struc-combo w)) (> 25 (struc-combo w))) (* 2 5)]
       [(<= 25 (struc-combo w)) (* 3 5)]))
;Multiplier for 2F
(define (points2F w)
  (cond[(> 10 (struc-combo w)) 10]
       [(and (<= 10 (struc-combo w)) (> 25 (struc-combo w))) (* 2 10)]
       [(<= 25 (struc-combo w)) (* 3 10)]))
;Multiplier for 2C
(define (points2C w)
  (cond[(> 10 (struc-combo w)) 20]
       [(and (<= 10 (struc-combo w)) (> 25 (struc-combo w))) (* 2 20)]
       [(<= 25 (struc-combo w)) (* 3 20)]))
;multipier for 1C1F
(define (pointsCF w)
  (cond[(> 10 (struc-combo w)) 15]
       [(and (<= 10 (struc-combo w)) (> 25 (struc-combo w))) (* 2 15)]
       [(<= 25 (struc-combo w)) (* 3 15)]))
;multiplier for 3F
(define (points3F w)
  (cond[(> 10 (struc-combo w)) 20]
       [(and (<= 10 (struc-combo w)) (> 25 (struc-combo w))) (* 2 20)]
       [(<= 25 (struc-combo w)) (* 3 20)]))
;multiplier for 3C
(define (points3C w)
  (cond[(> 10 (struc-combo w)) 35]
       [(and (<= 10 (struc-combo w)) (> 25 (struc-combo w))) (* 2 35)]
       [(<= 25 (struc-combo w)) (* 3 35)]))


;program initiator
(main rain)

;Test Cases----------------------------------------------------------


(define worldC (make-struc left1 down1 right1 0 0 "song1"))
(define worldC1 (make-struc left1 down1 right1 0 12 "song1"))
(define worldC2 (make-struc left1 down1 right1 0 26 "song1"))
(define tc (cons 450 empty))
(define tf (cons 460 empty))
(define te (list))
(define wclose (make-struc tc tc tc 0 0 "song1"))
(define wfar (make-struc tf tf tf 0 0 "song1"))
(define we (make-struc te te te 0 0 "song1"))
(check-expect (yl-not-close? worldC) true)
(check-expect (yd-not-close? worldC) true)
(check-expect (yr-not-close? worldC) true)
(check-expect (yl-very-close? wclose) true)
(check-expect (yd-very-close? wclose) true)
(check-expect (yr-very-close? wclose) true)
(check-expect (yl-medium-close? wfar) true)
(check-expect (yd-medium-close? wfar) true)
(check-expect (yr-medium-close? wfar) true)
(check-expect (success 10 worldC) (make-struc (struc-yl worldC) (struc-yd worldC) (struc-yr worldC) 
              (+ 10 (struc-points worldC)) 
              (+ 1 (struc-combo worldC)) (struc-song worldC)))
(check-expect (thingy-not-close? struc-yl worldC) true)
(check-expect (thingy-very-close? struc-yl wclose) true)
(check-expect (thingy-medium-close? struc-yl wfar) true)
(check-expect (drop-one-yl worldC) (make-struc (rest left1) down1 right1 0 0 "song1"))
(check-expect (drop-one-yd worldC) (make-struc left1 (rest down1) right1 0 0 "song1"))
(check-expect (drop-one-yr worldC) (make-struc left1 down1 (rest right1) 0 0 "song1"))
(check-expect (drop-two-yl-yd worldC) (make-struc (rest left1) (rest down1) right1 0 0 "song1"))
(check-expect (drop-two-yl-yr worldC) (make-struc (rest left1) down1 (rest right1) 0 0 "song1"))
(check-expect (drop-two-yd-yr worldC) (make-struc left1 (rest down1) (rest right1) 0 0 "song1"))
(check-expect (drop-triple worldC) (make-struc (rest left1) (rest down1) (rest right1) 0 0 "song1"))
(check-expect (miss worldC) (make-struc (struc-yl worldC) (struc-yd worldC) (struc-yr worldC) 
              (- (struc-points worldC) 3) 0 (struc-song worldC)))
(check-expect (hit wclose "left") (success (pointsC wclose) (drop-one-yl wclose)))
(check-expect (hit wclose "down") (success (pointsC wclose) (drop-one-yd wclose)))
(check-expect (hit wclose "right") (success (pointsC wclose) (drop-one-yr wclose)))
(check-expect (hit wfar "left") (success (pointsF wfar) (drop-one-yl wfar)))
(check-expect (hit wfar "down") (success (pointsF wfar) (drop-one-yd wfar)))
(check-expect (hit wfar "right") (success (pointsF wfar) (drop-one-yr wfar)))
(check-expect (hit worldC "left") (miss worldC))
(check-expect (hit worldC "down") (miss worldC))
(check-expect (hit worldC "right") (miss worldC))
(check-expect (hit worldC "a") worldC)
(check-expect (pointsC worldC) 10)
(check-expect (pointsC worldC1) 20)
(check-expect (pointsC worldC2) 30)
(check-expect (pointsF worldC) 5)
(check-expect (pointsF worldC1) 10)
(check-expect (pointsF worldC2) 15)
(check-expect (points2F worldC) 10)
(check-expect (points2F worldC1) 20)
(check-expect (points2F worldC2) 30)
(check-expect (points2C worldC) 20)
(check-expect (points2C worldC1) 40)
(check-expect (points2C worldC2) 60)
(check-expect (pointsCF worldC) 15)
(check-expect (pointsCF worldC1) 30)
(check-expect (pointsCF worldC2) 45)
(check-expect (points3F worldC) 20)
(check-expect (points3F worldC1) 40)
(check-expect (points3F worldC2) 60)
(check-expect (points3C worldC) 35)
(check-expect (points3C worldC1) 70)
(check-expect (points3C worldC2) 105)
(check-expect (render worldC) (place-image (rectangle 100 55 "outline" "white") 900 50
  (place-image (text (number->string (struc-points worldC)) 30 "white") 900 50
  (place-image (text "combo" 30 "white") 900 100
  (place-image (text (number->string (struc-combo worldC)) 30 "white") 900 135
  (place-image cir3 400 450
  (place-image cir3 500 450
  (place-image cir3 600 450
  (place-notesl (struc-yl worldC) (struc-yd worldC) (struc-yr worldC) worldC)))))))))
(check-expect (mainr rain) (place-image (rectangle 550 110 "outline" "white") 500 150
  (place-image (text "Racket Tap" 100 "white") 500 150 
  (place-image (text "Single Player" 60 "white") 500 250
  (place-image (text "song switch" 40 "white") 500 300
  (place-image (text "Instructions" 30 "white") 500 350
  (place-image (text (songc rain) 30 "white") 500 450 rain)))))))
(check-expect (mainr world1) (render world1))
(check-expect (instr rain) (place-image (text "instructions" 30 "White") 500 50
  (place-image (text "Left arrow for left note" 20 "white") 500 100 
  (place-image (text "Right arrow for right note" 20 "white") 500 150 
  (place-image (text "Down arrow for middle note" 20 "white") 500 200 rain)))))
(check-expect (combokiller worldC) (make-struc (add-sevl (remove-big (struc-yl worldC))) (add-sevd (remove-big (struc-yd worldC))) (add-sevr (remove-big(struc-yr worldC))) (struc-points worldC) 0
               (struc-song worldC)))
(check-expect (remove-big tf) tf)
(check-expect (add-sevl tf) (cons 467 empty))
(check-expect (add-sevd tf) (cons 467 empty))	
(check-expect (add-sevr tf) (cons 467 empty))
(check-expect (nxt rain) rain)
(check-expect (nxt we) rain)
(check-expect (songc rain) "No rain - Blind Melon")
(check-expect (songc sun) "Unwritten - Natasha Bedingfield")				   
(check-expect (songc galaxy) "Levels - Avicii")
(check-expect (songc beach) "Sunshine - Atmosphere") 

