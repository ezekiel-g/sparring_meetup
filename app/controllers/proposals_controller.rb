class ProposalsController < ApplicationController
  before_action :authorize_user, except: [:index, :show, :new, :create]

  def index
    @proposals = Proposal.all
  end

  def show
    @proposal = Proposal.find(params[:id])
    @sport = @proposal.sport
    @user = @proposal.user
  end

  def new
    @proposal = Proposal.new
    @sports = Sport.all
  end

  def create
    @proposal = Proposal.new(proposal_params)
    @proposal.user = current_user
    @sports = Sport.all

    if @proposal.save
      flash[:notice] = 'Proposal created successfully'
      redirect_to proposals_path
    else
      flash[:notice] = @proposal.errors.full_messages.join(' * ')
      render :new
    end
  end

  def edit
    @proposal = Proposal.find(params[:id])
    @sports = Sport.all
  end

  def update
    @proposal = Proposal.find(params[:id])
    @sports = Sport.all

    if current_user.id == proposal.user_id || current_user.admin?
      if proposal.update(proposal_params)
        flash[:notice] = 'Proposal updated successfully'
        redirect_to @proposal
      else
        flash.now[:notice] = @proposal.errors.full_messages.join(' * ')
        render :edit
      end
    end
  end

  def destroy
    @proposal = Proposal.find(params[:id])

    if current_user.id == proposal.user_id || current_user.admin?
      proposal.destroy
      flash[:notice] = "Proposal successfully deleted"
      redirect_to root_path
    else
      flash[:notice] = "This is not your proposal."
      redirect_to root_path
    end
  end

  private

  def authorize_user
    if !user_signed_in?
      flash[:notice] = "You do not have access to this page."
      redirect_to root_path
    end
  end

  def proposal_params
    params.require(:proposal).permit(:description, :sport_id)
  end

  def get_sport_name

  end
end
