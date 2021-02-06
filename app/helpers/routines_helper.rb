module RoutinesHelper
  def user_check(routine)
    routine.user.name.html_safe if routine.groups.empty?
  end

  def name_check(routine)
    routine.name.html_safe if routine.groups.empty?
  end

  def time_check(routine)
    routine.hours.to_s.html_safe if routine.groups.empty?
  end

  def group_name(routine)
    if routine.groups.last.nil?
      'External'
    else
      routine.groups.last.name
    end
  end
end
