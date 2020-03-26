# frozen_string_literal: true
# Application helpers can be called in controllers or models or rendering
module ApplicationHelper
  def browser_type
    agent = request.user_agent
    return 'tablet' if agent =~ /(tablet|ipad)|(android(?!.*mobile))/i
    return 'mobile' if agent =~ /Mobile/

    'desktop'
  end

  def contact_business(contact_string)
    if contact_string.include? 'http'
      redirect_to contact_string
    else
      redirect_to 'tel:' + contact_string
    end
  end
end
