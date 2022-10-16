# bravloop-test0

```
rm -r bravloop-test0; git clone https://github.com/pingme998/bravloop-test0 ; cd bravloop-test0; docker build .; clear; docker images; docker run -p 8089:8089 -dt $(docker images |sed '/REPOSITORY/d' |head -1 |sed 's/ /\n/g' |sed -r '/^\s*$/d' |sed '3q;d'); docker exec -it $(docker ps |sed '/CONTAINER ID/d' |head -1 |cut -d " " -f 1) bash

```
g
