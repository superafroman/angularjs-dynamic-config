
Example of setting up nginx to serve dynamic configuration to AngularJS.

See http://www.superafroman.com/build-once-run-anywhere/ for a more detailed break down.

And for an example run the Docker image:
```
docker run -d -p 80:80 -e API_URL=your-url --name angularjs-dynamic-config superafroman/angularjs-dynamic-config
```


