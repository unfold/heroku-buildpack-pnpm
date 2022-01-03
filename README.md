# PNPM heroku build-pack

This buildpack enables use of `pnpm` on heroku.

## Using the heroku buildpack

```shell
heroku buildpaks:set https://github.com/unfold/heroku-buildpack-pnpm
```

The buildpack will install `node` and `npm` into the environment. It will read the `package.json` file to get the NPM version to use (defaults to version 16).
