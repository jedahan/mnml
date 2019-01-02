# geometry_hg - display current mercurial branch and status

(( $+commands[hg] )) || return

geometry_hg() {
  [[ -d .hg ]] || return -1

  local branch="$(ansi ${GEOMETRY_HG_COLOR_BRANCH:=242} $(hg branch 2> /dev/null))"

  [[ -n "$(hg status 2> /dev/null)" ]] \
    && local symbol=$(ansi ${GEOMETRY_HG_COLOR_DIRTY:=red} ${GEOMETRY_HG_SYMBOL_DIRTY:="⬡"}) \
    || local symbol=$(ansi ${GEOMETRY_HG_COLOR_CLEAN:=green} ${GEOMETRY_HG_SYMBOL_CLEAN:="⬢"})

  echo -n "${branch}${GEOMETRY_HG_SYMBOL_SEPARATOR:='::'}${symbol}"
}