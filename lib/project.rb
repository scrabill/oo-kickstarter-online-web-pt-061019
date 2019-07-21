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
    binding.pry
    backer.back_project(self)

    self.backers
  end
end
