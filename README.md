# RailsConf 2013 Intro Track

Source for the application used in the April 2013, 2013 RailsConf talk:

[Test-Driven Development: Tools, Techniques, and Discipline][3]

## Setup

Fork the repo and the clone it to your local system:

    git clone git@github.com:YOUR_USER_NAME/railsconf_intro_track.git
    cd railsconf_intro_track
    ./bin/setup

## Run Locally

Run the web server:

    foreman start

Access the site in a web browser [http://localhost:5000][4]

## Test Suite

RSpec directory structure:

    spec
    ├── features
    ├── helpers
    ├── models
    ├── spec_helper.rb
    └── views

Run the specs:

    rspec

## Presenters

Written by [Harlow Ward][1] and [Adarsh Pandit][2]

[1]: https://plus.google.com/105506419279219045553?rel=author
[2]: https://plus.google.com/u/1/116006351214905134217/posts
[3]: http://railsconf.com/2013/talks#talk-64
[4]: http://localhost:5000
