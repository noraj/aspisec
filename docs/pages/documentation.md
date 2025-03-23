# Documentation

## CLI doc

See [Usage](pages/usage.md?id=cli).

### Serve locally

```bash
npm i docsify-cli gulp-cli -g
cd docs-tools
npm i
gulp
docsify serve ../docs
```

## Library doc

The output directory of the library documentation will be `docs/ruby`.

You can consult it online [here](https://noraj.github.io/aspisec/ruby/).

### Build & serve locally

```bash
bundle exec yard doc && bundle exec yard server
```
