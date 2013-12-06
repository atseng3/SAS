class User < ActiveRecord::Base
  attr_accessible :name, :email, :phone_number, :position, :manager_id
  
  validates :name, :email, :phone_number, :position, :presence => true
  validates :session_token, :presence => true
  
  after_initialize :ensure_session_token
  
  validates :position, :inclusion => {in: %w(manager staff), 
            message: "%{value} is not a valid position"}

  belongs_to :manager, 
             :primary_key => :id, 
             :foreign_key => :manager_id, 
             :class_name => 'User'
             
  has_many :staff, 
           :primary_key => :id, 
           :foreign_key => :manager_id, 
           :class_name => 'User'
           
  def self.generate_session_token
    SecureRandom::urlsafe_base64(16)
  end
  
  def reset_session_token!
    self.session_token = self.class.generate_session_token
    self.save!
  end
  
  def ensure_session_token
    self.session_token ||= self.class.generate_session_token
  end
end
