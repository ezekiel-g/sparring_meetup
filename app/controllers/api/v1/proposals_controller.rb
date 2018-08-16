class Api::V1::ProposalsController < ApplicationController
  skip_before_action :verify_authenticity_token, :only => [:search]

  def index
    @proposals = Proposal.all
    render json: @proposals
  end

  def show
    @proposal = Proposal.find(params[:id])
    render json: @proposal
  end
end
