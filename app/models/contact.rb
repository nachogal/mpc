class Contact < ActiveRecord::Base

  before_create :randomize_id

  validates :name, presence: true,
                    length: { maximum: 100 }

  validates :email, presence: true,
                    email_format: true,
                    length: { maximum: 128 }

  validates :description, presence: true

  private
  def randomize_id
    begin
    self.id = SecureRandom.random_number(1_000_000)
    end while Contact.where(id: self.id).exists?
  end

end
