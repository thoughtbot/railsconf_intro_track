
                     Adarsh Pandit                Harlow Ward
                 adarsh@thoughtbot.com       harlow@thoughtbot.com
                       @adarshp                     @hrward


                                  OZOOOOOOOOOOOOO
                               OZOOOOO__-=-__OOOOOZO
                             ZOOOOO._---"""---_.OOOOOZ
                           OOOOOOOOOO_--"""--_OOOOOOOOOO
                          OOOOOOOOOOOOZ_-"-_OOOOOOOOOOOOZ
                         OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO
                        OOOOOOOOOOOOO         OOOOOOOOOOOOO
                       8OOOOOOOOOOOOO  O   O  OOOOOOOOOOOOOO
                       OOOOOOOOOOOOOO         OOOOOOOOOOOOOO
                      DOOOOOOOOOOOOOOoooooooooOOOOOOOOOOOOOO
                      OOOOOOOOOOO|               |OOOOOOOOOOZ
                      OOOOOOOOOOO|               |OOOOOOOOOOO
                      OOOOOOOOOOO|               |OOOOOOOOOOO
                      OOOOOOOOOOO|  |         |  |OOOOOOOOOOO
                      DOOOOOOOOOO|  |         |  |OOOOOOOOOO
                       OOOOOOOOOO|  |         |  |OOOOOOOOOO
                       DOOOOOOOO(( ))         (( ))OOOOOOOO
                        OOOOOOOOOOOOO    _    |OOOOOOOOOOOO
                         OOOOOOOOOOO|   | |   |OOOOOOOOOOO
                          OOOOOOOOOO|   | |   |OOOOOOOOOZ
                           8OOOOOOO______|______OOOOOOOO
                             OOOOOOOOOOOOOOOOOOOOOOOOZ
                               OOOOOOOOOOOOOOOOOOOOO
                                  OOOOOOOOOOOOOOO


# RailsConf 2013 Intro Track

Source for the application used in the April 2013, 2013 RailsConf talk:

[Test-Driven Development: Tools, Techniques, and Discipline][3]

## Setup

Clone the git repo and run the setup script:

    git clone git@github.com:harlow/railsconf_intro_track.git
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
