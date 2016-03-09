require "spec_helper"

describe V1::ProvincesApi do

  
  let(:provinces_path) { "/v1/provinces" }
  def province_cities_path province 
    "v1/provinces/#{province.id}/cities"
  end 
   
  context "provice" do 
    it "get all provinces" do

      create_list :province, 2

      res = json_get provinces_path 
      expect(res.size).to eq(2)
    end
  end
  context "cities" do 
    it "get one province cities" do

      province = create :province
      cities = create_list :city, 4, province: province
      res = json_get province_cities_path(province), id: province.id
      expect(res.size).to eq(4)
    end
  end


end
