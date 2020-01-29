class PlacesController < ApplicationController
  def index
    @places = {"location": "Portland."}
    json_response(@places)
  end

  def index
    @places = Place.all
    json_response(@places)
  end
  def new
    @place= Place.new
    json_response(@place)
    render :new
  end

  def show
    @place = Place.find(params[:id])
    json_response(@place)
  end

  def create
    @place = Place.create(place_params)
    json_response(@place)
  end

  def update
    @place = Place.find(params[:id])
    @place.update(place_params)
  end

  def destroy
    @place = Place.find(params[:id])
    @place.destroy
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def place_params
    params.permit(:author, :content)
  end
end
