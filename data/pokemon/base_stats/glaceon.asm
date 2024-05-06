	db 0 ; species ID placeholder

	db  65,  60, 110,  65, 130,  95
	evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf

	db ICE, ICE ; type
	db 45 ; catch rate
	db 196 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 35 ; step cycles to hatch
	INCBIN "gfx/pokemon/glaceon/front.dimensions"
	db SNOW_CLOAK, SNOW_CLOAK, ICE_BODY ; abilities
	db 0 ; unused
	db GROWTH_MEDIUM_FAST ; growth rate
	db 35 ; base happiness
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm
	; end