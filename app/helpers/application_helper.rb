module ApplicationHelper
  # Use the Controller#Action to determine the current page
  def nav_bar_content(controller_name, action_name)
    case "#{controller_name}##{action_name}"
    when 'groups#index'
      'Add new Categories of your choice'
    when 'transracts#index'
      'Total Transactions Detail and Total Amount'
    when 'devise/sessions#new'
      'Login'
    when 'devise/registrations#new'
      'Register'
    when 'groups#new'
      'details'
    when 'transracts#new'
      'details'  
    else
      ''
    end
  end
end
