"TODO:
"section
"bulletes
"code regions

if exists("b:current_syntax")
    finish
endif
let b:current_syntax = "qnotes"
""if !exists('main_syntax')
""  let main_syntax = 'markdown'
""endif
"if &background == "light"
"  highlight comment ctermfg=darkgreen guifg=darkgreen
"else
"  highlight comment ctermfg=green guifg=green
"endif

""syntax keyword potionKeyword ahoj
""syntax keyword potionFunction functor
""highlight link potionKeyword Keyword
""highlight link potionFunction Function

"Headdings
"syn match mySection1 '^#\{1}[\s]'
"syn match mySection1 '#\(.\)*\([:tab:]\)\@=[:tab:]'

"" PART
"" CHAPTER

"" SECTION 1
syn match mySection1 '\(^# .*\)'
hi link mySection1 Title

"" Section 2
syn match mySection2 '\(^## .*\)'
hi link mySection2 Title
""hi mySection2 ctermfg=13 guifg=#cb4b16

"" Section 3
syn match mySection3 '\(^### .*\)'
hi mySection3 ctermfg=13 guifg=#cb4b16   

"" Section 4
syn match mySection3 '\(^#### \)'
hi mySection3 ctermfg=13 guifg=#cb4b16

"" BULETS
"" Bulet 1
syn match myBullet1 '\(^\*\ .*\)'
hi myBullet1 guifg=#0981f4

""syn match myBullet2 '\(^\*\k .*\)'
syn match myBullet2 '\*\{2,3} \ze\(\w\)'
hi myBullet2 guifg=#0981f4

"" Bullet list
syn match myBulletList1 '^-\{1,5} \ze\(\w\)'
hi myBulletList1 guifg=green

"" List keywords
syn match myListKeys '^.\{-}\t\ze'
hi myListKeys guifg=grey
""gui=bold

""syn match myBulletList2 '\(^--\k .*\)'
""hi myBulletList2 guifg=green


"" Auto Numbered list

"" CODE BLOCKS
"" read syn include

"" Conceal, Concealable
"syn match Concealed '^.\{25\}' conceal
"set conceallevel=2

"" Hides first characters
"syn match Concealed '\(^.\{5}\)' conceal

"syn match Concealed '^.\{5}\zs\ze\t' conceal

""syn match Concealed '^.\{5}\zs.*\ze\t' conceal
""set conceallevel=2
