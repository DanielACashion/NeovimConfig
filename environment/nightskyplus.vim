" Name:         NightSky Plus
" Description:  NightSky+ color scheme for Vim, using Retro Box structure
" Author:       DanielACashion 
" Website:      https://github.com/DanielACashion
" License:      Vim License (see `:help license`)
" Last Updated: July 12, 2025



" hi clear
source $VIMRUNTIME/colors/vim.lua
let g:colors_name = 'nightskyplus'

let s:t_Co = &t_Co

hi! link CursorColumn CursorLine
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link VisualNOS Visual
hi! link Tag Special
hi! link lCursor Cursor
hi! link MessageWindow PMenu
hi! link PopupNotification Todo
hi! link CurSearch Search

if &background ==# 'dark'
  if (has('termguicolors') && &termguicolors) || has('gui_running')
    let g:terminal_ansi_colors = ['#151515', '#cf6a4c', '#799d6a', '#ffb964', '#8197bf', '#c6b6ee', '#8fbfdc', '#e8e8d3', '#888888', '#cf6a4c', '#99ad6a', '#fad07a', '#8197bf', '#c6b6ee', '#8fbfdc', '#adadad']
    for i in range(g:terminal_ansi_colors->len())
      let g:terminal_color_{i} = g:terminal_ansi_colors[i]
    endfor
  endif
  "terminal
  hi Normal      guifg=#e8e8d3 guibg=#NONE gui=NONE cterm=NONE
  hi CursorLineNr guifg=#ffb964 guibg=#303031 gui=NONE cterm=NONE
  hi FoldColumn  guifg=#888888 guibg=#121012 gui=NONE cterm=NONE
  hi SignColumn  guifg=#888888 guibg=#121012 gui=NONE cterm=NONE
  hi VertSplit   guifg=#303031 guibg=#121012 gui=NONE cterm=NONE
  hi ColorColumn guifg=NONE guibg=#151515 gui=NONE cterm=NONE
  hi Comment     guifg=#888888 guibg=NONE gui=NONE cterm=NONE
  hi CursorLine  guifg=NONE guibg=#303031 gui=NONE cterm=NONE
  hi Error       guifg=#cf6a4c guibg=#121012 gui=bold,reverse cterm=bold,reverse
  hi ErrorMsg    guifg=#121012 guibg=#cf6a4c gui=bold cterm=bold
  hi Folded      guifg=#888888 guibg=#151515 gui=NONE cterm=NONE
  hi LineNr      guifg=#605958 guibg=NONE gui=NONE cterm=NONE
  hi MatchParen  guifg=NONE guibg=#8197bf gui=bold,underline cterm=bold,underline
  hi NonText     guifg=#8197bf guibg=NONE gui=NONE cterm=NONE
  hi Pmenu       guifg=#e8e8d3 guibg=#403c41 gui=NONE cterm=NONE
  hi PmenuSbar   guifg=NONE guibg=#403c41 gui=NONE cterm=NONE
  hi PmenuSel    guifg=#403c41 guibg=#8197bf gui=bold cterm=bold
  hi PmenuThumb  guifg=NONE guibg=#605958 gui=NONE cterm=NONE
  hi PmenuKind   guifg=#cf6a4c guibg=#403c41 gui=NONE cterm=NONE
  hi PmenuKindSel guifg=#cf6a4c guibg=#8197bf gui=NONE cterm=NONE
  hi PmenuExtra  guifg=#adadad guibg=#403c41 gui=NONE cterm=NONE
  hi PmenuExtraSel guifg=#303031 guibg=#8197bf gui=NONE cterm=NONE
  hi SpecialKey  guifg=#888888 guibg=NONE gui=NONE cterm=NONE
  hi StatusLine  guifg=#8197bf guibg=#e8e8d3 gui=bold,reverse cterm=bold,reverse
  hi StatusLineNC guifg=#403c41 guibg=#adadad gui=reverse cterm=reverse
  hi TabLine     guifg=#adadad guibg=#403c41 gui=NONE cterm=NONE
  hi TabLineFill guifg=#e8e8d3 guibg=#403c41 gui=NONE cterm=NONE
  hi TabLineSel  guifg=#e8e8d3 guibg=#121012 gui=bold cterm=bold
  hi ToolbarButton guifg=#e8e8d3 guibg=#303031 gui=bold cterm=bold
  hi ToolbarLine guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Visual      guifg=#121012 guibg=#8197bf gui=NONE cterm=NONE
  hi WildMenu    guifg=#8197bf guibg=#8197bf gui=bold cterm=bold
  hi EndOfBuffer guifg=#8197bf guibg=NONE gui=NONE cterm=NONE
  hi Conceal     guifg=#8197bf guibg=NONE gui=NONE cterm=NONE
  hi Cursor      guifg=#121012 guibg=#e8e8d3 gui=NONE cterm=NONE
  hi DiffAdd     guifg=#99ad6a guibg=#121012 gui=reverse cterm=reverse
  hi DiffChange  guifg=#8fbfdc guibg=#121012 gui=reverse cterm=reverse
  hi DiffDelete  guifg=#cf6a4c guibg=#121012 gui=reverse cterm=reverse
  hi DiffText    guifg=#ffb964 guibg=#121012 gui=reverse cterm=reverse
  hi Directory   guifg=#99ad6a guibg=NONE gui=bold cterm=bold
  hi IncSearch   guifg=#fad07a guibg=#121012 gui=reverse cterm=reverse
  hi ModeMsg     guifg=#ffb964 guibg=NONE gui=bold cterm=bold
  hi MoreMsg     guifg=#ffb964 guibg=NONE gui=bold cterm=bold
  hi Question    guifg=#fad07a guibg=NONE gui=bold cterm=bold
  hi Search      guifg=#799d6a guibg=#121012 gui=reverse cterm=reverse
  hi QuickFixLine guifg=#8fbfdc guibg=#121012 gui=reverse cterm=reverse
  hi SpellBad    guifg=#cf6a4c guibg=NONE guisp=#cf6a4c gui=undercurl cterm=underline
  hi SpellCap    guifg=#8197bf guibg=NONE guisp=#8197bf gui=undercurl cterm=underline
  hi SpellLocal  guifg=#8fbfdc guibg=NONE guisp=#8fbfdc gui=undercurl cterm=underline
  hi SpellRare   guifg=#c6b6ee guibg=NONE guisp=#c6b6ee gui=undercurl cterm=underline
  hi Title       guifg=#99ad6a guibg=NONE gui=bold cterm=bold
  hi WarningMsg  guifg=#cf6a4c guibg=NONE gui=bold cterm=bold
  hi Boolean     guifg=#c6b6ee guibg=NONE gui=NONE cterm=NONE
  hi Character   guifg=#c6b6ee guibg=NONE gui=NONE cterm=NONE
  hi Conditional guifg=#cf6a4c guibg=NONE gui=NONE cterm=NONE
  hi Constant    guifg=#c6b6ee guibg=NONE gui=NONE cterm=NONE
  hi Define      guifg=#8fbfdc guibg=NONE gui=NONE cterm=NONE
  hi Debug       guifg=#cf6a4c guibg=NONE gui=NONE cterm=NONE
  hi Delimiter   guifg=#fad07a guibg=NONE gui=NONE cterm=NONE
  hi Error       guifg=#cf6a4c guibg=#121012 gui=bold,reverse cterm=bold,reverse
  hi Exception   guifg=#cf6a4c guibg=NONE gui=NONE cterm=NONE
  hi Float       guifg=#c6b6ee guibg=NONE gui=NONE cterm=NONE
  hi Function    guifg=#99ad6a guibg=NONE gui=bold cterm=bold
  hi Identifier  guifg=#8197bf guibg=NONE gui=NONE cterm=NONE
  hi Ignore      guifg=fg guibg=NONE gui=NONE cterm=NONE
  hi Include     guifg=#8fbfdc guibg=NONE gui=NONE cterm=NONE
  hi Keyword     guifg=#cf6a4c guibg=NONE gui=NONE cterm=NONE
  hi Label       guifg=#cf6a4c guibg=NONE gui=NONE cterm=NONE
  hi Macro       guifg=#8fbfdc guibg=NONE gui=NONE cterm=NONE
  hi Number      guifg=#c6b6ee guibg=NONE gui=NONE cterm=NONE
  hi Operator    guifg=#8fbfdc guibg=NONE gui=NONE cterm=NONE
  hi PreCondit   guifg=#8fbfdc guibg=NONE gui=NONE cterm=NONE
  hi PreProc     guifg=#8fbfdc guibg=NONE gui=NONE cterm=NONE
  hi Repeat      guifg=#cf6a4c guibg=NONE gui=NONE cterm=NONE
  hi SpecialChar guifg=#cf6a4c guibg=NONE gui=NONE cterm=NONE
  hi SpecialComment guifg=#cf6a4c guibg=NONE gui=NONE cterm=NONE
  hi Statement   guifg=#cf6a4c guibg=NONE gui=NONE cterm=NONE
  hi StorageClass guifg=#fad07a guibg=NONE gui=NONE cterm=NONE
  hi Special     guifg=#fad07a guibg=NONE gui=NONE cterm=NONE
  hi String      guifg=#99ad6a guibg=NONE gui=NONE cterm=NONE
  hi Structure   guifg=#8fbfdc guibg=NONE gui=NONE cterm=NONE
  hi Todo        guifg=fg guibg=#121012 gui=bold cterm=bold
  hi Type        guifg=#ffb964 guibg=NONE gui=NONE cterm=NONE
  hi Typedef     guifg=#ffb964 guibg=NONE gui=NONE cterm=NONE
  hi Underlined  guifg=#8197bf guibg=NONE gui=underline cterm=underline
  hi CursorIM    guifg=#121012 guibg=#e8e8d3 gui=NONE cterm=NONE
