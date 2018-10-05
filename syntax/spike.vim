" Vim syntax file
" Language: Spike
" Maintainer: d3c3pt10n
" Latest Revision: 04 October 2018

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Case sensitive keywords
syn case match

" Keywords
syn keyword spikeFunction s_string s_string_repeat
syn keyword spikeFunctionFuzzPoint s_string_variable

syn keyword spikeFunction s_binary s_binary_repeat

syn keyword spikeFunction s_block_start s_block_end s_blocksize_string s_binary_block_size_byte
syn keyword spikeFunction s_readline s_read_packet

" Matches
syn match spikeComment "//.*$"
syn match spikeSpecialChar contained "\\r"
syn match spikeSpecialChar contained "\\n"
syn match spikeSpecialChar contained "\\t"
syn match spikeSpecialChar contained "\\f"
syn match spikeSpecialChar contained "\\b"

" Regions
syn region spikeString start=/"/ skip=/\\./ end=/"/ contains=spikeSpecialChar
syn region spikeString start=/'/ skip=/\\./ end=/'/

" Highlight
highlight link spikeFunction Function
highlight link spikeFunctionFuzzPoint Function
highlight link spikeComment Comment
highlight link spikeString String
highlight link spikeSpecialChar SpecialChar

let b:current_syntax = "spike"
