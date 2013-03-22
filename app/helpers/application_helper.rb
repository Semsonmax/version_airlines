module ApplicationHelper
  def login_nav
    nav = ""
    if @auth.present?
      nav += "<li>#{link_to('Logout', '/login', :method => :delete, :remote => true, :class => 'button tiny alert')}</li>"
    else
      nav += "<li>#{link_to('Register', '/traveler/new', :remote => true, :class => 'button tiny')}</li>"
      nav += "<li class='divider'></li>"
      nav += "<li>#{link_to('Login', '/login', :remote => true, :class => 'button tiny')}</li>"
      nav += "<li class='divider'></li>"
    end
    nav
  end
end
