" we need the conceal feature (vim ≥ 7.3)
if !has('conceal')
    finish
endif

" remove the keywords. we'll re-add them below
syntax clear pythonOperator

syntax match pythonOperator "\<is\>"

syntax match pyNiceOperator "\<in\>" conceal cchar=∈
syntax match pyNiceOperator "\<or\>" conceal cchar=∨
syntax match pyNiceOperator "\<and\>" conceal cchar=∧
" include the space after “not” – if present – so that “not a” becomes “¬a”.
" also, don't hide “not” behind  ‘¬’ if it is after “is ”.
syntax match pyNiceOperator "\%(is \)\@<!\<not\%( \|\>\)" conceal cchar=¬
syntax match pyNiceOperator "\<not in\>" conceal cchar=∉
syntax match pyNiceOperator "<=" conceal cchar=≤
syntax match pyNiceOperator ">=" conceal cchar=≥
" only conceal “==” if alone, to avoid concealing SCM conflict markers
syntax match pyNiceOperator "=\@<!===\@!" conceal cchar=≡
syntax match pyNiceOperator "!=" conceal cchar=≢


syntax keyword pyNiceBuiltin sum conceal cchar=∑
syntax keyword pyNiceBuiltin all conceal cchar=∀
syntax keyword pyNiceBuiltin any conceal cchar=∃
syntax match pyNiceOperator "\<\%(math\.\)\?sqrt\>" conceal cchar=√
syntax match pyNiceKeyword "\<\%(math\.\)\?pi\>" conceal cchar=π
syntax match pyNiceOperator "\<\%(math\.\|\)ceil\>" conceal cchar=⌈
syntax match pyNiceOperator "\<\%(math\.\|\)floor\>" conceal cchar=⌊
syntax match pyNiceOperator "\<\%(math\.\)\?exp\>" conceal cchar=ℯ
syntax match pyNiceOperator "\<\%(math\.\)\?inf\>" conceal cchar=∞

syntax keyword pyNiceStatement int conceal cchar=ℤ
syntax keyword pyNiceStatement float conceal cchar=ℝ
syntax keyword pyNiceStatement complex conceal cchar=ℂ

syntax match pyNiceOperator " \* " conceal cchar=∙
syntax match pyNiceOperator " / " conceal cchar=÷
" The following are special cases where it /may/ be okay to ignore PEP8
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)2\>" conceal cchar=²
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)3\>" conceal cchar=³
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)n\>" conceal cchar=ⁿ

syntax keyword pyNiceStatement lambda conceal cchar=λ
syntax keyword pyNiceStatement None conceal cchar=∅
syntax keyword pyNiceKeyword True conceal cchar=𝕋
syntax keyword pyNiceKeyword False conceal cchar=𝔽
syntax keyword pyNiceRepeat for conceal cchar=∀

syntax match pyNiceOperator "\<\%(random\.\)\?random\>" conceal cchar=🎲
syntax match pyNiceOperator "\<\%(time\.\)\?time\>" conceal cchar=⏰

hi link pyNiceOperator Operator
hi link pyNiceStatement Statement
hi link pyNiceKeyword Keyword
hi link pyNiceRepeat Repeat
hi link pyNiceBuiltin Builtin
hi! link Conceal Operator

setlocal conceallevel=1
