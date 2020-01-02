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

REPL:
```bash
irb
```
To exit:
```bash
exit
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
REPL:
```bash
python
```
To exit:
```bash
exit()
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
REPL:
```bash
node
```
To exit:
<kbd>Ctrl</kdb> + <kbd>C</kbd> <kbd>Ctrl</kdb> + <kbd>C</kbd>
