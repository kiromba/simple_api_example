class Api::V1::SuppliersController < ApplicationController
  before_action :set_supplier, only: [:show, :update, :destroy]

  def index
    @suppliers = Supplier.all
    json_response(@suppliers)
  end

  def show
    json_response(@supplier)
  end

  def create
    @supplier = Supplier.create!(suppliers_params)
    json_response(@supplier, :created)
  end

  def update
    @supplier.update(suppliers_params)
    head :no_content
  end

  def destroy
    @supplier.destroy
    head :no_content
  end

  private

  def suppliers_params
    params.permit(:name, :image, :street, :rooms, :conference_capacity, :distance_airport, :distance_city, :distance_highway, :distance_train, :feedback, :latitude, :longitude)
  end

  def set_supplier
    @supplier = Supplier.find(params[:id])
  end
end
