#!/bin/bash


Array=(
  github.com/acroca/go-symbols
  golang.org/x/tools/cmd/guru
  golang.org/x/tools/cmd/gorename
  github.com/fatih/gomodifytags
  github.com/josharian/impl
  github.com/rogpeppe/godef
  sourcegraph.com/sqs/goreturns
  github.com/golang/lint/golint
  github.com/cweill/gotests/...
  github.com/nsf/gocode
  github.com/uudashr/gopkgs/cmd/gopkgs
)


for site in ${Array[*]}
do
  go get -u -v $site
  echo install ${site} done ...
done
