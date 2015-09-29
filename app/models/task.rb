class Task < ActiveRecord::Base
  def completed
    self.status == 0? '[]' : '[X]'
  end

  def complete
    self.status = 1
    self.save
  end
end