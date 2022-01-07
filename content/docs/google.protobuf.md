---
title: "Reference: google.protobuf"
---
## Message Types 

### FileDescriptorSet
The protocol compiler can output a FileDescriptorSet containing the .proto
files it parses.

#### Fields


##### file (repeated  [google.protobuf.FileDescriptorProto](#filedescriptorproto))


### FileDescriptorProto
Describes a complete .proto file.

#### Fields


##### name (optional  `string`)

##### package (optional  `string`)

##### dependency (repeated  `string`)
Names of files imported by this file.
##### public_dependency (repeated  `int32`)
Indexes of the public imported files in the dependency list above.
##### weak_dependency (repeated  `int32`)
Indexes of the weak imported files in the dependency list.
For Google-internal migration only. Do not use.
##### message_type (repeated  [google.protobuf.DescriptorProto](#descriptorproto))
All top-level definitions in this file.
##### enum_type (repeated  [google.protobuf.EnumDescriptorProto](#enumdescriptorproto))

##### service (repeated  [google.protobuf.ServiceDescriptorProto](#servicedescriptorproto))

##### extension (repeated  [google.protobuf.FieldDescriptorProto](#fielddescriptorproto))

##### options (optional  [google.protobuf.FileOptions](#fileoptions))

##### source_code_info (optional  [google.protobuf.SourceCodeInfo](#sourcecodeinfo))
This field contains optional information about the original source code.
You may safely remove this entire field without harming runtime
functionality of the descriptors -- the information is needed only by
development tools.
##### syntax (optional  `string`)
The syntax of the proto file.
The supported values are "proto2" and "proto3".

### DescriptorProto
Describes a message type.

#### Fields


##### name (optional  `string`)

##### field (repeated  [google.protobuf.FieldDescriptorProto](#fielddescriptorproto))

##### extension (repeated  [google.protobuf.FieldDescriptorProto](#fielddescriptorproto))

##### nested_type (repeated  [google.protobuf.DescriptorProto](#descriptorproto))

##### enum_type (repeated  [google.protobuf.EnumDescriptorProto](#enumdescriptorproto))

##### extension_range (repeated  [google.protobuf.DescriptorProto.ExtensionRange](#descriptorprotoextensionrange))

##### oneof_decl (repeated  [google.protobuf.OneofDescriptorProto](#oneofdescriptorproto))

##### options (optional  [google.protobuf.MessageOptions](#messageoptions))

##### reserved_range (repeated  [google.protobuf.DescriptorProto.ReservedRange](#descriptorprotoreservedrange))

##### reserved_name (repeated  `string`)
Reserved field names, which may not be used by fields in the same message.
A given name may only be reserved once.

### DescriptorProto.ExtensionRange


#### Fields


##### start (optional  `int32`)

##### end (optional  `int32`)

##### options (optional  [google.protobuf.ExtensionRangeOptions](#extensionrangeoptions))


### DescriptorProto.ReservedRange


#### Fields


##### start (optional  `int32`)

##### end (optional  `int32`)


### ExtensionRangeOptions


#### Fields


##### uninterpreted_option (repeated  [google.protobuf.UninterpretedOption](#uninterpretedoption))
The parser stores options it doesn't recognize here. See above.

### FieldDescriptorProto
Describes a field within a message.

#### Fields


##### name (optional  `string`)

##### number (optional  `int32`)

##### label (UNHANDLED | TYPE)

