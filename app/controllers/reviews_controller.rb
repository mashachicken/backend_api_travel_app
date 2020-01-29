
class ReviewsController < ApplicationController
  has_one_attached :review_cover_photo
  def index
    @reviews = {"opinion": "GREAT !!!LOVE IT !!!1."}
    json_response(@reviews)
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end
end
