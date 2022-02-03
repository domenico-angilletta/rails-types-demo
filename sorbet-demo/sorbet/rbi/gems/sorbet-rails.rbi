# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/sorbet-rails/all/sorbet-rails.rbi
#
# sorbet-rails-0.7.27

module SorbetRails
end
module SorbetRails::SorbetUtils
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
  include Kernel
end
class SorbetRails::SorbetUtils::ParsedParamDef < T::Struct
  extend T::Props::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Serializable::ClassMethods
end
class SorbetRails::SorbetUtils::UnexpectedParam < StandardError
end
class SorbetRails::MailerRbiFormatter
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class SorbetRails::JobRbiFormatter
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class SorbetRails::Config
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class SorbetRails::Railtie < Rails::Railtie
end
module SorbetRails::ModelColumnUtils
  extend T::Helpers
  extend T::InterfaceWrapper::Helpers
  extend T::Private::Abstract::Hooks
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class SorbetRails::ModelColumnUtils::ColumnType < T::Struct
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Props::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Serializable::ClassMethods
  extend T::Sig
end
module SorbetRails::ModelUtils
  extend T::Helpers
  extend T::InterfaceWrapper::Helpers
  extend T::Private::Abstract::Hooks
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
  include SorbetRails::ModelColumnUtils
end
module SorbetRails::ModelPlugins
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
  include Kernel
end
class SorbetRails::ModelPlugins::Base < Parlour::Plugin
  extend T::Helpers
  extend T::InterfaceWrapper::Helpers
  extend T::Private::Abstract::Hooks
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
  include SorbetRails::ModelUtils
end
module SorbetRails::Utils
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class SorbetRails::ModelPlugins::ActiveRecordEnum < SorbetRails::ModelPlugins::Base
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
end
class SorbetRails::ModelPlugins::ActiveRecordQuerying < SorbetRails::ModelPlugins::Base
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
end
class SorbetRails::ModelPlugins::ActiveRelationWhereNot < SorbetRails::ModelPlugins::Base
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
end
class SorbetRails::ModelPlugins::ActiveRecordNamedScope < SorbetRails::ModelPlugins::Base
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
end
class SorbetRails::ModelPlugins::ActiveRecordAttribute < SorbetRails::ModelPlugins::Base
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
end
class SorbetRails::ModelPlugins::ActiveRecordAssoc < SorbetRails::ModelPlugins::Base
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
end
class SorbetRails::ModelPlugins::ActiveRecordSerializedAttribute < SorbetRails::ModelPlugins::Base
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
end
class SorbetRails::ModelPlugins::CustomFinderMethods < SorbetRails::ModelPlugins::Base
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
end
class SorbetRails::ModelPlugins::EnumerableCollections < SorbetRails::ModelPlugins::Base
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
end
class SorbetRails::ModelPlugins::ActiveStorageMethods < SorbetRails::ModelPlugins::Base
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
end
class SorbetRails::ModelPlugins::UnrecognizedPluginName < StandardError
end
class SorbetRails::ModelRbiFormatter
  extend SorbetRails::ModelPlugins
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
  include SorbetRails::ModelUtils
end
module ITypeAssert
  extend T::Generic
  extend T::InterfaceWrapper::Helpers
  extend T::Private::Abstract::Hooks
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
module TypeAssertImpl
end
class TA
  extend T::Generic
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
  include ITypeAssert
end
class ActiveRecordOverrides
  extend Singleton::SingletonClassMethods
  include Singleton
end
class SorbetRails::TypedEnumConfig < T::Struct
  extend T::Props::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Serializable::ClassMethods
end
module ActiveRecord::Enum
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
  include Kernel
end
class ActiveRecord::Enum::MultipleEnumsDefinedError < StandardError
end
class ActiveRecord::Enum::ConflictTypedEnumNameError < StandardError
end
module SorbetRails::CustomFinderMethods
end
module SorbetRails::PluckToTStruct
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class SorbetRails::PluckToTStruct::UnexpectedType < StandardError
end
class SorbetRails::PluckToTStruct::UnexpectedAssociations < StandardError
end
