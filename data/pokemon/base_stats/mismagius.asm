	db 0 ; species ID placeholder

	db  60,  60,  60, 105, 105, 105
	evs  0,   0,   0,   0,   1,   1
	;   hp  atk  def  spd  sat  sdf

	db GHOST, GHOST ; type
	db 45 ; catch rate
	db 187 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 25 ; step cycles to hatch
	INCBIN "gfx/pokemon/placeholder/front.dimensions"
	db LEVITATE, LEVITATE, LEVITATE ; abilities
	db 0 ; unused
	db GROWTH_FAST ; growth rate
	db 35 ; base happiness
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm
	; end