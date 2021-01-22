# Project Discourse

# Author: Telmo Rodrigues Correa

- This is only for fun, play around with Cucumber automation using Discourse web site
- Also using Capybara framework and Rspec
- Ruby <3

## Installation:
- Requires Ruby 2.7 or higher Windows: https://rubyinstaller.org/downloads/
- selenium webdriver is requiered in the windows PATH

Note: open the Terminal in WEB folder and uses the command to install all Ruby Gems:

```shell
gem install bundler
```
install all gems in Gemfile:

```shell
bundler install
```

## Test run:
- full test cycle:

```shell
cucumber
```

- Smoke test::
```shell
cucumber -t @smoke
```

## All reports and screenshots are being located in the folder "Log"
- web\log

