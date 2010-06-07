# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def event_date(time);time.strftime('%a %b %d at %l:%M %p');end
end
