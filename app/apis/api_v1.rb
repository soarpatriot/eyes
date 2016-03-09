class ApiV1 < Grape::API

  format :json

  before do
    I18n.locale = params[:locale] || "zh-CN" # if I18n.locale_available?(params[:locale])
  end

  get do
    {
      version: "v1"
    }
  end

  rescue_from ActiveRecord::RecordNotFound do |e|
    msg = {
      error: e.message.gsub(/\ \[.*/, "")
    }.to_json
    Rack::Response.new(msg, 404, {"Content-type" => "application/json"}).finish
  end

  version :v1

  mount V1::ProvincesApi
  mount V1::CollectsApi
  mount V1::CitiesApi

  # add_swagger_documentation api_version: "v1"

end

