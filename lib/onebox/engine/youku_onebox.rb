module Onebox
  module Engine
    class YoukuOnebox
      include Engine
      include StandardEmbed

      matches_regexp(/^http:\/\/(?:v\.youku\.com|player\.youku\.com)\/.+$/)

      def video_id
        match = @url.match(/^https?:\/\/(v\.youku\.com\/v_show\/id_|player\.youku\.com\/player\.php\/sid\/)([a-zA-Z0-9_\-]{13})(\.html|\/v\.swf)\?*.*$/)
        match && match[2]
      end

      def placeholder_html
        "<img src='data:image/jpg;base64,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' width='533' height='301'>"
      end

      def to_html
        "<iframe height=\"498\" width=\"510\" src=\"http://player.youku.com/embed/#{video_id}\" frameborder=\"0\" allowfullscreen></iframe>"
      end
    end
  end
end
