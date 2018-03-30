module ApplicationHelper
  def login_helper
    if admin_signed_in?
      link_to "Edit Profile", (edit_admin_registration_path)
      link_to "Logout", (destroy_admin_session_path), method: :delete   
    else
      (link_to "Register", new_admin_registration_path) +
      (link_to "Sign In", new_admin_session_path)   
    end
	end
end
