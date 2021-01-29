module GroupsHelper
  def routine_check(arg)
    if arg.routines.where(user_id: current_user.id).last.nil?
      render 'noroutine'
    else
      routine_name(arg)
    end
  end

  def routine_name(arg)
    "<p>Your Last Activity</p><br/>#{arg.routines.where(user_id: current_user.id).last.name} <br>".html_safe unless arg.routines.last.nil?
  end

  def icon(arg)
    if arg.icon.attached?
      (image_tag arg.icon.variant(resize_to_limit: [200, 200]), class: 'item_icon').html_safe
    else
      (image_tag 'https://placeimg.com/200/200/tech', class: 'item_icon').html_safe
    end
  end
end
