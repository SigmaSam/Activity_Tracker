module GroupsHelper
  def routine_check(arg)
    if arg.routines.last.nil?
      render 'noroutine'
    else
      routine_name(arg) + routine_owner(arg) + routine_time(arg)
    end
  end

  def routine_name(arg)
    "<p>Last Activity</p><br/>#{arg.routines.last.name} <br>".html_safe unless arg.routines.last.nil?
  end

  def routine_owner(arg)
    "<p>By</p><br/>#{arg.routines.last.user.name} <br>".html_safe unless arg.routines.last.nil?
  end

  def routine_time(arg)
    "<p>During</p><br/>#{arg.routines.last.hours} <p>Hours</p>".html_safe unless arg.routines.last.nil?
  end
end
