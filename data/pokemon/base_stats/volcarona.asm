	db 0 ; species ID placeholder

	db  85,  60,  65, 100, 135, 105
	evs  0,   0,   0,   0,   3,   0
	;   hp  atk  def  spd  sat  sdf

	db BUG, FIRE ; type
	db 15 ; catch rate
	db 230 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 40 ; step cycles to hatch
	INCBIN "gfx/pokemon/volcarona/front.dimensions"
	db FLAME_BODY, FLAME_BODY, SWARM ; abilities
	db 0 ; unused
	db GROWTH_SLOW ; growth rate
	db 70 ; base happiness
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm
	; end