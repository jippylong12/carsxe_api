# frozen_string_literal: true

require "test_helper"

class TestCarsXEApi < Minitest::Test
  def setup
    @client = CarsXEApi::Client.new(ENV['CARS_XE_API_KEY'])
    @test_vin = 'JTDZN3EU0E3298500'
  end

  def test_specifications
    data = @client.specifications(@test_vin)
    assert data[:success] == true
  end

  def test_market_value
    data = @client.market_value(@test_vin)
    assert data[:success] == true
  end

  def test_history
    data = @client.history(@test_vin)
    assert data[:success] == true
  end
end
