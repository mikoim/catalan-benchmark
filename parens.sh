#!/bin/sh

# _parens $1 $2 $3
# $1 prefix
# $2 left
# $3 right

_parens()
{
  if test $2 -eq 0 -a $3 -eq 0; then
      echo "$1"
  fi

  if test $2 -gt 0; then
      _parens "$1(" $(($2-1)) "$3"
  fi

  if test $3 -gt $2; then
      _parens "$1)" "$2" $(($3-1))
  fi
}

parens()
{
  _parens "" "$1" "$1"
}

parens "$1"
