USERID=305325907_005668317

default: build

build: server.cpp client.cpp
	gcc -Wall -Wextra -o server server.cpp
	gcc -Wall -Wextra -o client client.cpp

clean:
	rm -rf *.o server client *.tar.gz

dist: tarball
tarball: clean
	tar -cvzf /tmp/$(USERID).tar.gz --exclude=./.vagrant . && mv /tmp/$(USERID).tar.gz .
