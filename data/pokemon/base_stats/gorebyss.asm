	db 0 ; species ID placeholder

	db  55,  84, 105,  52, 114,  75
	evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 60 ; catch rate
	db 178 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/placeholder/front.dimensions"
	db SWIFT_SWIM, SWIFT_SWIM, HYDRATION ; abilities
	db 0 ; unused
	db GROWTH_ERRATIC ; growth rate
	db 70 ; base happiness
	dn EGG_WATER_1, EGG_WATER_1 ; egg groups

	; tm/hm learnset
	tmhm
	; end