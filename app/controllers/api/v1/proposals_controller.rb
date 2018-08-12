class Api::V1::ProposalsController < ApplicationController
  skip_before_action :verify_authenticity_token, :only => [:search]

  def index
    render json: Proposal.all
  end

  def show
    render json: Proposal.find(params[:id])
  end
end
