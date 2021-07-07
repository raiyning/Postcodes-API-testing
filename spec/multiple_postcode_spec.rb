require 'spec_helper'
describe Postcodesio do

  context 'requesting information from the single service works correctly' do
    before(:all) do
      @multiple_postcode_service = Postcodesio.new.multiple_postcode_service
      @multiple_postcode_service.multiple_code_request("IG50QL","OX49 5NU")
    end

    it 'should respond with a status code of 200 for ok repsponse' do
    expect(@multiple_postcode_service.retrieve_status_code).to eq 200
    # p @single_postcode_service.retrieve_status_code
    end
    
  end


end