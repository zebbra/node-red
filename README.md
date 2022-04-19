# node-red

node-red instance used for zebbra engineering support with custom [`node-red-web-google`](https://github.com/zebbra/node-red-web-nodes/tree/master/google) plugin (see `Dockerfile`).

## Deployment

Commits to `master` are built and deployed automatically on [zebbra CI/CD](https://ci.zebbra.ch/zebbra/node-red) using an existing Helm [chart](https://k8s-at-home.com/charts/). See `deploy/values.yaml` for settings.

## Development

```bash
# build docker image (optional)
docker-compose build

# launch node-red using docker-compose
docker-compose up
open http://localhost:1880
```

**Note:** node-red data is persisted in the `./data` directory. 