; used in data/pokemon/base_stats/*.asm

MACRO evs
	db (\1 << 6) | (\2 << 4) | (\3 << 2) | \4
	db (\5 << 6) | (\6 << 4)
	assert (\1 + \2 + \3 + \4 + \5 + \6) > 0, "This Mon has no EV yields."
	assert (\1 + \2 + \3 + \4 + \5 + \6) < 4, "This Mon's EV Yield is greater than 4!"
ENDM

MACRO tmhm
	; initialize bytes to 0
	for n, (NUM_TM_HM_TUTOR + 7) / 8
		DEF _tm{d:n} = 0
	endr
	; set bits of bytes
	rept _NARG
		if DEF(\1_TMNUM)
		DEF n = (\1_TMNUM - 1) / 8
		DEF i = (\1_TMNUM - 1) % 8
		DEF _tm{d:n} |= 1 << i
		else
			fail "\1 is not a TM, HM, or tutor move"
		endc
		shift
	endr
	; output bytes
	for n, (NUM_TM_HM_TUTOR + 7) / 8
		db _tm{d:n}
	endr
ENDM

BaseData::
	indirect_table BASE_DATA_SIZE, 1
	indirect_entries NUM_POKEMON, BaseData1
	indirect_table_end

BaseData1:
INCLUDE "data/pokemon/base_stats/bulbasaur.asm"
INCLUDE "data/pokemon/base_stats/ivysaur.asm"
INCLUDE "data/pokemon/base_stats/venusaur.asm"
INCLUDE "data/pokemon/base_stats/charmander.asm"
INCLUDE "data/pokemon/base_stats/charmeleon.asm"
INCLUDE "data/pokemon/base_stats/charizard.asm"
INCLUDE "data/pokemon/base_stats/squirtle.asm"
INCLUDE "data/pokemon/base_stats/wartortle.asm"
INCLUDE "data/pokemon/base_stats/blastoise.asm"
INCLUDE "data/pokemon/base_stats/bidoof.asm"
INCLUDE "data/pokemon/base_stats/bibarel.asm"
INCLUDE "data/pokemon/base_stats/kricketot.asm"
INCLUDE "data/pokemon/base_stats/weedle.asm"
INCLUDE "data/pokemon/base_stats/kakuna.asm"
INCLUDE "data/pokemon/base_stats/beedrill.asm"
INCLUDE "data/pokemon/base_stats/pidgey.asm"
INCLUDE "data/pokemon/base_stats/pidgeotto.asm"
INCLUDE "data/pokemon/base_stats/pidgeot.asm"
INCLUDE "data/pokemon/base_stats/kricketune.asm"
INCLUDE "data/pokemon/base_stats/combee.asm"
INCLUDE "data/pokemon/base_stats/vespiquen.asm"
INCLUDE "data/pokemon/base_stats/pachirisu.asm"
INCLUDE "data/pokemon/base_stats/ekans.asm"
INCLUDE "data/pokemon/base_stats/arbok.asm"
INCLUDE "data/pokemon/base_stats/pikachu.asm"
INCLUDE "data/pokemon/base_stats/raichu.asm"
INCLUDE "data/pokemon/base_stats/buizel.asm"
INCLUDE "data/pokemon/base_stats/floatzel.asm"
INCLUDE "data/pokemon/base_stats/nidoran_f.asm"
INCLUDE "data/pokemon/base_stats/nidorina.asm"
INCLUDE "data/pokemon/base_stats/nidoqueen.asm"
INCLUDE "data/pokemon/base_stats/nidoran_m.asm"
INCLUDE "data/pokemon/base_stats/nidorino.asm"
INCLUDE "data/pokemon/base_stats/nidoking.asm"
INCLUDE "data/pokemon/base_stats/mismagius.asm"
INCLUDE "data/pokemon/base_stats/honchkrow.asm"
INCLUDE "data/pokemon/base_stats/happiny.asm"
INCLUDE "data/pokemon/base_stats/gible.asm"
INCLUDE "data/pokemon/base_stats/gabite.asm"
INCLUDE "data/pokemon/base_stats/garchomp.asm"
INCLUDE "data/pokemon/base_stats/zubat.asm"
INCLUDE "data/pokemon/base_stats/golbat.asm"
INCLUDE "data/pokemon/base_stats/oddish.asm"
INCLUDE "data/pokemon/base_stats/gloom.asm"
INCLUDE "data/pokemon/base_stats/vileplume.asm"
INCLUDE "data/pokemon/base_stats/paras.asm"
INCLUDE "data/pokemon/base_stats/parasect.asm"
INCLUDE "data/pokemon/base_stats/munchlax.asm"
INCLUDE "data/pokemon/base_stats/croagunk.asm"
INCLUDE "data/pokemon/base_stats/toxicroak.asm"
INCLUDE "data/pokemon/base_stats/carnivine.asm"
INCLUDE "data/pokemon/base_stats/meowth.asm"
INCLUDE "data/pokemon/base_stats/persian.asm"
INCLUDE "data/pokemon/base_stats/psyduck.asm"
INCLUDE "data/pokemon/base_stats/golduck.asm"
INCLUDE "data/pokemon/base_stats/mankey.asm"
INCLUDE "data/pokemon/base_stats/primeape.asm"
INCLUDE "data/pokemon/base_stats/weavile.asm"
INCLUDE "data/pokemon/base_stats/magnezone.asm"
INCLUDE "data/pokemon/base_stats/poliwag.asm"
INCLUDE "data/pokemon/base_stats/poliwhirl.asm"
INCLUDE "data/pokemon/base_stats/poliwrath.asm"
INCLUDE "data/pokemon/base_stats/gelanla.asm"
INCLUDE "data/pokemon/base_stats/tangrowth.asm"
INCLUDE "data/pokemon/base_stats/gelania.asm"
INCLUDE "data/pokemon/base_stats/electivire.asm"
INCLUDE "data/pokemon/base_stats/magmortar.asm"
INCLUDE "data/pokemon/base_stats/leafeon.asm"
INCLUDE "data/pokemon/base_stats/glaceon.asm"
INCLUDE "data/pokemon/base_stats/sylveon.asm"
INCLUDE "data/pokemon/base_stats/porygon-z.asm"
INCLUDE "data/pokemon/base_stats/lillipup.asm"
INCLUDE "data/pokemon/base_stats/herdier.asm"
INCLUDE "data/pokemon/base_stats/geodude.asm"
INCLUDE "data/pokemon/base_stats/graveler.asm"
INCLUDE "data/pokemon/base_stats/golem.asm"
INCLUDE "data/pokemon/base_stats/stoutland.asm"
INCLUDE "data/pokemon/base_stats/tympole.asm"
INCLUDE "data/pokemon/base_stats/palpitoad.asm"
INCLUDE "data/pokemon/base_stats/seismitoad.asm"
INCLUDE "data/pokemon/base_stats/magnemite.asm"
INCLUDE "data/pokemon/base_stats/magneton.asm"
INCLUDE "data/pokemon/base_stats/throh.asm"
INCLUDE "data/pokemon/base_stats/doduo.asm"
INCLUDE "data/pokemon/base_stats/dodrio.asm"
INCLUDE "data/pokemon/base_stats/sawk.asm"
INCLUDE "data/pokemon/base_stats/cottonee.asm"
INCLUDE "data/pokemon/base_stats/whimsicott.asm"
INCLUDE "data/pokemon/base_stats/petilil.asm"
INCLUDE "data/pokemon/base_stats/lilligant.asm"
INCLUDE "data/pokemon/base_stats/sandile.asm"
INCLUDE "data/pokemon/base_stats/krokorok.asm"
INCLUDE "data/pokemon/base_stats/krookodile.asm"
INCLUDE "data/pokemon/base_stats/frillish.asm"
INCLUDE "data/pokemon/base_stats/jellicent.asm"
INCLUDE "data/pokemon/base_stats/joltik.asm"
INCLUDE "data/pokemon/base_stats/galvantula.asm"
INCLUDE "data/pokemon/base_stats/krabby.asm"
INCLUDE "data/pokemon/base_stats/kingler.asm"
INCLUDE "data/pokemon/base_stats/voltorb.asm"
INCLUDE "data/pokemon/base_stats/electrode.asm"
INCLUDE "data/pokemon/base_stats/exeggcute.asm"
INCLUDE "data/pokemon/base_stats/exeggutor.asm"
INCLUDE "data/pokemon/base_stats/cubone.asm"
INCLUDE "data/pokemon/base_stats/marowak.asm"
INCLUDE "data/pokemon/base_stats/litwick.asm"
INCLUDE "data/pokemon/base_stats/lampent.asm"
INCLUDE "data/pokemon/base_stats/chandelure.asm"
INCLUDE "data/pokemon/base_stats/bouffalant.asm"
INCLUDE "data/pokemon/base_stats/rufflet.asm"
INCLUDE "data/pokemon/base_stats/braviary.asm"
INCLUDE "data/pokemon/base_stats/vullaby.asm"
INCLUDE "data/pokemon/base_stats/chansey.asm"
INCLUDE "data/pokemon/base_stats/tangela.asm"
INCLUDE "data/pokemon/base_stats/mandibuzz.asm"
INCLUDE "data/pokemon/base_stats/horsea.asm"
INCLUDE "data/pokemon/base_stats/seadra.asm"
INCLUDE "data/pokemon/base_stats/heatmor.asm"
INCLUDE "data/pokemon/base_stats/durant.asm"
INCLUDE "data/pokemon/base_stats/staryu.asm"
INCLUDE "data/pokemon/base_stats/starmie.asm"
INCLUDE "data/pokemon/base_stats/larvesta.asm"
INCLUDE "data/pokemon/base_stats/scyther.asm"
INCLUDE "data/pokemon/base_stats/volcarona.asm"
INCLUDE "data/pokemon/base_stats/electabuzz.asm"
INCLUDE "data/pokemon/base_stats/magmar.asm"
INCLUDE "data/pokemon/base_stats/litleo.asm"
INCLUDE "data/pokemon/base_stats/tauros.asm"
INCLUDE "data/pokemon/base_stats/magikarp.asm"
INCLUDE "data/pokemon/base_stats/gyarados.asm"
INCLUDE "data/pokemon/base_stats/pyroar.asm"
INCLUDE "data/pokemon/base_stats/ditto.asm"
INCLUDE "data/pokemon/base_stats/eevee.asm"
INCLUDE "data/pokemon/base_stats/vaporeon.asm"
INCLUDE "data/pokemon/base_stats/jolteon.asm"
INCLUDE "data/pokemon/base_stats/flareon.asm"
INCLUDE "data/pokemon/base_stats/porygon.asm"
INCLUDE "data/pokemon/base_stats/omanyte.asm"
INCLUDE "data/pokemon/base_stats/omastar.asm"
INCLUDE "data/pokemon/base_stats/kabuto.asm"
INCLUDE "data/pokemon/base_stats/kabutops.asm"
INCLUDE "data/pokemon/base_stats/aerodactyl.asm"
INCLUDE "data/pokemon/base_stats/snorlax.asm"
INCLUDE "data/pokemon/base_stats/articuno.asm"
INCLUDE "data/pokemon/base_stats/zapdos.asm"
INCLUDE "data/pokemon/base_stats/moltres.asm"
INCLUDE "data/pokemon/base_stats/dratini.asm"
INCLUDE "data/pokemon/base_stats/dragonair.asm"
INCLUDE "data/pokemon/base_stats/dragonite.asm"
INCLUDE "data/pokemon/base_stats/mewtwo.asm"
INCLUDE "data/pokemon/base_stats/mew.asm"
INCLUDE "data/pokemon/base_stats/chikorita.asm"
INCLUDE "data/pokemon/base_stats/bayleef.asm"
INCLUDE "data/pokemon/base_stats/meganium.asm"
INCLUDE "data/pokemon/base_stats/cyndaquil.asm"
INCLUDE "data/pokemon/base_stats/quilava.asm"
INCLUDE "data/pokemon/base_stats/typhlosion.asm"
INCLUDE "data/pokemon/base_stats/totodile.asm"
INCLUDE "data/pokemon/base_stats/croconaw.asm"
INCLUDE "data/pokemon/base_stats/feraligatr.asm"
INCLUDE "data/pokemon/base_stats/pancham.asm"
INCLUDE "data/pokemon/base_stats/pangoro.asm"
INCLUDE "data/pokemon/base_stats/skrelp.asm"
INCLUDE "data/pokemon/base_stats/dragalge.asm"
INCLUDE "data/pokemon/base_stats/clauncher.asm"
INCLUDE "data/pokemon/base_stats/clawitzer.asm"
INCLUDE "data/pokemon/base_stats/hawlucha.asm"
INCLUDE "data/pokemon/base_stats/grubbin.asm"
INCLUDE "data/pokemon/base_stats/crobat.asm"
INCLUDE "data/pokemon/base_stats/chinchou.asm"
INCLUDE "data/pokemon/base_stats/lanturn.asm"
INCLUDE "data/pokemon/base_stats/pichu.asm"
INCLUDE "data/pokemon/base_stats/charjabug.asm"
INCLUDE "data/pokemon/base_stats/vikavolt.asm"
INCLUDE "data/pokemon/base_stats/rockruff.asm"
INCLUDE "data/pokemon/base_stats/lycanroc.asm"
INCLUDE "data/pokemon/base_stats/natu.asm"
INCLUDE "data/pokemon/base_stats/xatu.asm"
INCLUDE "data/pokemon/base_stats/dewpider.asm"
INCLUDE "data/pokemon/base_stats/araquanid.asm"
INCLUDE "data/pokemon/base_stats/mimikyu.asm"
INCLUDE "data/pokemon/base_stats/bellossom.asm"
INCLUDE "data/pokemon/base_stats/marill.asm"
INCLUDE "data/pokemon/base_stats/azumarill.asm"
INCLUDE "data/pokemon/base_stats/dhelmise.asm"
INCLUDE "data/pokemon/base_stats/politoed.asm"
INCLUDE "data/pokemon/base_stats/rookidee.asm"
INCLUDE "data/pokemon/base_stats/corvsquire.asm"
INCLUDE "data/pokemon/base_stats/corvinight.asm"
INCLUDE "data/pokemon/base_stats/chewtle.asm"
INCLUDE "data/pokemon/base_stats/drednaw.asm"
INCLUDE "data/pokemon/base_stats/falinks.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/wooper.asm"
INCLUDE "data/pokemon/base_stats/quagsire.asm"
INCLUDE "data/pokemon/base_stats/espeon.asm"
INCLUDE "data/pokemon/base_stats/umbreon.asm"
INCLUDE "data/pokemon/base_stats/murkrow.asm"
INCLUDE "data/pokemon/base_stats/wyrdeer.asm"
INCLUDE "data/pokemon/base_stats/misdreavus.asm"
INCLUDE "data/pokemon/base_stats/unown.asm"
INCLUDE "data/pokemon/base_stats/kleavor.asm"
INCLUDE "data/pokemon/base_stats/girafarig.asm"
INCLUDE "data/pokemon/base_stats/ursaluna.asm"
INCLUDE "data/pokemon/base_stats/tinkatink.asm"
INCLUDE "data/pokemon/base_stats/dunsparce.asm"
INCLUDE "data/pokemon/base_stats/tinkatuff.asm"
INCLUDE "data/pokemon/base_stats/tinkaton.asm"
INCLUDE "data/pokemon/base_stats/orthworm.asm"
INCLUDE "data/pokemon/base_stats/annihilape.asm"
INCLUDE "data/pokemon/base_stats/dudunsparc.asm"
INCLUDE "data/pokemon/base_stats/scizor.asm"
INCLUDE "data/pokemon/base_stats/shuckle.asm"
INCLUDE "data/pokemon/base_stats/gimmighoul.asm"
INCLUDE "data/pokemon/base_stats/sneasel.asm"
INCLUDE "data/pokemon/base_stats/teddiursa.asm"
INCLUDE "data/pokemon/base_stats/ursaring.asm"
INCLUDE "data/pokemon/base_stats/gholdengo.asm"
INCLUDE "data/pokemon/base_stats/jagg.asm"
INCLUDE "data/pokemon/base_stats/crocky.asm"
INCLUDE "data/pokemon/base_stats/wulfman.asm"
INCLUDE "data/pokemon/base_stats/warwulf.asm"
INCLUDE "data/pokemon/base_stats/remoraid.asm"
INCLUDE "data/pokemon/base_stats/octillery.asm"
INCLUDE "data/pokemon/base_stats/rinrin.asm"
INCLUDE "data/pokemon/base_stats/bellerun.asm"
INCLUDE "data/pokemon/base_stats/skarmory.asm"
INCLUDE "data/pokemon/base_stats/houndour.asm"
INCLUDE "data/pokemon/base_stats/houndoom.asm"
INCLUDE "data/pokemon/base_stats/kingdra.asm"
INCLUDE "data/pokemon/base_stats/kotora.asm"
INCLUDE "data/pokemon/base_stats/raitora.asm"
INCLUDE "data/pokemon/base_stats/porygon2.asm"
INCLUDE "data/pokemon/base_stats/stantler.asm"
INCLUDE "data/pokemon/base_stats/bomashika.asm"
INCLUDE "data/pokemon/base_stats/viking1.asm"
INCLUDE "data/pokemon/base_stats/kokopelli.asm"
INCLUDE "data/pokemon/base_stats/farigiraf.asm"
INCLUDE "data/pokemon/base_stats/elekid.asm"
INCLUDE "data/pokemon/base_stats/magby.asm"
INCLUDE "data/pokemon/base_stats/miltank.asm"
INCLUDE "data/pokemon/base_stats/blissey.asm"
INCLUDE "data/pokemon/base_stats/raikou.asm"
INCLUDE "data/pokemon/base_stats/entei.asm"
INCLUDE "data/pokemon/base_stats/suicune.asm"
INCLUDE "data/pokemon/base_stats/larvitar.asm"
INCLUDE "data/pokemon/base_stats/pupitar.asm"
INCLUDE "data/pokemon/base_stats/tyranitar.asm"
INCLUDE "data/pokemon/base_stats/lugia.asm"
INCLUDE "data/pokemon/base_stats/ho_oh.asm"
INCLUDE "data/pokemon/base_stats/celebi.asm"
INCLUDE "data/pokemon/base_stats/treecko.asm"
INCLUDE "data/pokemon/base_stats/grovyle.asm"
INCLUDE "data/pokemon/base_stats/sceptile.asm"
INCLUDE "data/pokemon/base_stats/torchic.asm"
INCLUDE "data/pokemon/base_stats/combusken.asm"
INCLUDE "data/pokemon/base_stats/blaziken.asm"
INCLUDE "data/pokemon/base_stats/mudkip.asm"
INCLUDE "data/pokemon/base_stats/marshtomp.asm"
INCLUDE "data/pokemon/base_stats/swampert.asm"
INCLUDE "data/pokemon/base_stats/poochyena.asm"
INCLUDE "data/pokemon/base_stats/mightyena.asm"
INCLUDE "data/pokemon/base_stats/zigzagoon.asm"
INCLUDE "data/pokemon/base_stats/linoone.asm"
INCLUDE "data/pokemon/base_stats/wurmple.asm"
INCLUDE "data/pokemon/base_stats/silcoon.asm"
INCLUDE "data/pokemon/base_stats/beautifly.asm"
INCLUDE "data/pokemon/base_stats/cascoon.asm"
INCLUDE "data/pokemon/base_stats/dustox.asm"
INCLUDE "data/pokemon/base_stats/lotad.asm"
INCLUDE "data/pokemon/base_stats/lombre.asm"
INCLUDE "data/pokemon/base_stats/ludicolo.asm"
INCLUDE "data/pokemon/base_stats/seedot.asm"
INCLUDE "data/pokemon/base_stats/nuzleaf.asm"
INCLUDE "data/pokemon/base_stats/shiftry.asm"
INCLUDE "data/pokemon/base_stats/wingull.asm"
INCLUDE "data/pokemon/base_stats/pelipper.asm"
INCLUDE "data/pokemon/base_stats/ralts.asm"
INCLUDE "data/pokemon/base_stats/kirlia.asm"
INCLUDE "data/pokemon/base_stats/gardevoir.asm"
INCLUDE "data/pokemon/base_stats/gallade.asm"
INCLUDE "data/pokemon/base_stats/shroomish.asm"
INCLUDE "data/pokemon/base_stats/breloom.asm"
INCLUDE "data/pokemon/base_stats/slakoth.asm"
INCLUDE "data/pokemon/base_stats/vigoroth.asm"
INCLUDE "data/pokemon/base_stats/slaking.asm"
INCLUDE "data/pokemon/base_stats/azurill.asm"
INCLUDE "data/pokemon/base_stats/skitty.asm"
INCLUDE "data/pokemon/base_stats/delcatty.asm"
INCLUDE "data/pokemon/base_stats/sableye.asm"
INCLUDE "data/pokemon/base_stats/mawile.asm"
INCLUDE "data/pokemon/base_stats/aron.asm"
INCLUDE "data/pokemon/base_stats/lairon.asm"
INCLUDE "data/pokemon/base_stats/aggron.asm"
INCLUDE "data/pokemon/base_stats/budew.asm"
INCLUDE "data/pokemon/base_stats/roselia.asm"
INCLUDE "data/pokemon/base_stats/roserade.asm"
INCLUDE "data/pokemon/base_stats/gulpin.asm"
INCLUDE "data/pokemon/base_stats/swalot.asm"
INCLUDE "data/pokemon/base_stats/wailmer.asm"
INCLUDE "data/pokemon/base_stats/wailord.asm"
INCLUDE "data/pokemon/base_stats/numel.asm"
INCLUDE "data/pokemon/base_stats/camerupt.asm"
INCLUDE "data/pokemon/base_stats/trapinch.asm"
INCLUDE "data/pokemon/base_stats/vibrava.asm"
INCLUDE "data/pokemon/base_stats/flygon.asm"
INCLUDE "data/pokemon/base_stats/cacnea.asm"
INCLUDE "data/pokemon/base_stats/cacturne.asm"
INCLUDE "data/pokemon/base_stats/swablu.asm"
INCLUDE "data/pokemon/base_stats/altaria.asm"
INCLUDE "data/pokemon/base_stats/zangoose.asm"
INCLUDE "data/pokemon/base_stats/seviper.asm"
INCLUDE "data/pokemon/base_stats/barboach.asm"
INCLUDE "data/pokemon/base_stats/whiscash.asm"
INCLUDE "data/pokemon/base_stats/lileep.asm"
INCLUDE "data/pokemon/base_stats/cradily.asm"
INCLUDE "data/pokemon/base_stats/anorith.asm"
INCLUDE "data/pokemon/base_stats/armaldo.asm"
INCLUDE "data/pokemon/base_stats/feebas.asm"
INCLUDE "data/pokemon/base_stats/milotic.asm"
INCLUDE "data/pokemon/base_stats/castform.asm"
INCLUDE "data/pokemon/base_stats/kecleon.asm"
INCLUDE "data/pokemon/base_stats/duskull.asm"
INCLUDE "data/pokemon/base_stats/dusclops.asm"
INCLUDE "data/pokemon/base_stats/dusknoir.asm"
INCLUDE "data/pokemon/base_stats/chingling.asm"
INCLUDE "data/pokemon/base_stats/chimecho.asm"
INCLUDE "data/pokemon/base_stats/absol.asm"
INCLUDE "data/pokemon/base_stats/snorunt.asm"
INCLUDE "data/pokemon/base_stats/glalie.asm"
INCLUDE "data/pokemon/base_stats/froslass.asm"
INCLUDE "data/pokemon/base_stats/spheal.asm"
INCLUDE "data/pokemon/base_stats/sealeo.asm"
INCLUDE "data/pokemon/base_stats/walrein.asm"
INCLUDE "data/pokemon/base_stats/clamperl.asm"
INCLUDE "data/pokemon/base_stats/huntail.asm"
INCLUDE "data/pokemon/base_stats/gorebyss.asm"
INCLUDE "data/pokemon/base_stats/bagon.asm"
INCLUDE "data/pokemon/base_stats/shelgon.asm"
INCLUDE "data/pokemon/base_stats/salamence.asm"
INCLUDE "data/pokemon/base_stats/beldum.asm"
INCLUDE "data/pokemon/base_stats/metang.asm"
INCLUDE "data/pokemon/base_stats/metagross.asm"
INCLUDE "data/pokemon/base_stats/regirock.asm"
INCLUDE "data/pokemon/base_stats/regice.asm"
INCLUDE "data/pokemon/base_stats/registeel.asm"
INCLUDE "data/pokemon/base_stats/latias.asm"
INCLUDE "data/pokemon/base_stats/latios.asm"
INCLUDE "data/pokemon/base_stats/kyogre.asm"
INCLUDE "data/pokemon/base_stats/groudon.asm"
INCLUDE "data/pokemon/base_stats/rayquaza.asm"
INCLUDE "data/pokemon/base_stats/deoxys.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/placeholder.asm"
INCLUDE "data/pokemon/base_stats/deoxys-attack.asm"
INCLUDE "data/pokemon/base_stats/deoxys-defense.asm"
INCLUDE "data/pokemon/base_stats/deoxys-speed.asm"
INCLUDE "data/pokemon/base_stats/lycanroc-nite.asm"
INCLUDE "data/pokemon/base_stats/lycanroc-dusk.asm"
INCLUDE "data/pokemon/base_stats/ursaluna-blood.asm"
.IndirectEnd::
