class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :gender, presence: true, inclusion: { in: %w(M F),
    message: 'must be "M" or "F"' }
  validates :height, presence: true, numericality: true
  validates :weight, presence: true, numericality: true

  has_many :sport_bgs, dependent: :destroy
  has_many :proposals, dependent: :destroy

  def admin?
    role == 'admin'
  end

  def admin_access
    if !user_signed_in || !current_user.admin?
      flash[:notice] = 'You do not have access to this page.'
      redirect_to root_path
    end
  end
end
