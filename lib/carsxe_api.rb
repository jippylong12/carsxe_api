# frozen_string_literal: true
require 'json'

begin
  require 'dotenv/load'
rescue
end

require_relative "carsxe_api/version"

require_relative "carsxe_api/client"

module CarsXEApi
  class Error < StandardError; end

end
