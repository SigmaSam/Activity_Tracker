module GroupsHelper
  def routine_check(arg)
    if arg.routines.where(user_id: current_user.id).last.nil?
      render 'noroutine'
    else
      routine_name(arg)
    end
  end

  # rubocop: disable Style/GuardClause
  def routine_name(arg)
    if arg.routines.last.nil?
      "<p>Your Last Activity</p><br/>#{arg.routines.where(user_id: current_user.id).last.name} <br>".html_safe
    end
  end
  # rubocop: enable Style/GuardClause

  def icon(arg)
    if arg.icon.attached?
      (image_tag arg.icon.variant(resize_to_limit: [200, 200]), class: 'item_icon').html_safe
    else
      (image_tag 'https://placeimg.com/200/200/tech', class: 'item_icon').html_safe
    end
  end
end
