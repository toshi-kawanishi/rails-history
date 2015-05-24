require 'rails_history/version'

module RailsHistory
  module RailsExt
    module Generator
      def self.prepended(base)
        base.singleton_class.class_eval { prepend(ClassMethods) }
      end

      module ClassMethods
        def invoke(namespace, args = ARGV, config = {})
          super

          history_file_path = Rails.root.join('.rails_history')
          command = [].tap do |a|
            a << 'bundle exec' if ENV['BUNDLE_GEMFILE'].present?
            a << 'rails'

            if config[:behavior] == :revoke
              a << 'destroy'
            else
              a << 'generate'
            end

            a << namespace
            a << args
          end.join(' ')

          file = File.open(history_file_path, 'a')
          file.puts(command)
        end
      end
    end
  end

  class Railtie < ::Rails::Railtie
    initializer 'rails_history' do
      require 'rails/generators'
      Rails::Generators.send(:prepend, RailsHistory::RailsExt::Generator)
    end
  end
end