##### type (UNHANDLED | TYPE)
If type_name is set, this need not be set.  If both this and type_name
are set, this must be one of TYPE_ENUM, TYPE_MESSAGE or TYPE_GROUP.
##### type_name (optional  `string`)
For message and enum types, this is the name of the type.  If the name
starts with a '.', it is fully-qualified.  Otherwise, C++-like scoping
rules are used to find the type (i.e. first the nested types within this
message are searched, then within the parent, on up to the root
namespace).
##### extendee (optional  `string`)
For extensions, this is the name of the type being extended.  It is
resolved in the same manner as type_name.
##### default_value (optional  `string`)
For numeric types, contains the original text representation of the value.
For booleans, "true" or "false".
For strings, contains the default text contents (not escaped in any way).
For bytes, contains the C escaped value.  All bytes >= 128 are escaped.
TODO(kenton):  Base-64 encode?
##### oneof_index (optional  `int32`)
If set, gives the index of a oneof in the containing type's oneof_decl
list.  This field is a member of that oneof.
##### json_name (optional  `string`)
JSON name of this field. The value is set by protocol compiler. If the
user has set a "json_name" option on this field, that option's value
will be used. Otherwise, it's deduced from the field's name by converting
it to camelCase.
##### options (optional  [google.protobuf.FieldOptions](#fieldoptions))

##### proto3_optional (optional  `bool`)
If true, this is a proto3 "optional". When a proto3 field is optional, it
tracks presence regardless of field type.

When proto3_optional is true, this field must be belong to a oneof to
signal to old proto3 clients that presence is tracked for this field. This
oneof is known as a "synthetic" oneof, and this field must be its sole
member (each proto3 optional field gets its own synthetic oneof). Synthetic
oneofs exist in the descriptor only, and do not generate any API. Synthetic
oneofs must be ordered after all "real" oneofs.

For message fields, proto3_optional doesn't create any semantic change,
since non-repeated message fields always track presence. However it still
indicates the semantic detail of whether the user wrote "optional" or not.
This can be useful for round-tripping the .proto file. For consistency we
give message fields a synthetic oneof also, even though it is not required
to track presence. This is especially important because the parser can't
tell if a field is a message or an enum, so it must always create a
synthetic oneof.

Proto2 optional fields do not set this flag, because they already indicate
optional with `LABEL_OPTIONAL`.

### OneofDescriptorProto
Describes a oneof.

#### Fields


##### name (optional  `string`)

##### options (optional  [google.protobuf.OneofOptions](#oneofoptions))


### EnumDescriptorProto
Describes an enum type.

#### Fields


##### name (optional  `string`)

##### value (repeated  [google.protobuf.EnumValueDescriptorProto](#enumvaluedescriptorproto))

##### options (optional  [google.protobuf.EnumOptions](#enumoptions))

##### reserved_range (repeated  [google.protobuf.EnumDescriptorProto.EnumReservedRange](#enumdescriptorprotoenumreservedrange))
Range of reserved numeric values. Reserved numeric values may not be used
by enum values in the same enum declaration. Reserved ranges may not
overlap.
##### reserved_name (repeated  `string`)
Reserved enum value names, which may not be reused. A given name may only
be reserved once.

### EnumDescriptorProto.EnumReservedRange


#### Fields


##### start (optional  `int32`)

##### end (optional  `int32`)


### EnumValueDescriptorProto
Describes a value within an enum.

#### Fields


##### name (optional  `string`)

##### number (optional  `int32`)

##### options (optional  [google.protobuf.EnumValueOptions](#enumvalueoptions))


### ServiceDescriptorProto
Describes a service.

#### Fields


##### name (optional  `string`)

##### method (repeated  [google.protobuf.MethodDescriptorProto](#methoddescriptorproto))

##### options (optional  [google.protobuf.ServiceOptions](#serviceoptions))


### MethodDescriptorProto
Describes a method of a service.

#### Fields


##### name (optional  `string`)

##### input_type (optional  `string`)
Input and output type names.  These are resolved in the same way as
FieldDescriptorProto.type_name, but must refer to a message type.
##### output_type (optional  `string`)

##### options (optional  [google.protobuf.MethodOptions](#methodoptions))

##### client_streaming (optional  `bool`)
Identifies if client streams multiple client messages
##### server_streaming (optional  `bool`)
Identifies if server streams multiple server messages

### FileOptions


#### Fields


