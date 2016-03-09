class V1::CitiesApi < Grape::API

  helpers do
    def logger
       V1::AreasApi.logger
    end
  end

  namespace :cities do
    params do 
    end
    get do 
      cities = City.all
      present cities, with: CityEntity

    end
 
    params do 
      requires :id, type: String
    end
    get ":id/districts" do 
      districts = City.find(params[:id]).districts
      present districts, with: DistrictEntity

    end
  end
end
