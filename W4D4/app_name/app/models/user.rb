class User < ApplicationRecord


  validates :username, presence: true
  validates :password_digest, presence: { message: 'Password cannot be blank' }
  validates :session_token, presence: true
  validates :password, length: { minimum: 6, allow_nil: true }
  before_validation :ensure_session_token

  class << self  #singleton scope
    def find_by_credentials(username, password)
      @user ||= User.find(username: username, password: password)
    end

    def generate_session_token
      SecureRandom::urlsafe_base64(16)
    end

  end #exit singleton scope



  def reset_session_token!
    session_token = User.generate_session_token
    save!
    session_token
  end

  def ensure_session_token
    self.session_token ||= User.generate_session_token
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

end
