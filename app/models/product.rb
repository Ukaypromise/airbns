class Product < ApplicationRecord
    # mount_uploader :image, ImageUploader
    belongs_to :user, optional: true
    has_one_attached :image

    validates :brand, :model, presence: true
    validates :description, length: { in: 3..200 }
    validates :name, length: { in: 3..50 }
    validates :price, presence: true, numericality: { greater_than: 0 }

    CONDITION = %w{New Excellent Used Fair Poor}
    CATEGORY = %w{Fashion Phones Accesories Health Beauty Electronics Computing Groceries Home}
end
