# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/loofah/all/loofah.rbi
#
# loofah-2.13.0

module Loofah
end
module Loofah::MetaHelpers
end
module Loofah::Elements
end
module Loofah::HTML5
end
module Loofah::HTML5::SafeList
end
module Loofah::LibxmlWorkarounds
end
module Loofah::HTML5::Scrub
end
class Loofah::ScrubberNotFound < RuntimeError
end
class Loofah::Scrubber
end
module Loofah::Scrubbers
end
class Loofah::Scrubbers::Strip < Loofah::Scrubber
end
class Loofah::Scrubbers::Prune < Loofah::Scrubber
end
class Loofah::Scrubbers::Escape < Loofah::Scrubber
end
class Loofah::Scrubbers::Whitewash < Loofah::Scrubber
end
class Loofah::Scrubbers::NoFollow < Loofah::Scrubber
end
class Loofah::Scrubbers::NoOpener < Loofah::Scrubber
end
class Loofah::Scrubbers::NewlineBlockElements < Loofah::Scrubber
end
class Loofah::Scrubbers::Unprintable < Loofah::Scrubber
end
module Loofah::ScrubBehavior
end
module Loofah::ScrubBehavior::Node
end
module Loofah::ScrubBehavior::NodeSet
end
module Loofah::TextBehavior
end
module Loofah::DocumentDecorator
end
module Loofah::XML
end
class Loofah::XML::Document < Nokogiri::XML::Document
  include Loofah::DocumentDecorator
  include Loofah::ScrubBehavior::Node
end
class Loofah::XML::DocumentFragment < Nokogiri::XML::DocumentFragment
end
module Loofah::HTML
end
class Loofah::HTML::Document < Nokogiri::HTML4::Document
  include Loofah::DocumentDecorator
  include Loofah::ScrubBehavior::Node
  include Loofah::TextBehavior
end
class Loofah::HTML::DocumentFragment < Nokogiri::HTML4::DocumentFragment
  include Loofah::TextBehavior
end