endif

" Tree-sitter highlight groups for NightSky+

"Sky blue #93bfe7
hi! link @keyword                  SkyBlueTS
hi! link @constant.character.escape SkyBlueTS
hi SkyBlueTS guifg=#93bfe7


"Sky blue #93bfe7
hi! link @keyword                  SkyBlueTS
hi! link @constant.character.escape SkyBlueTS
hi SkyBlueTS guifg=#93bfe7

"Light Blue #C1DDF6
hi! link @support.function         LightBlueTS
hi! link @support.class           LightBlueTS
hi! link @entity.name.namespace   LightBlueTS
hi! link @meta.tag.structure.select.end.html LightBlueTS
hi! link @meta.tag.structure.select.begin.html LightBlueTS
hi! link @punctuation.definition.tag LightBlueTS
hi LightBlueTS guifg=#C1DDF6

"Slants italic
hi! link @meta.tag.structure.select.end.html SlantsTS
hi! link @meta.tag.structure.select.begin.html SlantsTS
hi! link @entity.name.tag SlantsTS
hi SlantsTS gui=italic

"STRIKE! strikethrough
hi! link @meta.tag.structure.select.end.html StrikeTS
hi! link @meta.tag.structure.select.begin.html StrikeTS
hi! link @punctuation.definition.tag StrikeTS
hi StrikeTS gui=strikethrough

