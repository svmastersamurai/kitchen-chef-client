require "kitchen/provisioner/chef_zero"

module Kitchen
  module Provisioner
  # Chef client provisioner.
    class ChefClient < ChefZero
      private
      def local_mode_command
        "#{sudo(config[:chef_client_path])}"
          .tap { |str| str.insert(0, "& ") if powershell_shell? }
      end
    end
  end
end

