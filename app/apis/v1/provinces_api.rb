class V1::ProvincesApi < Grape::API

  namespace :provinces do
    desc "获取所有省份", {
      entity: ProvinceEntity
    }
    params do
    end
    get  do
      provinces = Province.all
      present provinces, with: ProvinceEntity
    end

    
    desc "获取省下市", {
      entity: CityEntity
    }
    params do
      requires :id, type: Integer
    end
    get ":id/cities" do
      cities = Province.find(params[:id]).cities
      present cities, with: CityEntity
    end

  end
end
