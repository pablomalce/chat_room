# chat_room (MessageMe)

A small Ruby on Rails chat app: users log in and post messages to one shared chat room.

## Context

This is a learning project I built in September 2020, while I was learning Rails. The five commits run from 9 to 15 September 2020. Inside the app it is called "MessageMe" (`package.json`, `config/cable.yml`).

## What it does

- Username and password login with `has_secure_password` (bcrypt), stored in the session. There are login and logout routes, and the chat page requires a logged-in user.
- One chat room page that lists all messages with their author's username, plus a form to post a new message (`POST /message`).
- Models: `User` (unique username of 3 to 15 characters), `Message` (`belongs_to :user`, body required), and two unused stubs, `Chatroom` and `Session`.
- `db/seeds.rb` creates five demo users with the placeholder password `password`.

Not built:
- Real-time updates. The ActionCable `ChatroomChannel` is still the generated stub, so a new message only shows up after the page redirects and reloads.
- Sign up. The button is a disabled placeholder.
- Tests. The test files are the empty ones Rails generates.

## Stack

Ruby 2.6.6, Rails 6.0.3, SQLite, Puma, Webpacker 4, Semantic UI (`semantic-ui-sass`), jQuery, Turbolinks.

## Running it locally

These are the standard Rails 6 steps. I have not checked them recently, and you need Ruby 2.6.6 plus Yarn.

```bash
bundle install
yarn install
bin/rails db:setup   # creates the SQLite DB, loads the schema and the demo users
bin/rails server
```

## Status

Archived learning project, not maintained.
