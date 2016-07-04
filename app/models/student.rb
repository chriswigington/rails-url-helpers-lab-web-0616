class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def switch
    if self.active
      #puts "was active: #{active}"
      self.active = false
      #puts "now inactive: #{active}"
    else
      #puts "was inactive: #{active}"
      self.active = true
      #puts "now active: #{active}"
    end
  end

end