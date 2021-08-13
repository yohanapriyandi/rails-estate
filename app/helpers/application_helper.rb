module ApplicationHelper
    def profile_picture account, width = 100
        thumb = account.image.present? ? account.image.thumb.url : "placeholdler.png"
        image_tag thumb, width: width, class: "profile-pic rounded-circle"
    end
end
