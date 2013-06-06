module ApplicationHelper

  def flash_class(level)
    case level
      when :notice then "alert-success"
      when :error then "alert-error"
      when :alert then ""
    end
  end

  def iconblack(type,css='')
    "<i class=\"icon-#{type}#{' ' + css if css.present?}\"></i> ".html_safe
  end

  def iconwhite(type,css='')
    "<i class=\"icon-#{type} icon-white#{' ' + css if css.present?}\"></i> ".html_safe
  end

  def yt_client
    @yt_client ||= YouTubeIt::Client.new(:username => YouTubeITConfig.username,
                                         :password => YouTubeITConfig.password,
                                         :dev_key => YouTubeITConfig.dev_key)
  end

end
