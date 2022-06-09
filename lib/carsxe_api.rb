# frozen_string_literal: true
require 'json'
require 'dotenv/load'

require_relative "carsxe_api/version"

require_relative "carsxe_api/client"

module CarsxeApi
  class Error < StandardError; end

end
