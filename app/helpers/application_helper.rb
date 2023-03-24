module ApplicationHelper
  # Use the Controller#Action to determine the current page
  def nav_bar_content(controller_name, action_name)
    case "#{controller_name}##{action_name}"
    when 'groups#index'
      'Categories of different kinds'
    when 'transracts#index'
      'Plan Transactions following own budget'
    when 'devise/sessions#new'
      'Login'
    when 'devise/registrations#new'
      'Register'
    when 'groups#new' && 'transracts#new'
      'details'
    else
      ''
    end
  end
end
