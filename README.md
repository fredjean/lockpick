# Lockpick

Allowing SSH access to the members of a GitHub team.

## Installation

```lockpick``` is meant to be run as a script. You can either install it via Rubygems:

    $ gem install lockpick

You may need to use ```sudo``` if you are installing against the system Ruby...
    
Or clone this repo:

    $ git clone https://github.com/fredjean/lockpick.git

You will probably need to run ```bundle install``` if you choose that path...

## Usage

```lockpick``` is a simple script that uses the GitHub APIs to retrieve the list of verified, public ssh keys for the
members of one or more teams.

All you need to do to run the lockpick script:

    $ lockpick

You can also use cron to run it periodically. Adding the following line to your crontab:

    5 * * * * /usr/local/rbenv/shims/lockpick

## First Run

The script uses [Ara's Main](https://github.com/ahoward/main) gem to run. It will open up an editor with a template
configuration:

```ruby
github:
  token: "github oauth token"
  org: myorg
  team_ids:
    - 123456
default_keys:
  - ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAyflVzdA6S6DUFs4FVID+AJ6xf6125crlB1BlacmPe+Zq25PgaVGPC9L4SlZqEkkK5NOZjhTGnoH6r33Bdb+vECh5rRxn0s37hZI1ayVtjUudaKTZD09JQSKq1q1NOno5NhOAivh1SSqwmFBpPzlo1N1YfW+HphPSkAfHgxP2bZUdvQJTK9l1WlQy2UaMEREL3G/0yfFUnOew3GfHU/B4oHYxjGN41Q/WBQ4pxSGMo5zYufKyrQqKFR+Zsdq6GN4QgwAJzS09EPZXADHyJoZ2wwJuQozQtlLxp2z5YhNTJqQVAJnswLWf/I5oKQV9wgqcQ9OfywUKynweHdPsDyXGpQ== dojo4@dojo4.com
```

It will then proceed to pull the keys from GitHub. The configuration is stored under ```~/.lockpick/config.yml```


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
