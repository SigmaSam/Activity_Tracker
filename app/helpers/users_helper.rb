# rubocop:disable Style/GuardClause
module UsersHelper
  def total_hours_group
    sum = 0
    @group.routines.each do |f|
      sum += f.hours
    end
    sum
  end

  def total_hours_user
    sum = 0
    @user.routines.each do |f|
      sum += f.hours
    end
    sum
  end

  def total_hours_each(arg)
    sum = 0
    arg.routines.each do |f|
      sum += f.hours if f.user_id == current_user.id
    end
    sum
  end

  def external_group(arg)
    if arg.groups.empty?
      'External'
    else
      arg.groups.last.name
    end
  end

  def avatar(arg)
    if arg.avatar.attached?
      (image_tag current_user.avatar, class: 'item_icon',
                                      onerror: "this.error=null;this.src='").html_safe
    end
  end
end
# rubocop:enable Style/GuardClause
