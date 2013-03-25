module ApplicationHelper
  def login_nav
    nav = ""
    if @auth.present?
      nav += "<li>#{link_to('Logout', '/login', :method => :delete, :remote => true, :class => 'button tiny alert')}</li>"
      if @auth.is_admin == true
        nav += "<li class='divider'></li>"
        nav += "<li class='has-dropdown'>#{link_to('Zeppelins', zeppelins_path, :class => 'button tiny')}"
        nav += "<ul class='dropdown'>"
        nav += "<li>#{link_to('Create New Zeppelin', new_zeppelin_path)}</li>"
        @zeppelins.each do |zeppelin|
          nav += "<li>#{link_to(zeppelin.name, '#')}</li>"
        end
        nav += "</ul>"
        nav += "</li>"
        nav += "<li class='divider'></li>"
        nav += "<li class='has-dropdown'>#{link_to('Voyages', voyages_path, :class => 'button tiny')}"
        nav += "<ul class='dropdown'>"
        nav += "<li>#{link_to('Create New Voyage', new_voyage_path)}</li>"
        @voyages.each do |voyage|
          nav += "<li>#{link_to(voyage.code, voyage)}</li>"
        end
        nav += "</ul>"
        nav += "</li>"
        nav += "<li class='divider'></li>"
      else
        nav += "<li class='divider'></li>"
        # nav += "<li>#{link_to('My Voyages', '#', :class => 'button tiny')}</li>"
        # nav += "<li class='divider'></li>"
        nav += "<li class='has-dropdown'>#{link_to('Find Voyages', voyages_path, :class => 'button tiny')}"
        nav += "<ul class='dropdown'>"
        @voyages.each do |voyage|
          nav += "<li>#{link_to(voyage.code, voyage)}</li>"
        end
        nav += "</ul>"
        nav += "</li>"
        nav += "<li class='divider'></li>"
      end
    else
      nav += "<li>#{link_to('Register', new_traveler_path, :remote => true, :class => 'button tiny')}</li>"
      nav += "<li class='divider'></li>"
      nav += "<li>#{link_to('Login', '/login', :remote => true, :class => 'button tiny')}</li>"
      nav += "<li class='divider'></li>"
    end
    nav
  end
end
