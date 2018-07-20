module ApplicationHelper
  def display_flash
    flash.each do |type, msg|
      type = if type == 'notice'
               'success'
             elsif type == 'alert'
               'danger'
             end
      concat content_tag(:div, msg, class: "alert alert-#{type}")
    end
    nil
  end
end
