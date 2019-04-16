require "train_test_split/version"
module TrainTestSplit
	module Split
	  def self.train_test_split(total_data_set, test_size = 0.25)
	  	if test_size > 1.0
		    test_size = 1.0
		  elsif test_size < 0
		    test_size = 0.0
		  end
		  test_set_count = (total_data_set.length * test_size).floor
		  if test_set_count == 0
		    raise StandardError, "Test size resulted in a test set of 0. Increase the test size."
		  elsif test_set_count == total_data_set.length
		    raise StandardError, "Test size resulted in a training set of 0. Decrease the test size."
		  end
			#  shuffle data
		  total_data_set.shuffle!
		  test_set = total_data_set[0..test_set_count]
		  training_set = total_data_set[test_set_count+1..total_data_set.length]
			#  make train data X and Y
			training_set_Y = training_set.map(&:last)
		  training_set.map{|row| row.pop}
			#  make test data X and Y
			test_set_Y = test_set.map(&:last)
		  test_set.map{|row| row.pop}
		  return training_set, training_set_Y, test_set, test_set_Y
	  end

	  def self.train_validation_test_split(total_data_set, validation_size = 0.15, test_size = 0.10)
	  	if test_size > 1.0
		    test_size = 1.0
	  	elsif validation_size > 1.0
		    validation_size = 1.0
		  elsif validation_size < 0
		    validation_size = 0.0
		  elsif test_size < 0
		    test_size = 0.0
		  end
		  test_set_count = (total_data_set.length * test_size).floor
		  validation_size_count = (total_data_set.length * validation_size).floor
		  if test_set_count == 0
		    raise StandardError, "Test size resulted in a test set of 0. Increase the test size."
		  elsif test_set_count == total_data_set.length
		    raise StandardError, "Test size resulted in a training set of 0. Decrease the test size."
		  end
		  if validation_size_count == 0
		    raise StandardError, "validation size resulted in a test set of 0. Increase the validation data size."
		  elsif test_set_count == total_data_set.length
		    raise StandardError, "validation size resulted in a training set of 0. Decrease the validation data size."
		  end
			#  shuffle data
		  total_data_set.shuffle!
		  val_count = test_set_count + validation_size_count
		  test_set = total_data_set[0..test_set_count]
		  validation_set = total_data_set[test_set_count+1..val_count]
		  training_set = total_data_set[val_count+1..total_data_set.length]
			#  make train data X and Y
			training_set_Y = training_set.map(&:last)
		  training_set.map{|row| row.pop}
			#  make test data X and Y
			test_set_Y = test_set.map(&:last)
		  test_set.map{|row| row.pop}
			#  make validation data X and Y
			validation_set_Y = validation_set.map(&:last)
		  validation_set.map{|row| row.pop}
		  return training_set, training_set_Y, validation_set, validation_set_Y, test_set, test_set_Y
	  end
	end
end

