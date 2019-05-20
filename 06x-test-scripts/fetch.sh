set -x
curl -v -w '@curl-fmt.txt' http://httpbin.default.global:8000/headers
