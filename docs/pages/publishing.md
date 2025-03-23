# Publishing

Check the **linter**:

```bash
bundle exec rubocop -a
```

Update the version in `lib-ruby/aspisec/version.rb`.

Update the documentation, at least:

- `README.md`
- `docs/CHANGELOG.md`
- `docs/pages/usage.md`

On new release don't forget to rebuild the **library documentation**:

```bash
bundle exec yard doc
```

Create an **annotated git tag**:

```bash
git tag -a 0.2.0
```

Push the changes including the tags:

```bash
git push --follow-tags
```

Build the **gem**:

```bash
gem build aspisec.gemspec
```

Push the new gem release on **RubyGems** See https://guides.rubygems.org/publishing/.

```bash
gem push aspisec-0.2.0.gem
```