##### java_package (optional  `string`)
Sets the Java package where classes generated from this .proto will be
placed.  By default, the proto package is used, but this is often
inappropriate because proto packages do not normally start with backwards
domain names.
##### java_outer_classname (optional  `string`)
Controls the name of the wrapper Java class generated for the .proto file.
That class will always contain the .proto file's getDescriptor() method as
well as any top-level extensions defined in the .proto file.
If java_multiple_files is disabled, then all the other classes from the
.proto file will be nested inside the single wrapper outer class.
##### java_multiple_files (optional  `bool`)
If enabled, then the Java code generator will generate a separate .java
file for each top-level message, enum, and service defined in the .proto
file.  Thus, these types will *not* be nested inside the wrapper class
named by java_outer_classname.  However, the wrapper class will still be
generated to contain the file's getDescriptor() method as well as any
top-level extensions defined in the file.
##### java_generate_equals_and_hash (optional  `bool`)
This option does nothing.
##### java_string_check_utf8 (optional  `bool`)
If set true, then the Java2 code generator will generate code that
throws an exception whenever an attempt is made to assign a non-UTF-8
byte sequence to a string field.
Message reflection will do the same.
However, an extension field still accepts non-UTF-8 byte sequences.
This option has no effect on when used with the lite runtime.
##### optimize_for (UNHANDLED | TYPE)

##### go_package (optional  `string`)
Sets the Go package where structs generated from this .proto will be
placed. If omitted, the Go package will be derived from the following:
  - The basename of the package import path, if provided.
  - Otherwise, the package statement in the .proto file, if present.
  - Otherwise, the basename of the .proto file, without extension.
##### cc_generic_services (optional  `bool`)
Should generic services be generated in each language?  "Generic" services
are not specific to any particular RPC system.  They are generated by the
main code generators in each language (without additional plugins).
Generic services were the only kind of service generation supported by
early versions of google.protobuf.

Generic services are now considered deprecated in favor of using plugins
that generate code specific to your particular RPC system.  Therefore,
these default to false.  Old code which depends on generic services should
explicitly set them to true.
##### java_generic_services (optional  `bool`)

##### py_generic_services (optional  `bool`)

##### php_generic_services (optional  `bool`)

##### deprecated (optional  `bool`)
Is this file deprecated?
Depending on the target platform, this can emit Deprecated annotations
for everything in the file, or it will be completely ignored; in the very
least, this is a formalization for deprecating files.
##### cc_enable_arenas (optional  `bool`)
Enables the use of arenas for the proto messages in this file. This applies
only to generated classes for C++.
##### objc_class_prefix (optional  `string`)
Sets the objective c class prefix which is prepended to all objective c
generated classes from this .proto. There is no default.
##### csharp_namespace (optional  `string`)
Namespace for generated classes; defaults to the package.
##### swift_prefix (optional  `string`)
By default Swift generators will take the proto package and CamelCase it
replacing '.' with underscore and use that to prefix the types/symbols
defined. When this options is provided, they will use this value instead
to prefix the types/symbols defined.
##### php_class_prefix (optional  `string`)
Sets the php class prefix which is prepended to all php generated classes
from this .proto. Default is empty.
##### php_namespace (optional  `string`)
Use this option to change the namespace of php generated classes. Default
is empty. When this option is empty, the package name will be used for
determining the namespace.
##### php_metadata_namespace (optional  `string`)
Use this option to change the namespace of php generated metadata classes.
Default is empty. When this option is empty, the proto file name will be
used for determining the namespace.
##### ruby_package (optional  `string`)
Use this option to change the package of ruby generated classes. Default
is empty. When this option is not set, the package name will be used for
determining the ruby package.
##### uninterpreted_option (repeated  [google.protobuf.UninterpretedOption](#uninterpretedoption))
The parser stores options it doesn't recognize here.
See the documentation for the "Options" section above.

### MessageOptions


#### Fields


