# Wiremock Stub Example

Wiremock example with Docker support based on http://wiremock.org/docs/record-playback/

## Build

```
docker build -t wiremock-stub-example .
```

## Run

```
docker run -d -p 7001:8080 wiremock-stub-example
```

## How to rebuild from scratch

Example: recording netflix api request and response

* Start recording network traffic:

```
java -jar wiremock-standalone-2.4.1.jar --proxy-all="http://netflixroulette.net" --record-mappings
```

* Example request to record:

```
curl http://localhost:8080/api/api.php?director=Quentin%20Tarantino
```

* Rebuild the docker instance and test
