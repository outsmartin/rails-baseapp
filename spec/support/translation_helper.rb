# include into controller-scenarios to check for missing translations
module TranslationHelper

  extend ActiveSupport::Concern
  included do
    after :each do
      begin
        if defined? response and response
          if response.body
            if response.body.to_s[/translation missing: (.*)"/]
              fail "Es gibt fehlende Uebersetzung #{$1}"
            end
          end
        end
      rescue
      end
    end
  end
end

