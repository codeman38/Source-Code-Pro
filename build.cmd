set family=SourceCodePro
set weights=(Black Bold ExtraLight Light Regular Semibold)

del /s /q target
mkdir target

for %%w in %weights% do (
  makeotf -sp target\%family%-%%w-otf.fpr -f Roman\%%w\font.pfa -r -o target\%family%-%%w.otf
  makeotf -sp target\%family%-%%w-ttf.fpr -f Roman\%%w\font.ttf -gf GlyphOrderAndAliasDB_TT -r -o target\%family%-%%w.ttf
  del Roman\%%w\current.fpr
)
