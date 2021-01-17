# Project Discourse

# Author: Telmo Rodrigues Correa

- This is only for fun, play around with Cucumber automation using Discourse web site

## Installation:
- Requires Ruby 2.7 or higher Windows: https://rubyinstaller.org/downloads/
- selenium webdriver is requiered in the windows PATH

after downloading the project, use the command to install all Ruby Gems:

```shell
gem install bundler
```
install all gems in Gemfile:

```shell
bundler install
```

## Commands:
full test cycle:

cucumber:
```shell
cucumber
```

Smoke test::
```shell
cucumber -t @smoke
```

## All reports and screenshots are being located in the folder "Log"
