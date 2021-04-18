module ApplicationHelper
    def flash_class(level)
        case level.to_s
            when "notice" then "alert alert-info"
            when "success" then "alert alert-success"
            when "error" then "alert alert-danger"
            when "alert" then "alert alert-error"
        end
      end

    def get_user_profile_picture
        current_user&.profile&.avatar&.url.present? ? current_user&.profile&.avatar&.url : "users/img_avatar.png"
    end
    
    def fields_editable?(user)
        current_user.id == user.id
    end

    def top_navbar_elements(name, url, classes_json)
        link_to(url, class: classes_json[:anchor_class]) do
        content_tag(:i, "", class: "#{classes_json[:icon_class]} mr-1") +
        name
      end
    end
end
