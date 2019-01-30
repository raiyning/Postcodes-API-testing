require 'httparty'
require 'json'

class SinglePostcodeService
  include HTTParty

  # inclulde base url(unique resource idetifier)
  # allows you not keep reapeating the base url for the api. method from httparty
  base_uri 'https://api.postcodes.io'

  def single_code_request(postcode)
    @single_postcode_data = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
  end

  def print_results 
    p @single_postcode_data
  end

  def retrieve_result
    @single_postcode_data['result']
  end

  def retrieve_postcode
      retrieve_result['postcode']
  end

  def retrieve_status_code
    @single_postcode_data['status']
  end

  def retrieve_result_postcode
    retrieve_result['postcode'].length
  end

end

