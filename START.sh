docker run --rm -p 3389:3389 -p 3636:3636 -v `pwd`/data:/data 389ds:$1-alpine
