# rubocop:disable Layout/LineLength
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
      ((image_tag current_user.avatar.variant(resize_to_limit: [100, 100]))).html_safe
    else
      (image_tag 'http://2.bp.blogspot.com/-BVgTOe82aaI/VZln4Ny-LPI/AAAAAAAAA6Y/hKchnruxKtg/s1600/2000px-User_icon_2.svg.png', size: '200x200').html_safe
    end
  end
end
# rubocop:enable Layout/LineLength
