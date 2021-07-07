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

  def retrieve_results
    @single_postcode_data['result']
  end

  def retrieve_postcode
      retrieve_results['postcode']
  end

  def retrieve_status_code
    @single_postcode_data['status']
  end

  def retrieve_result_postcode
    retrieve_results['postcode'].length
  end

  def retrieve_quality
    retrieve_results['quality']
  end

  def retrieve_eastings
    retrieve_results['eastings']
  end

  def retrieve_northings
    retrieve_results['northings']
  end

  def retrieve_country
    retrieve_results['country']
  end

  def retrieve_nhs_ha
    retrieve_results['nhs_ha']
  end

  def retrieve_longitude
    retrieve_results['longitude']
  end

  def retrieve_latitude
    retrieve_results['latitude']
  end

  def retrieve_european_electoral_region
    retrieve_results['european_electoral_region']
  end

  def retrieve_primary_care_trust
    retrieve_results['primary_care_trust']
  end

  def retrieve_region
    retrieve_results['region']
  end

  def retrieve_lsoa
    retrieve_results['lsoa']
  end

  def retrieve_msoa
    retrieve_results['msoa']
  end

  def retrieve_incode
    retrieve_results['incode']
  end

  def retrieve_outcode
    retrieve_results['outcode']
  end

  def retrieve_parliamentary_constituency
    retrieve_results['parliamentary_constituency']
  end

  def retrieve_admin_district
    retrieve_results['admin_district']
  end

  def retrieve_parish
    retrieve_results['parish']
  end

  def retrieve_admin_county
    retrieve_results['admin_county']
  end

  def retrieve_admin_ward
    retrieve_results['admin_ward']
  end

  def retrieve_ced
    retrieve_results['ced']
  end

  def retrieve_ccg
    retrieve_results['ccg']
  end

  def retrieve_nuts
    retrieve_results['nuts']
  end

  def retrieve_codes
    retrieve_results['codes']
  end

  def retrieve_codes_admin_district
    retrieve_codes['admin_district']
  end

  def retrieve_codes_admin_county
    retrieve_codes['admin_county']
  end

  def retrieve_codes_admin_ward
    retrieve_codes['admin_ward']
  end

  def retrieve_codes_parish
    retrieve_codes['parish']
  end

  def retrieve_codes_parliamentary_constituency
    retrieve_codes['parliamentary_constituency']
  end

  def retrieve_codes_ccg
    retrieve_codes['ccg']
  end

  def retrieve_codes_ced
    retrieve_codes['ced']
  end

  def retrieve_codes_nuts
    retrieve_codes['nuts']
  end

end

