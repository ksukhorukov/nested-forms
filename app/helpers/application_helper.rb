module ApplicationHelper
  def remove_link(name, klass)
    link_to name, '#', class: "remove-#{klass}"
  end
end
