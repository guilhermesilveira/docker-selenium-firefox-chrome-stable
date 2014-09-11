```
docker pull guilhermesilveira/selenium-firefox-chrome-stable
docker run -p 4444:4444 -p 5999:5999 --name selenium -d guilhermesilveira/selenium-firefox-chrome-stable
echo "Mac users should use: $(boot2docker ip 2>/dev/null):4444"
open http://$(boot2docker ip 2>/dev/null):4444/wd/hub
docker logs -f selenium
```

Now you can test with selenium Remote Driver connecting to 4444. Pay attention!

Mac OSX users should use (by default) `http://192.168.59.103:4444/wd/hub` while linux users should use `http://localhost:4444/wd/hub`. You can check the IP on Mac OSX by running the echo command provided earlier in this README.

Based on https://registry.hub.docker.com/u/vvoyer/docker-selenium-firefox-chrome/
