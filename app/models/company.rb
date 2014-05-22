class Company < ActiveRecord::Base




  # attr_accessible :email, :password, :password_confirmation

  attr_accessor :password
  before_save :encrypt_password

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email


 has_many :projects
  has_many :responses

  def self.authenticate(email, password)
    company = find_by_email(email)
    if company && company.hashed_password == BCrypt::Engine.hash_secret(password, company.salt_password)
      company
    else
      nil
    end
  end

  def encrypt_password
    if password.present?
      self.salt_password = BCrypt::Engine.generate_salt
      self.hashed_password = BCrypt::Engine.hash_secret(password, salt_password)
    end
  end




  # include BCrypt


  # validates :email, uniqueness: true

  # has_many :projects
  # has_many :responses

  # # setter
  # def password= password_input
  #   # passes the password_input through BCrypt::Password and hashes it
  #   new_password_hash = Password.create(password_input)
  #   # new password hash written to database
  #   self.hashed_password = new_password_hash
  #   self.hashed_password
  # end

  # # getter
  # def password
  #   Password.new(self.hashed_password)
  # end

  # # check's a password
  # def check_password(password_input)
  #   # does the password going in, match the DB pass?
  #   password_input == self.password
  # end

  # #
  # def self.authenticated?(email_input, password_input)
  #   # binding.pry
  #   user = Company.find_by_email(email_input)
  #   if user && user.password == password_input
  #     puts "Authenticated!"
  #     return user
  #   else
  #     puts "Did not authenticate!"
  #     return nil
  #   end
  #   puts "Did not find email"
  #   return nil
  # end


end







