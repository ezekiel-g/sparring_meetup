class Api::V1::ProposalsController < AppicationController
  def index
    render json: Proposal.all
  end
end
