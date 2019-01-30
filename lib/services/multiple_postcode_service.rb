require 'httparty'
require 'json'

class MultiplePostcodeService
  include HTTParty
  base_uri 'https://api.postcodes.io'

  def multiple_postcode_request(postcodes_array)
    @multiple_postcode_data = JSON.parse(self.class.post('/postcodes', body: {"postcodes" => postcodes_array}).body)
  end

  def print_response
    p @multiple_postcode_data
  end
end

# test = MultiplePostcodeService.new
# test.multiple_postcode_request(["OX49 5NU", "M32 0JG", "NE30 1DP"])
# test.print_response

