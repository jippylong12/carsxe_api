module CarsxeApi
  class Client
    @@base_url = 'https://api.carsxe.com'
    @@api_key = ''

    def initialize(api_key)
      @@api_key = api_key
      @http = Net::HTTP
    end

    def vehicle_plate_decoder(plate, state, options={})
      uri = URI("#{@@base_url}/platedecoder")
      params = {key: @@api_key, plate: plate, state: state}
      params.merge!(options)
      uri.query = URI.encode_www_form(params)
      response = @http.get_response(uri)
      if response.code == "200"
        {
          success: true,
          data: JSON.parse(response.body)
        }
      else
        {
          success: false,
          data: {}
        }
      end
    end

  end
end