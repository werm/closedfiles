class Closedfile < ActiveRecord::Base
  attr_accessible :atty_name, :box_number, :client_name, :cm_number, :destruction_date, :file_number, :matter_name, :scaned, :wallet_qty
  def self.search(search)
    if search
      where('file_number LIKE ? OR client_name LIKE ? OR matter_name LIKE ? OR atty_name LIKE ? OR cm_number LIKE?', "%#{search}%","%#{search}%", "%#{search}%","%#{search}%", "%#{search}%")
    else
      scoped
    end
  end  
end
