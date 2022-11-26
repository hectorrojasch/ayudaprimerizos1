class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: [:common, :sailsman, :admin]

  has_many :articles, dependent: :destroy

  after_initialize do
    if self.new_record?
       self.role ||= :common
    end
  
  end

end