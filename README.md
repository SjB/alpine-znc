alpine-znc
==========

Basic container to run ZNC inside of alpine linux. Installs alpine from apk. No hooks to install any custom modules. 


Usage:

```
docker run -p 1234:6667 --name znc -v /znc-data nickvanw/alpine-znc
```

This will expose ZNC at port 1234. If you want to persist your config, you can use a container mounted locally, or a data container. 

This image will come up with the username admin/admin by default, so get in there ASAP and change it to something not crazy. 