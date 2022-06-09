module CarsxeApi
  class Client
    @@base_url = 'https://api.carsxe.com'
    @@api_key = ''

    def initialize(api_key)
      @@api_key = api_key
      @http = Net::HTTP
    end
  end
end