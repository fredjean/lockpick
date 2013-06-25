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

    5 * * * * 

## First Run

The script uses [Ara's Main](https://github.com/ahoward/main) gem to run. It will open up an editor with a template
configuration:

```ruby
```

It will then proceed to pull the keys from GitHub. The configuration is stored under ```~/.lockpick/config.yml```


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
