class Comment < ActiveRecord::Base
  belongs_to :post
  before_destroy :time_validation


  def time_validation
    return true if Time.now - created_at <= 2.minutes
    errors.add :base, "No se puede eliminar luego de pasados 2 minutos"
    false
  end
  
  
end
