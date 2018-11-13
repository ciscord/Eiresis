# Docker

Docker takes care of all the required dependencies for you, and with it you use a fixed and standard dev environment between all of developers. This eliminate inconsistencies problem that can lead to bugs and other complications in running the application.

## Requirements
* [Docker](https://www.docker.com/)
* [Docker Compose](https://github.com/docker/compose)

1. Download the project
```
git clone https://github.com/alperendev98/Eiresis.git
cd eiresis
```
2. Create the required Docker containers (first we need the container for eiresis, then we can build all the others) 
```
docker-compose build eiresis
docker-compose build
```
3. To configure application variables (such as PayPal, Google Maps API, etc.), run
```
cp config/application.example.yml config/application.yml
```
then edit the `.yml` file and set your custom values
4. Bootstrap and seed the DB
```
docker-compose run --rm eiresis bundle exec rake db:setup
```
5. Run eiresis
```
docker-compose up
```

## Testing

1. Build the test container
```
docker build -t eiresis_test ./spec/
```
2. Start all the test
```
docker-compose -f docker-compose.yml -f docker-compose.test.yml up eiresis
```
