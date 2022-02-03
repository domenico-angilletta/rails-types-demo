# typed: false
class ExternalServicesController < ApplicationController
  before_action :set_external_service, only: %i[ show update destroy ]

  # GET /external_services
  def index
    @external_services = ExternalService.all

    render json: @external_services
  end

  # GET /external_services/1
  def show
    render json: @external_service
  end

  # POST /external_services
  def create
    @external_service = ExternalService.new(external_service_params)

    if @external_service.save
      render json: @external_service, status: :created, location: @external_service
    else
      render json: @external_service.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /external_services/1
  def update
    if @external_service.update(external_service_params)
      render json: @external_service
    else
      render json: @external_service.errors, status: :unprocessable_entity
    end
  end

  # DELETE /external_services/1
  def destroy
    @external_service.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_external_service
      @external_service = ExternalService.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def external_service_params
      params.require(:external_service).permit(:title, :description)
    end
end
