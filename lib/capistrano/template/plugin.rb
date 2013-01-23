module Capistrano
  module Template
    module Plugin
      def render(template)
        content = File.read(File.join(template_path, template))
        ERB.new(content).result(chain.instance_eval { binding })
      end

      def template_bindings
        case self[:template_bindings].class.name
        when 'Hash'
          [Bindings::HashBinding.new(fetch(:template_bindings))]
        else
          [Bindings::CapistranoBinding.new(self)]
        end
      end

      private

      def chain
        @__template_chain ||= Bindings::Chain.new(*template_bindings)
      end
    end
  end
end
