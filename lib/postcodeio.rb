require_relative 'services/single_postcode_service'
require_relative 'services/multiple_postcode_service'

class Postcodesio

  def single_postcode_service
    SinglePostcodeService.new
  end

  def multiple_postcode_service
    MultiplePostcodeService.new

  end
end

# postcode_api = Postcodesio.new
# puts postcode_api.single_postcode_service.single_code_request('B601JA')
# puts postcode_api.single_postcode_service.retrieve_result('B601JA')
# puts postcode_api.multiple_pÍostcode_service.multiple_postcode_request(["OX49 5NU", "M32 0JG", "NE30 1DP"])