##### message_set_wire_format (optional  `bool`)
Set true to use the old proto1 MessageSet wire format for extensions.
This is provided for backwards-compatibility with the MessageSet wire
format.  You should not use this for any other reason:  It's less
efficient, has fewer features, and is more complicated.

The message must be defined exactly as follows:
  message Foo {
    option message_set_wire_format = true;
    extensions 4 to max;
  }
Note that the message cannot have any defined fields; MessageSets only
have extensions.

All extensions of your type must be singular messages; e.g. they cannot
be int32s, enums, or repeated messages.

Because this is an option, the above two restrictions are not enforced by
the protocol compiler.
##### no_standard_descriptor_accessor (optional  `bool`)
Disables the generation of the standard "descriptor()" accessor, which can
conflict with a field of the same name.  This is meant to make migration
from proto1 easier; new code should avoid fields named "descriptor".
##### deprecated (optional  `bool`)
Is this message deprecated?
Depending on the target platform, this can emit Deprecated annotations
for the message, or it will be completely ignored; in the very least,
this is a formalization for deprecating messages.
##### map_entry (optional  `bool`)
Whether the message is an automatically generated map entry type for the
maps field.

For maps fields:
    map<KeyType, ValueType> map_field = 1;
The parsed descriptor looks like:
    message MapFieldEntry {
        option map_entry = true;
        optional KeyType key = 1;
        optional ValueType value = 2;
    }
    repeated MapFieldEntry map_field = 1;

Implementations may choose not to generate the map_entry=true message, but
use a native map in the target language to hold the keys and values.
The reflection APIs in such implementations still need to work as
if the field is a repeated message field.

NOTE: Do not set the option in .proto files. Always use the maps syntax
instead. The option should only be implicitly set by the proto compiler
parser.
##### uninterpreted_option (repeated  [google.protobuf.UninterpretedOption](#uninterpretedoption))
The parser stores options it doesn't recognize here. See above.

### FieldOptions


#### Fields


##### ctype (UNHANDLED | TYPE)
The ctype option instructs the C++ code generator to use a different
representation of the field than it normally would.  See the specific
options below.  This option is not yet implemented in the open source
release -- sorry, we'll try to include it in a future version!
##### packed (optional  `bool`)
The packed option can be enabled for repeated primitive fields to enable
a more efficient representation on the wire. Rather than repeatedly
writing the tag and type for each element, the entire array is encoded as
a single length-delimited blob. In proto3, only explicit setting it to
false will avoid using packed encoding.
##### jstype (UNHANDLED | TYPE)
The jstype option determines the JavaScript type used for values of the
field.  The option is permitted only for 64 bit integral and fixed types
(int64, uint64, sint64, fixed64, sfixed64).  A field with jstype JS_STRING
is represented as JavaScript string, which avoids loss of precision that
can happen when a large value is converted to a floating point JavaScript.
Specifying JS_NUMBER for the jstype causes the generated JavaScript code to
use the JavaScript "number" type.  The behavior of the default option
JS_NORMAL is implementation dependent.

This option is an enum to permit additional types to be added, e.g.
goog.math.Integer.
##### lazy (optional  `bool`)
Should this field be parsed lazily?  Lazy applies only to message-type
fields.  It means that when the outer message is initially parsed, the
inner message's contents will not be parsed but instead stored in encoded
form.  The inner message will actually be parsed when it is first accessed.

This is only a hint.  Implementations are free to choose whether to use
eager or lazy parsing regardless of the value of this option.  However,
setting this option true suggests that the protocol author believes that
using lazy parsing on this field is worth the additional bookkeeping
overhead typically needed to implement it.

This option does not affect the public interface of any generated code;
all method signatures remain the same.  Furthermore, thread-safety of the
interface is not affected by this option; const methods remain safe to
call from multiple threads concurrently, while non-const methods continue
to require exclusive access.