"White Clouds #FFFFFF, italic
hi! link @comment                               WhiteCloudsTS
hi! link @punctuation.definition.comment        WhiteCloudsTS
hi! link @punctuation.definition.comment.begin  WhiteCloudsTS
hi! link @punctuation.definition.comment.end    WhiteCloudsTS
hi! link @text                                  WhiteCloudsTS
hi! link @string                                WhiteCloudsTS
hi! link @constant.character                    WhiteCloudsTS
hi! link @constant.string                       WhiteCloudsTS
hi! link @constant.numeric                      WhiteCloudsTS
hi! link @punctuation.separator                 WhiteCloudsTS
hi! link @boolean                               WhiteCloudsTS
hi WhiteCloudsTS guifg=#FFFFFF gui=italic

"Const #FFFFFF, bold
hi! link @const ConstTS
hi ConstTS guifg=#FFFFFF gui=bold

"EggShell #e8e8d3, italic
hi! link @keyword.control         EggShellTS
hi! link @keyword.conditional     EggShellTS
hi! link @variable.other.property EggShellTS
hi! link @flow.controls           EggShellTS
hi! link @operator                EggShellTS
hi EggShellTS guifg=#e8e8d3 gui=italic

"Forest Green #357446, italic
hi! link @comment ForestGreenTS
hi ForestGreenTS guifg=#357446 gui=italic
			
"Dm Golden #f7d487
hi! link @entity.name.function         DmGoldenTS
hi! link @support.constant.handlebars DmGoldenTS
hi! link @source.powershell.variable.other.member DmGoldenTS
hi! link @entity.name.operator.custom-literal DmGoldenTS
hi! link @entity.name.tag DmGoldenTS
hi DmGoldenTS guifg=#f7d487

"Default Orange #ffb964
hi! link @Identifier IdentifierTS
hi! link @Function IdentifierTS
hi IdentifierTS guifg=#ffb964

"Default Special #cf6a4c
hi! link @nil SpecialTS
hi! link @number SpecialTS
hi SpecialTS guifg=#cf6a4c gui=bold

"Var #ff8a65, italic
hi! link @var VarTS
hi VarTS guifg=#ff8a65 gui=italic

"Sunset Pink #ff8a65
hi! link @module SunsetPinkTS
hi SunsetPinkTS guifg=#ff8a65 gui=bold

"Sunrise Yellow #ffe066
hi! link @function.method.call.go SunriseYellowTS
hi SunriseYellowTS guifg=#ffe066

"Deep Sky Blue #1e90ff
hi! link @function.method.go DeepSkyBlueTS
hi! link @variable.member DeepSkyBlueTS
hi DeepSkyBlueTS guifg=#1e90ff

"Variables #a575c1
hi! link @variable VariableTS
hi! link @meta.definition.variable.name VariableTS
hi! link @support.variable VariableTS
hi! link @entity.name.variable VariableTS
hi! link @constant.other.placeholder VariableTS
hi VariableTS guifg=#a575c1 

" (Light background section omitted because unused)
