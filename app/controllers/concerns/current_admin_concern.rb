module CurrentAdminConcern
  extend ActiveSupport::Concern
  
  def current_admin
    super || guest_admin
  end
  
  def guest_admin
    guest = GuestAdmin.new
    guest.name = 'Guest User'
    guest.first_name = 'Guest'
    guest.last_name = 'User'
    guest.email = 'asdfasdf@asdf.com'
    guest
  end
end