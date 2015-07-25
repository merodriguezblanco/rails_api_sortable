# RailsApiSortable

Sorting behavior for Rails APIs

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rails_api_sortable', git: 'git@cagit.careerbuilder.com:zwelch/rails_api_sortable.git'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install 'rails_api_sortable', git: 'git@cagit.careerbuilder.com:zwelch/rails_api_sortable.git'

## Usage

RailsApiSortable adds a `sort_by` method to `ActionController::Base` or `ActionController::API` if you're using [rails-api](https://github.com/rails-api/rails-api). 

`sort_by` combines sort and sort_direction query string parameters to be used by ActiveRecord.

```ruby
# /users?sort=name
User.order(sort_by) #=> User.order(name: :asc)

# /users?sort=name&sort_direction=asc
User.order(sort_by) #=> User.order(name: :asc)

# /users?sort=name&sort_direction=desc
User.order(sort_by) #=> User.order(name: :desc)
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Add tests for your feature.
4. Add your feature.
5. Commit your changes (`git commit -am 'Add some feature'`)
6. Push to the branch (`git push origin my-new-feature`)
7. Create a new Pull Request
