# Programming A


## Ruby
Installation instructions:
```bash
gem install bundle
bundle install
```
Run linter and tests:
```bash
bundle exec rubocop
bundle exec reek
bundle exec rspec
bundle exec spec --format documentation
```

## Python
Installation instructions:
```bash
pip install -r requirements-dev.txt
```
Run linter and tests:

```bash
pylint *.py
pycodestyle *.py
pytest *.py
```

## JavaScript

Installation instructions:
```bash
yarn install
```
Run linter and tests:
```bash
yarn eslint *.js
yarn test *.js
```
