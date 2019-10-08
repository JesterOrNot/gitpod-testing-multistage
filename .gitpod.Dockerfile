FROM swift AS build
FROM scratch
COPY --from=build /usr/bin/swiftc /usr/bin/
# CMD [ "go","--help" ]
