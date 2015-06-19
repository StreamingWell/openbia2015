class Firstinteractive

  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :question1, :question2, :question3

  validates :question1, :question2, :question3, presence: true

  validates :question1, :question2, :question3, presence: true

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end

end