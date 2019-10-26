bins=(
  github.com/mdempsky/gocode
  github.com/uudashr/gopkgs/cmd/gopkgs
  github.com/ramya-rao-a/go-outline
  github.com/acroca/go-symbols
  golang.org/x/tools/cmd/guru
  golang.org/x/tools/cmd/gorename
  github.com/cweill/gotests/...
  github.com/fatih/gomodifytags
  github.com/josharian/impl
  github.com/davidrjenni/reftools/cmd/fillstruct
  github.com/haya14busa/goplay/cmd/goplay
  github.com/godoctor/godoctor
  github.com/go-delve/delve/cmd/dlv
  github.com/stamblerre/gocode
  github.com/rogpeppe/godef
  golang.org/x/tools/cmd/goimports
  github.com/golangci/golangci-lint/cmd/golangci-lint
  golang.org/x/tools/gopls
)

for bin in ${bins[@]};do
	go get -v -u -d ${bin}
done
