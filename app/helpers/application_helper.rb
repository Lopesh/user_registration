module ApplicationHelper
    def get_user_profile_picture
        current_user&.profile&.avatar&.url.present? ? current_user&.profile&.avatar&.url : "users/user-5.jpg"
    end
    
    def top_navbar_elements(name, url, classes_json)
        link_to(url, class: classes_json[:anchor_class]) do
        content_tag(:i, "", class: "#{classes_json[:icon_class]} mr-1") +
        name
      end
    end
end
