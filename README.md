# Wangfu

Record our happy memories of wangfu.

## Dependency

* Ruby 1.9.2+
* Rails ~> 3.2.0
* Mysql
* Bootstrap 2

## Setup Guide

In order to run the system (for demo and development purposes), you may follow the following steps:

    git clone git@github.com:camelsong/wangfu.git
    cd wangfu
    cp config/database.yml.sample config/database.yml
    bundle install
    rake db:create
    rake db:migrate
    rake db:seed
    rails s

Done, fire up your browser and browse to `http://localhost:3000/` :)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
