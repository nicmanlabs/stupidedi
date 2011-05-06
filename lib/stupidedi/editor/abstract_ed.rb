module Stupidedi
  module Editor

    class AbstractEd
      include Inspect

      # @return [Config]
      abstract :config

      def edit(id)
        if config.editor.enabled?(id)
        # puts "#{self.class.name.split("::").last}.edit(#{id})"
          yield
        end
      end

      def rewrite(id)
        if config.editor.enabled?(id)
          yield
        end
      end
    end

    class << AbstractEd
      def edit(*args)
      end

      def rewrite(*args)
      end
    end

  end
end