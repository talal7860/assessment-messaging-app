# Take Home Project

[![CI](https://github.com/talal7860/assessment-messaging-app/actions/workflows/rubyonrails.yml/badge.svg)](https://github.com/talal7860/assessment-messaging-app/actions/workflows/rubyonrails.yml)
[![Ruby Style Guide](https://img.shields.io/badge/code_style-standard-brightgreen.svg)](https://github.com/testdouble/standard)
[![Gem Version](https://badge.fury.io/rb/bundler-audit.svg)](https://badge.fury.io/rb/bundler-audit)
## About

Take home is a simple lightweight community platform that allows people to create & join “Groups”. A group can either be
Public(anyone can join) or Private(people can request to join but they have to be accepted by the creator). Users can join multiple groups and create posts on groups they’re a member of, Other members can join the discussion by commenting on a post and reply to comments. The creator of group can modify or delete groups, posts and comments. He can also remove members that currently have access to group.

## Technologies Used

- Rails 7
- Stimulus
- ActionCable/WebSockets

## Instalation Guidelines

### With local ruby version
Please follow the steps to setup project locally:

- Make sure you have ruby-3.1.2 installed. Or use rvm to configure it.

- Take pull from repo

- Copy .env.example to .env
  update the DB connection

- Run Following commands

```bash
$ bundle install
$ rails db:setup
./bin/dev
```

### Setup via docker
```bash
$ docker compose build
$ docker compose run --rm app bin/rake db:setup
$ docker compose up
```

- Now application can be accessed at http://localhost:4000

## Sample users

We have added some sample users, all of them have the password `secret`.

Users list (username)
- john
- dan
- paul
- dona
- lisa
