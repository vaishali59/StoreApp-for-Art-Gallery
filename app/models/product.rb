class Product < ApplicationRecord
	has_many :lineitems
	
	before_destroy(:make_sure_no_line_items_in_the_current_cart)
	
	validates( :name, :description, :image, presence: true)
	validates( :price, numericality: {greater_than_or_equal_to: 0.01})
	validates( :name, uniqueness: true)
	validates( :image, allow_blank: true, format: {with: %r{\.(gif|jpg|png|jpeg)\Z}i, message: "file must be GIF/JPG/JPEG/PNG"})
	
	def make_sure_no_line_items_in_the_current_cart
		if self.lineitems.empty?
			return true
		else
			error.add(:base, 'Line items present')
			return false
		end
	end
end
