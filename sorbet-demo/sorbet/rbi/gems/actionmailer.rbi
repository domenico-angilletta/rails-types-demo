# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/actionmailer/all/actionmailer.rbi
#
# actionmailer-7.0.1

module ActionMailer
  def self.eager_load!; end
  def self.gem_version; end
  def self.version; end
  extend ActiveSupport::Autoload
end
module ActionMailer::VERSION
end
class ActionMailer::Railtie < Rails::Railtie
end
class ActionMailer::Collector
  include AbstractController::Collector
end
class ActionMailer::LogSubscriber < ActiveSupport::LogSubscriber
end
module ActionMailer::Rescuable
  extend ActiveSupport::Concern
  include ActiveSupport::Rescuable
end
module ActionMailer::Rescuable::ClassMethods
end
module ActionMailer::DeliveryMethods
  extend ActiveSupport::Concern
end
module ActionMailer::DeliveryMethods::ClassMethods
end
class ActionMailer::MessageDelivery < Delegator
end
module ActionMailer::Parameterized
  extend ActiveSupport::Concern
end
module ActionMailer::Parameterized::ClassMethods
end
class ActionMailer::Parameterized::Mailer
end
class ActionMailer::Parameterized::MessageDelivery < ActionMailer::MessageDelivery
end
module ActionMailer::Previews
  extend ActiveSupport::Concern
end
module ActionMailer::Previews::ClassMethods
end
class ActionMailer::Preview
  extend ActiveSupport::DescendantsTracker
end
class ActionMailer::InlinePreviewInterceptor
  include Base64
end
module ActionMailer::MailHelper
end
class ActionMailer::MailDeliveryJob < ActiveJob::Base
end
class ActionMailer::Base < AbstractController::Base
  extend AbstractController::Caching::ClassMethods
  extend AbstractController::Caching::ConfigMethods
  extend AbstractController::Caching::Fragments::ClassMethods
  extend AbstractController::Callbacks::ClassMethods
  extend AbstractController::Helpers::ClassMethods
  extend AbstractController::UrlFor::ClassMethods
  extend ActionMailer::DeliveryMethods::ClassMethods
  extend ActionMailer::Parameterized::ClassMethods
  extend ActionMailer::Previews::ClassMethods
  extend ActionMailer::Rescuable::ClassMethods
  extend ActionView::Layouts::ClassMethods
  extend ActionView::Rendering::ClassMethods
  extend ActionView::ViewPaths::ClassMethods
  extend ActiveSupport::Callbacks::ClassMethods
  extend ActiveSupport::DescendantsTracker
  extend ActiveSupport::Rescuable::ClassMethods
  extend Anonymous_Module_22
  include AbstractController::AssetPaths
  include AbstractController::Caching
  include AbstractController::Caching::Fragments
  include AbstractController::Callbacks
  include AbstractController::Helpers
  include AbstractController::Logger
  include AbstractController::Rendering
  include AbstractController::Translation
  include AbstractController::UrlFor
  include ActionDispatch::Routing::RouteSet::MountedHelpers
  include ActionDispatch::Routing::UrlFor
  include ActionDispatch::Routing::UrlFor
  include ActionMailer::DeliveryMethods
  include ActionMailer::Parameterized
  include ActionMailer::Previews
  include ActionMailer::Rescuable
  include ActionView::Layouts
  include ActionView::Rendering
  include ActionView::ViewPaths
  include ActionView::ViewPaths
  include ActiveSupport::Benchmarkable
  include ActiveSupport::Callbacks
  include ActiveSupport::Rescuable
end
module ActionMailer::Base::HelperMethods
  include ActionMailer::MailHelper
  include Anonymous_Module_4
end
class ActionMailer::Base::NullMail
end
class ActionMailer::Base::LateAttachmentsProxy < SimpleDelegator
end
module Anonymous_Module_22
end
