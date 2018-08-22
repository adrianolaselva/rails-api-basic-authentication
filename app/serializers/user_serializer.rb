class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :created_at

  has_many :posts

  def say_hello
    "Hello #{object.email}!"
  end

end