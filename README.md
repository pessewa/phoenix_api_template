# Phoenix Api Template

This template is maintained by Pessewa. We use it to kickoff Phoenix projects.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

* [Docker] (https://docs.docker.com/engine/installation)
* \>= Elixir 1.12
* \>= Phoenix 1.6.6

### Installing

Please run the following commands to setup your development env up.

```bash
# clone this repository
git clone https://github.com/pessewa/phoenix_api_template.git

# change directory
cd phoenix_api_template/

# install the project's dependencies using Mix
mix deps.get
```

### Running the tests

```bash
# run all tests
mix test
```

### Running the application

```bash
# build the docker image
docker build -t phoenix_api_template .

# run container in bash and start the application
docker run --mount type=bind,source=$(pwd),target=/app -p 4000:4000 --name phoenix_api_template --rm phoenix_api_template:latest mix phx.server
```

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser to see the application in action.

Ready to run in production? Please [check the deployment guides](https://hexdocs.pm/phoenix/deployment.html).
