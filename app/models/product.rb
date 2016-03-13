class Product < ActiveRecord::Base
  mount_uploader :img_url

  has_many :line_items
  has_many :orders, through: :line_items
  def timkiem(query)
  	where ('name like "%IU%"')
  end
  scope :ala, -> {where('id > 2')}
  # scope :like(query), ->{where('name like ?', "%#{query}%")}
  def self.like(query)
      if search
        where('name like ?', "%#{query}%")       
      else
        scoped
      end
  end
  before_destroy :ensure_not_referenced_by_any_line_item
  
	#...
  private
  # ensure that there are no line items referencing this product
	  def ensure_not_referenced_by_any_line_item
		if line_items.empty?
		  return true
	  	else
	  	  errors.add(:base, 'Line Items present')
	      return false
	    end
      end
end
