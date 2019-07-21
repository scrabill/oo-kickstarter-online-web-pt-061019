require "pry"

class Project

  attr_reader :title

  def initialize(title)
    @title = title
    @backers = []
  end

  def backers
    @backers
  end

  def add_backer(backer)
    @backers << backer
    backer.back_project(self)
    binding.pry
    self.backers
  end
end
