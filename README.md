# CarsXE API

An API wrapper for CarsXE

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add carsxe_api

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install carsxe_api

## Usage

#### Declare client

```ruby
client = CarsXEApi::Client.new(ENV['CARS_XE_API_KEY'])
```

#### Plate Decoder

```ruby
data = client.plate_decoder('HOWDY12', 'TX')
```

#### Market Value
```ruby 
data = client.market_value('ENTER_VIN_HERE')
```
## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jippylong12/carsxe_api. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/jippylong12/carsxe_api/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the CarsXEApi project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/jippylong12/carsxe_api/blob/master/CODE_OF_CONDUCT.md).
