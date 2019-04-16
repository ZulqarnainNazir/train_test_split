# Train Test Split
In machine learning we usually split data into training data and test data. The training set contains a known output and the model learns on this data in order to be generalized to other data later on. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'train_test_split'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install train_test_split

## Usage
There are two types of splits
#### 1. **train_test_split**

This will split your **data** into traning data and testing data. **Default size of test data will be 0.25**
To use this function read a csv file into 2d array(data) and pass it to **TrainTestSplit::Split.train_test_split**
    like
```ruby
TrainTestSplit::Split.train_test_split(data)
```
This will will return the value of **training_set_X**, **training_set_Y**, **test_set_X**, **test_set_Y** with the training/test ratio of **0.25**
So you can customize this ratio 
```ruby
training_set_X, training_set_Y, test_set_X, test_set_Y = TrainTestSplit::Split.train_validation_test_split(data, 0.2)
```
here **0.20** is ratio of test data and **0.80** will be training data.
#### 2. **train_validation_test_split**
This will split your **data** into three different data sets traning, testing and validation data set. **Default size of test data will be 0.10 and default size of validation data will be 0.15**

To use this function read a csv file into 2d array(data) and pass it to **TrainTestSplit::Split.train_validation_test_split**
    like
```ruby
TrainTestSplit::Split.train_validation_test_split(data)
```
This will will return the value of **training_set_X**, **training_set_Y**, **test_set_X**, **test_set_Y** and also **validation_set_X** and **validation_set_Y** with the training:validation:test of **0.75 : 0.15 : 0.10**
So you can customize this ratio 
```ruby
training_set_X, training_set_Y, validation_set_X, validation_set_Y, test_set_X, test_set_Y = TrainTestSplit::Split.train_validation_test_split(data, 0.2, 0.1)
```
here **0.20** is ratio of validation data and **0.1** ratio of testing data and remaining **0.70** will be training data.
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ZulqarnainNazir/train_test_split. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the TrainTestSplit project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/ZulqarnainNazir/train_test_split/blob/master/CODE_OF_CONDUCT.md).
