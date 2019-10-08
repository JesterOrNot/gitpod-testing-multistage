FROM swift AS build
FROM gitpod/workspace-full
COPY --from=build /usr/bin/swiftc /usr/bin/
# CMD [ "go","--help" ]