Note that implementations may choose not to check required fields within
a lazy sub-message.  That is, calling IsInitialized() on the outer message
may return true even if the inner message has missing required fields.
This is necessary because otherwise the inner message would have to be
parsed in order to perform the check, defeating the purpose of lazy
parsing.  An implementation which chooses not to check required fields
must be consistent about it.  That is, for any particular sub-message, the
implementation must either *always* check its required fields, or *never*
check its required fields, regardless of whether or not the message has
been parsed.
##### deprecated (optional  `bool`)
Is this field deprecated?
Depending on the target platform, this can emit Deprecated annotations
for accessors, or it will be completely ignored; in the very least, this
is a formalization for deprecating fields.
##### weak (optional  `bool`)
For Google-internal migration only. Do not use.
##### uninterpreted_option (repeated  [google.protobuf.UninterpretedOption](#uninterpretedoption))
The parser stores options it doesn't recognize here. See above.

### OneofOptions


#### Fields


##### uninterpreted_option (repeated  [google.protobuf.UninterpretedOption](#uninterpretedoption))
The parser stores options it doesn't recognize here. See above.

### EnumOptions


#### Fields


##### allow_alias (optional  `bool`)
Set this option to true to allow mapping different tag names to the same
value.
##### deprecated (optional  `bool`)
Is this enum deprecated?
Depending on the target platform, this can emit Deprecated annotations
for the enum, or it will be completely ignored; in the very least, this
is a formalization for deprecating enums.
##### uninterpreted_option (repeated  [google.protobuf.UninterpretedOption](#uninterpretedoption))
The parser stores options it doesn't recognize here. See above.

### EnumValueOptions


#### Fields


##### deprecated (optional  `bool`)
Is this enum value deprecated?
Depending on the target platform, this can emit Deprecated annotations
for the enum value, or it will be completely ignored; in the very least,
this is a formalization for deprecating enum values.
##### uninterpreted_option (repeated  [google.protobuf.UninterpretedOption](#uninterpretedoption))
The parser stores options it doesn't recognize here. See above.

### ServiceOptions


#### Fields


##### deprecated (optional  `bool`)
Is this service deprecated?
Depending on the target platform, this can emit Deprecated annotations
for the service, or it will be completely ignored; in the very least,
this is a formalization for deprecating services.
##### uninterpreted_option (repeated  [google.protobuf.UninterpretedOption](#uninterpretedoption))
The parser stores options it doesn't recognize here. See above.

### MethodOptions


#### Fields


##### deprecated (optional  `bool`)
Is this method deprecated?
Depending on the target platform, this can emit Deprecated annotations
for the method, or it will be completely ignored; in the very least,
this is a formalization for deprecating methods.
##### idempotency_level (UNHANDLED | TYPE)

##### uninterpreted_option (repeated  [google.protobuf.UninterpretedOption](#uninterpretedoption))
The parser stores options it doesn't recognize here. See above.

### UninterpretedOption
A message representing a option the parser does not recognize. This only
appears in options protos created by the compiler::Parser class.
DescriptorPool resolves these when building Descriptor objects. Therefore,
options protos in descriptor objects (e.g. returned by Descriptor::options(),
or produced by Descriptor::CopyTo()) will never have UninterpretedOptions
in them.

#### Fields


##### name (repeated  [google.protobuf.UninterpretedOption.NamePart](#uninterpretedoptionnamepart))

##### identifier_value (optional  `string`)
The value of the uninterpreted option, in whatever type the tokenizer
identified it as during parsing. Exactly one of these should be set.
##### positive_int_value (optional  `uint64`)

##### negative_int_value (optional  `int64`)

##### double_value (optional  `double`)

##### string_value (optional  `bytes`)

##### aggregate_value (optional  `string`)


### UninterpretedOption.NamePart


#### Fields


##### name_part ( `string`)

##### is_extension ( `bool`)


### SourceCodeInfo
Encapsulates information about the original source file from which a
FileDescriptorProto was generated.

#### Fields


