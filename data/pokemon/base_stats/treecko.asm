	db 0 ; species ID placeholder

	db  40,  45,  35,  70,  65,  55
	evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 65 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/treecko/front.dimensions"
	db OVERGROW, OVERGROW, UNBURDEN ; abilities
	db 0 ; unused
	db GROWTH_MEDIUM_SLOW ; growth rate
	db 70 ; base happiness
	dn EGG_MONSTER, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm
	; end