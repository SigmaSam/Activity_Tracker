module ApplicationHelper
  def logged_in?
    if current_user.nil?
      (link_to 'Log In', log_in_path, class: 'home_button').html_safe +
        (link_to 'Sign Up', new_user_path, class: 'home_button').html_safe
    else
      (link_to 'My Activities', user_path(current_user),
               class: 'home_button').html_safe + (link_to 'External Activities', routines_path,
                                                          class: 'home_button').html_safe +
        (link_to 'Groups', groups_path, class: 'home_button').html_safe +
        (link_to 'Log Out', sessions_path, method: :delete, class: 'home_button').html_safe
    end
  end
end
