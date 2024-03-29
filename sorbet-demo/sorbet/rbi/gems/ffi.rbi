# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/ffi/all/ffi.rbi
#
# ffi-1.15.5

module FFI
end
class FFI::PlatformError < LoadError
end
module FFI::Platform
end
module FFI::DataConverter
end
class FFI::StrPtrConverter
  extend FFI::DataConverter
end
class FFI::NotFoundError < LoadError
end
module FFI::Library
end
class FFI::AbstractMemory
end
class FFI::Pointer < FFI::AbstractMemory
end
class FFI::StructLayout < FFI::Type
end
class FFI::StructLayout::Enum < FFI::StructLayout::Field
end
class FFI::StructLayout::InnerStruct < FFI::StructLayout::Field
end
class FFI::StructLayout::Mapped < FFI::StructLayout::Field
end
class FFI::StructLayoutBuilder
end
class FFI::StructByReference
  include FFI::DataConverter
end
class FFI::Struct
end
class FFI::Struct::ManagedStructConverter < FFI::StructByReference
end
class FFI::Union < FFI::Struct
end
class FFI::ManagedStruct < FFI::Struct
end
module FFI::IO
end
class FFI::AutoPointer < FFI::Pointer
  extend FFI::DataConverter
end
class FFI::AutoPointer::Releaser
end
class FFI::AutoPointer::DefaultReleaser < FFI::AutoPointer::Releaser
end
class FFI::AutoPointer::CallableReleaser < FFI::AutoPointer::Releaser
end
class FFI::VariadicInvoker
end
class FFI::Enums
end
class FFI::Enum
  include FFI::DataConverter
end
class FFI::Bitmask < FFI::Enum
end
