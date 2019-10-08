FROM golang:1.11-alpine AS build
FROM scratch
COPY --from=build /usr/bin/go /usr/bin/
# CMD [ "go","--help" ]
