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
  end