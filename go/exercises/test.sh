clear

go fmt ./...

if [ $# -eq 0 ]; then
  go test -count=1 ./...
else
  go test -count=1 ./... -run $1
fi
