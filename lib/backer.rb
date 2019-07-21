require "pry"
class Backer

  attr_reader :name

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def backed_projects
    @backed_projects
  end

  def back_project(project)
    @backed_projects << project
    binding.pry
    project.add_backer(self)

    # add_backer(self)
    # More Advanced #back_project also adds the backer to the project's backers array
  end
end
