	db 0 ; species ID placeholder

	db 250,   5,   5,  50,  35, 105
	evs  2,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 30 ; catch rate
	db 255 ; base exp
	dw NO_ITEM, LUCKY_EGG ; items
	db GENDER_F100 ; gender ratio
	db 40 ; step cycles to hatch
	INCBIN "gfx/pokemon/chansey/front.dimensions"
	db NATURAL_CURE, SERENE_GRACE, HEALER ; abilities
	db 0 ; unused
	db GROWTH_FAST ; growth rate
	db 70 ; base happiness
	dn EGG_FAIRY, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm
	; end