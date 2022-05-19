if exists('b:current_syntax')
  unlet b:current_syntax
endif

if !exists("g:tex_no_math")
 " TexNewMathZone: function creates a mathzone with the given suffix and mathzone name.
 "                 Starred forms are created if starform is true.  Starred
 "                 forms have syntax group and synchronization groups with a
 "                 "S" appended.  Handles: cluster, syntax, sync, and highlighting.
 fun! TexNewMathZone(sfx,mathzone,starform)
   let grpname  = "texMathZone".a:sfx
   let syncname = "texSyncMathZone".a:sfx
   let foldcmd= ""
   exe "syn cluster texMathZones add=".grpname
   exe 'syn region '.grpname.' start='."'".'\\begin\s*{\s*'.a:mathzone.'\s*}'."'".' end='."'".'\\end\s*{\s*'.a:mathzone.'\s*}'."'".' keepend contains=@texMathZoneGroup'.foldcmd
   exe 'syn sync match '.syncname.' grouphere '.grpname.' "\\begin\s*{\s*'.a:mathzone.'\*\s*}"'
   exe 'syn sync match '.syncname.' grouphere '.grpname.' "\\begin\s*{\s*'.a:mathzone.'\*\s*}"'
   exe 'hi def link '.grpname.' texMath'
   if a:starform
    let grpname  = "texMathZone".a:sfx.'S'
    let syncname = "texSyncMathZone".a:sfx.'S'
    exe "syn cluster texMathZones add=".grpname
    exe 'syn region '.grpname.' start='."'".'\\begin\s*{\s*'.a:mathzone.'\*\s*}'."'".' end='."'".'\\end\s*{\s*'.a:mathzone.'\*\s*}'."'".' keepend contains=@texMathZoneGroup'.foldcmd
    exe 'syn sync match '.syncname.' grouphere '.grpname.' "\\begin\s*{\s*'.a:mathzone.'\*\s*}"'
    exe 'syn sync match '.syncname.' grouphere '.grpname.' "\\begin\s*{\s*'.a:mathzone.'\*\s*}"'
    exe 'hi def link '.grpname.' texMath'
   endif
 endfun

 " Standard Math Zones: 
 call TexNewMathZone("A","displaymath",1)
 call TexNewMathZone("B","eqnarray",1)
 call TexNewMathZone("C","equation",1)
 call TexNewMathZone("D","math",1)

 " Inline Math Zones: {{2
 syn region texMathZoneV	matchgroup=Delimiter start="\\("			matchgroup=Delimiter	end="\\)\|%stopzone\>"			keepend contains=@texMathZoneGroup
 syn region texMathZoneW	matchgroup=Delimiter start="\\\["			matchgroup=Delimiter	end="\\]\|%stopzone\>"			keepend contains=@texMathZoneGroup
 syn region texMathZoneX	matchgroup=Delimiter start="\$" skip="\%(\\\\\)*\\\$"	matchgroup=Delimiter	end="\$"	end="%stopzone\>"		contains=@texMathZoneGroup
 syn region texMathZoneY	matchgroup=Delimiter start="\$\$" 			matchgroup=Delimiter	end="\$\$"	end="%stopzone\>"	keepend	contains=@texMathZoneGroup
 syn region texMathZoneZ	matchgroup=texStatement start="\\ensuremath\s*{"	matchgroup=texStatement	end="}"		end="%stopzone\>"	contains=@texMathZoneGroup

 syn match texMathOper		"[_^=]" contained

 " Text Inside Math Zones: 
 if !exists("g:tex_nospell") || !g:tex_nospell
  syn region texMathText matchgroup=texStatement start='\\\(\(inter\)\=text\|mbox\)\s*{'	end='}'	contains=@texFoldGroup,@Spell
 else
  syn region texMathText matchgroup=texStatement start='\\\(\(inter\)\=text\|mbox\)\s*{'	end='}'	contains=@texFoldGroup
 endif

 " \left..something.. and \right..something.. support: 
 syn match   texMathDelimBad	contained		"\S"
 syn match   texMathDelim	contained		"\\\(left\|right\)\>"	skipwhite nextgroup=texMathDelimSet1,texMathDelimSet2,texMathDelimBad
 syn match   texMathDelim	contained		"\\[bB]igg\=[lr]\=\>"	skipwhite nextgroup=texMathDelimSet1,texMathDelimSet2,texMathDelimBad
 syn match   texMathDelimSet2	contained	"\\"		nextgroup=texMathDelimKey,texMathDelimBad
 syn match   texMathDelimSet1	contained	"[<>()[\]|/.]\|\\[{}|]"
 syn keyword texMathDelimKey	contained	backslash       lceil           lVert           rgroup          uparrow
 syn keyword texMathDelimKey	contained	downarrow       lfloor          rangle          rmoustache      Uparrow
 syn keyword texMathDelimKey	contained	Downarrow       lgroup          rbrace          rvert           updownarrow
 syn keyword texMathDelimKey	contained	langle          lmoustache      rceil           rVert           Updownarrow
 syn keyword texMathDelimKey	contained	lbrace          lvert           rfloor
 syn match   texMathDelim	contained		"\\\(left\|right\)arrow\>\|\<\([aA]rrow\|brace\)\=vert\>"
 syn match   texMathDelim	contained		"\\lefteqn\>"
endif

let b:current_syntax = 'markdown'