##### location (repeated  [google.protobuf.SourceCodeInfo.Location](#sourcecodeinfolocation))
A Location identifies a piece of source code in a .proto file which
corresponds to a particular definition.  This information is intended
to be useful to IDEs, code indexers, documentation generators, and similar
tools.

For example, say we have a file like:
  message Foo {
    optional string foo = 1;
  }
Let's look at just the field definition:
  optional string foo = 1;
  ^       ^^     ^^  ^  ^^^
  a       bc     de  f  ghi
We have the following locations:
  span   path               represents
  [a,i)  [ 4, 0, 2, 0 ]     The whole field definition.
  [a,b)  [ 4, 0, 2, 0, 4 ]  The label (optional).
  [c,d)  [ 4, 0, 2, 0, 5 ]  The type (string).
  [e,f)  [ 4, 0, 2, 0, 1 ]  The name (foo).
  [g,h)  [ 4, 0, 2, 0, 3 ]  The number (1).

Notes:
- A location may refer to a repeated field itself (i.e. not to any
  particular index within it).  This is used whenever a set of elements are
  logically enclosed in a single code segment.  For example, an entire
  extend block (possibly containing multiple extension definitions) will
  have an outer location whose path refers to the "extensions" repeated
  field without an index.
- Multiple locations may have the same path.  This happens when a single
  logical declaration is spread out across multiple places.  The most
  obvious example is the "extend" block again -- there may be multiple
  extend blocks in the same scope, each of which will have the same path.
- A location's span is not always a subset of its parent's span.  For
  example, the "extendee" of an extension declaration appears at the
  beginning of the "extend" block and is shared by all extensions within
  the block.
- Just because a location's span is a subset of some other location's span
  does not mean that it is a descendant.  For example, a "group" defines
  both a type and a field in a single declaration.  Thus, the locations
  corresponding to the type and field and their components will overlap.
- Code which tries to interpret locations should probably be designed to
  ignore those that it doesn't understand, as more types of locations could
  be recorded in the future.

### SourceCodeInfo.Location


#### Fields


##### path (repeated  `int32`)

##### span (repeated  `int32`)

##### leading_comments (optional  `string`)

##### trailing_comments (optional  `string`)

##### leading_detached_comments (repeated  `string`)


### GeneratedCodeInfo
Describes the relationship between generated code and its original source
file. A GeneratedCodeInfo message is associated with only one generated
source file, but may contain references to different source .proto files.

#### Fields


##### annotation (repeated  [google.protobuf.GeneratedCodeInfo.Annotation](#generatedcodeinfoannotation))
An Annotation connects some span of text in generated code to an element
of its generating .proto file.

### GeneratedCodeInfo.Annotation


#### Fields


##### path (repeated  `int32`)

##### source_file (optional  `string`)

##### begin (optional  `int32`)

##### end (optional  `int32`)


## Enums 

### Type


#### TYPE_DOUBLE


#### TYPE_FLOAT


#### TYPE_INT64


#### TYPE_UINT64


#### TYPE_INT32


#### TYPE_FIXED64


#### TYPE_FIXED32


#### TYPE_BOOL


#### TYPE_STRING


#### TYPE_GROUP


#### TYPE_MESSAGE


#### TYPE_BYTES


#### TYPE_UINT32


#### TYPE_ENUM


#### TYPE_SFIXED32


#### TYPE_SFIXED64


#### TYPE_SINT32


#### TYPE_SINT64


### Label


#### LABEL_OPTIONAL


#### LABEL_REQUIRED


#### LABEL_REPEATED


### OptimizeMode


#### SPEED


#### CODE_SIZE


#### LITE_RUNTIME


### CType


#### STRING


#### CORD


#### STRING_PIECE


### JSType


#### JS_NORMAL


#### JS_STRING


#### JS_NUMBER


### IdempotencyLevel


#### IDEMPOTENCY_UNKNOWN


#### NO_SIDE_EFFECTS


#### IDEMPOTENT


