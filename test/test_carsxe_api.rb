# frozen_string_literal: true

require "test_helper"

class TestCarsxeApi < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::CarsxeApi::VERSION
  end

  def test_it_does_something_useful
    client = CarsxeApi::Client.new(ENV['CARS_XE_API_KEY'])
    data = client.plate_decoder('666DDW', 'TX')
    assert data[:success] == false
  end
end
