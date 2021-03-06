module Mollie
  module API
    module Object
      class Customer < Base
        attr_accessor :id,
                      :mode,
                      :name,
                      :email,
                      :locale,
                      :metadata,
                      :recently_used_methods,
                      :created_datetime

        def created_datetime=(created_datetime)
          @created_datetime = Time.parse(created_datetime.to_s)
        end

        def recently_used_methods=(methods)
          @recently_used_methods = Array(methods).map(&:to_s)
        end

        def metadata=(metadata)
          @metadata = OpenStruct.new(metadata) if metadata.is_a?(Hash)
        end
      end
    end
  end
end
