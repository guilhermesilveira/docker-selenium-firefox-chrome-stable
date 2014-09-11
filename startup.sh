docker run -d --name selenium -p 5999:5999 -p 4444:4444 -t -i guilhermesilveira/selenium
echo "$(boot2docker ip 2>/dev/null):5999"
open http://$(boot2docker ip 2>/dev/null):4444/wd/hub
docker logs -f selenium
