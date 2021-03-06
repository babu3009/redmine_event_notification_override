# Load the normal Rails helper
require File.expand_path(File.dirname(__FILE__) + '/../../../../test/test_helper')

# Ensure that we are using the temporary fixture path
Engines::Testing.set_fixture_path

# Helpers
class Test::Unit::TestCase
  def configure_plugin(fields={})
    Setting.plugin_redmine_event_notification_override = fields.stringify_keys
  end

  def setup_plugin_configuration
    configure_plugin({
                       'enabled' => '0',
                       'notify_users_of_their_own_changes' => ''
                     })
  end
end
