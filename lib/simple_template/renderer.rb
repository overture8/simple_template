module SimpleTemplate
  class Renderer
    def self.parse(template_string, data)
      data.each do |identifier, value|
        template_string.gsub! /%\{#{identifier}\}/, value
      end
      template_string
    end
  end
end
