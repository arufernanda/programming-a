# Programming A


## Ruby
Installation instructions:
```bash
gem install bundler
bundle install
```
Run linter and tests:
```bash
bundle exec rubocop
bundle exec reek
bundle exec rspec
bundle exec spec --format documentation
```
Debug:

```bash
ruby debug.rb
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
Debug:

```bash
python debug.py
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
Debug:

```bash
node debug.js
```
