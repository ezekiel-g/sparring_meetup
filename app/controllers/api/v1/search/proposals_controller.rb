class Api::V1::Search::ProposalsController < ApplicationController
 skip_before_action :verify_authenticity_token, :only => [:search]
  def search
    @proposals = Proposal.find_by_sql("SELECT * FROM proposals WHERE description ILIKE '%#{params[:search_string]}%'")

    render json: @proposals, root: "proposals"
  end
end
