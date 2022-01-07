---
title: "Reference: google.protobuf"
---
## Message Types 

### <span class="codicon codicon-symbol-structure symbol-structure"></span>FileDescriptorSet
The protocol compiler can output a FileDescriptorSet containing the .proto
files it parses.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>file (repeated  [google.protobuf.FileDescriptorProto](#filedescriptorproto))


### <span class="codicon codicon-symbol-structure symbol-structure"></span>FileDescriptorProto
Describes a complete .proto file.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>name (optional  `string`)

##### <span class="codicon codicon-symbol-field symbol-field"></span>package (optional  `string`)

##### <span class="codicon codicon-symbol-field symbol-field"></span>dependency (repeated  `string`)
Names of files imported by this file.
##### <span class="codicon codicon-symbol-field symbol-field"></span>public_dependency (repeated  `int32`)
Indexes of the public imported files in the dependency list above.
##### <span class="codicon codicon-symbol-field symbol-field"></span>weak_dependency (repeated  `int32`)
Indexes of the weak imported files in the dependency list.
For Google-internal migration only. Do not use.
##### <span class="codicon codicon-symbol-field symbol-field"></span>message_type (repeated  [google.protobuf.DescriptorProto](#descriptorproto))
All top-level definitions in this file.
##### <span class="codicon codicon-symbol-field symbol-field"></span>enum_type (repeated  [google.protobuf.EnumDescriptorProto](#enumdescriptorproto))

##### <span class="codicon codicon-symbol-field symbol-field"></span>service (repeated  [google.protobuf.ServiceDescriptorProto](#servicedescriptorproto))

##### <span class="codicon codicon-symbol-field symbol-field"></span>extension (repeated  [google.protobuf.FieldDescriptorProto](#fielddescriptorproto))

##### <span class="codicon codicon-symbol-field symbol-field"></span>options (optional  [google.protobuf.FileOptions](#fileoptions))

##### <span class="codicon codicon-symbol-field symbol-field"></span>source_code_info (optional  [google.protobuf.SourceCodeInfo](#sourcecodeinfo))
This field contains optional information about the original source code.
You may safely remove this entire field without harming runtime
functionality of the descriptors -- the information is needed only by
development tools.
##### <span class="codicon codicon-symbol-field symbol-field"></span>syntax (optional  `string`)
The syntax of the proto file.
The supported values are "proto2" and "proto3".

### <span class="codicon codicon-symbol-structure symbol-structure"></span>DescriptorProto
Describes a message type.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>name (optional  `string`)

##### <span class="codicon codicon-symbol-field symbol-field"></span>field (repeated  [google.protobuf.FieldDescriptorProto](#fielddescriptorproto))

##### <span class="codicon codicon-symbol-field symbol-field"></span>extension (repeated  [google.protobuf.FieldDescriptorProto](#fielddescriptorproto))

##### <span class="codicon codicon-symbol-field symbol-field"></span>nested_type (repeated  [google.protobuf.DescriptorProto](#descriptorproto))

##### <span class="codicon codicon-symbol-field symbol-field"></span>enum_type (repeated  [google.protobuf.EnumDescriptorProto](#enumdescriptorproto))

##### <span class="codicon codicon-symbol-field symbol-field"></span>extension_range (repeated  [google.protobuf.DescriptorProto.ExtensionRange](#descriptorprotoextensionrange))

##### <span class="codicon codicon-symbol-field symbol-field"></span>oneof_decl (repeated  [google.protobuf.OneofDescriptorProto](#oneofdescriptorproto))

##### <span class="codicon codicon-symbol-field symbol-field"></span>options (optional  [google.protobuf.MessageOptions](#messageoptions))

##### <span class="codicon codicon-symbol-field symbol-field"></span>reserved_range (repeated  [google.protobuf.DescriptorProto.ReservedRange](#descriptorprotoreservedrange))

##### <span class="codicon codicon-symbol-field symbol-field"></span>reserved_name (repeated  `string`)
Reserved field names, which may not be used by fields in the same message.
A given name may only be reserved once.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>DescriptorProto.ExtensionRange


#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>start (optional  `int32`)

##### <span class="codicon codicon-symbol-field symbol-field"></span>end (optional  `int32`)

##### <span class="codicon codicon-symbol-field symbol-field"></span>options (optional  [google.protobuf.ExtensionRangeOptions](#extensionrangeoptions))


### <span class="codicon codicon-symbol-structure symbol-structure"></span>DescriptorProto.ReservedRange


#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>start (optional  `int32`)

##### <span class="codicon codicon-symbol-field symbol-field"></span>end (optional  `int32`)


### <span class="codicon codicon-symbol-structure symbol-structure"></span>ExtensionRangeOptions


#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>uninterpreted_option (repeated  [google.protobuf.UninterpretedOption](#uninterpretedoption))
The parser stores options it doesn't recognize here. See above.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>FieldDescriptorProto
Describes a field within a message.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>name (optional  `string`)

##### <span class="codicon codicon-symbol-field symbol-field"></span>number (optional  `int32`)

##### <span class="codicon codicon-symbol-field symbol-field"></span>label (UNHANDLED | TYPE)

##### <span class="codicon codicon-symbol-field symbol-field"></span>type (UNHANDLED | TYPE)
If type_name is set, this need not be set.  If both this and type_name
are set, this must be one of TYPE_ENUM, TYPE_MESSAGE or TYPE_GROUP.
##### <span class="codicon codicon-symbol-field symbol-field"></span>type_name (optional  `string`)
For message and enum types, this is the name of the type.  If the name
starts with a '.', it is fully-qualified.  Otherwise, C++-like scoping
rules are used to find the type (i.e. first the nested types within this
message are searched, then within the parent, on up to the root
namespace).
##### <span class="codicon codicon-symbol-field symbol-field"></span>extendee (optional  `string`)
For extensions, this is the name of the type being extended.  It is
resolved in the same manner as type_name.
##### <span class="codicon codicon-symbol-field symbol-field"></span>default_value (optional  `string`)
For numeric types, contains the original text representation of the value.
For booleans, "true" or "false".
For strings, contains the default text contents (not escaped in any way).
For bytes, contains the C escaped value.  All bytes >= 128 are escaped.
TODO(kenton):  Base-64 encode?
##### <span class="codicon codicon-symbol-field symbol-field"></span>oneof_index (optional  `int32`)
If set, gives the index of a oneof in the containing type's oneof_decl
list.  This field is a member of that oneof.
##### <span class="codicon codicon-symbol-field symbol-field"></span>json_name (optional  `string`)
JSON name of this field. The value is set by protocol compiler. If the
user has set a "json_name" option on this field, that option's value
will be used. Otherwise, it's deduced from the field's name by converting
it to camelCase.
##### <span class="codicon codicon-symbol-field symbol-field"></span>options (optional  [google.protobuf.FieldOptions](#fieldoptions))

##### <span class="codicon codicon-symbol-field symbol-field"></span>proto3_optional (optional  `bool`)
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

### <span class="codicon codicon-symbol-structure symbol-structure"></span>OneofDescriptorProto
Describes a oneof.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>name (optional  `string`)

##### <span class="codicon codicon-symbol-field symbol-field"></span>options (optional  [google.protobuf.OneofOptions](#oneofoptions))


### <span class="codicon codicon-symbol-structure symbol-structure"></span>EnumDescriptorProto
Describes an enum type.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>name (optional  `string`)

##### <span class="codicon codicon-symbol-field symbol-field"></span>value (repeated  [google.protobuf.EnumValueDescriptorProto](#enumvaluedescriptorproto))

##### <span class="codicon codicon-symbol-field symbol-field"></span>options (optional  [google.protobuf.EnumOptions](#enumoptions))

##### <span class="codicon codicon-symbol-field symbol-field"></span>reserved_range (repeated  [google.protobuf.EnumDescriptorProto.EnumReservedRange](#enumdescriptorprotoenumreservedrange))
Range of reserved numeric values. Reserved numeric values may not be used
by enum values in the same enum declaration. Reserved ranges may not
overlap.
##### <span class="codicon codicon-symbol-field symbol-field"></span>reserved_name (repeated  `string`)
Reserved enum value names, which may not be reused. A given name may only
be reserved once.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>EnumDescriptorProto.EnumReservedRange


#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>start (optional  `int32`)

##### <span class="codicon codicon-symbol-field symbol-field"></span>end (optional  `int32`)


### <span class="codicon codicon-symbol-structure symbol-structure"></span>EnumValueDescriptorProto
Describes a value within an enum.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>name (optional  `string`)

##### <span class="codicon codicon-symbol-field symbol-field"></span>number (optional  `int32`)

##### <span class="codicon codicon-symbol-field symbol-field"></span>options (optional  [google.protobuf.EnumValueOptions](#enumvalueoptions))


### <span class="codicon codicon-symbol-structure symbol-structure"></span>ServiceDescriptorProto
Describes a service.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>name (optional  `string`)

##### <span class="codicon codicon-symbol-field symbol-field"></span>method (repeated  [google.protobuf.MethodDescriptorProto](#methoddescriptorproto))

##### <span class="codicon codicon-symbol-field symbol-field"></span>options (optional  [google.protobuf.ServiceOptions](#serviceoptions))


### <span class="codicon codicon-symbol-structure symbol-structure"></span>MethodDescriptorProto
Describes a method of a service.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>name (optional  `string`)

##### <span class="codicon codicon-symbol-field symbol-field"></span>input_type (optional  `string`)
Input and output type names.  These are resolved in the same way as
FieldDescriptorProto.type_name, but must refer to a message type.
##### <span class="codicon codicon-symbol-field symbol-field"></span>output_type (optional  `string`)

##### <span class="codicon codicon-symbol-field symbol-field"></span>options (optional  [google.protobuf.MethodOptions](#methodoptions))

##### <span class="codicon codicon-symbol-field symbol-field"></span>client_streaming (optional  `bool`)
Identifies if client streams multiple client messages
##### <span class="codicon codicon-symbol-field symbol-field"></span>server_streaming (optional  `bool`)
Identifies if server streams multiple server messages

### <span class="codicon codicon-symbol-structure symbol-structure"></span>FileOptions


#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>java_package (optional  `string`)
Sets the Java package where classes generated from this .proto will be
placed.  By default, the proto package is used, but this is often
inappropriate because proto packages do not normally start with backwards
domain names.
##### <span class="codicon codicon-symbol-field symbol-field"></span>java_outer_classname (optional  `string`)
Controls the name of the wrapper Java class generated for the .proto file.
That class will always contain the .proto file's getDescriptor() method as
well as any top-level extensions defined in the .proto file.
If java_multiple_files is disabled, then all the other classes from the
.proto file will be nested inside the single wrapper outer class.
##### <span class="codicon codicon-symbol-field symbol-field"></span>java_multiple_files (optional  `bool`)
If enabled, then the Java code generator will generate a separate .java
file for each top-level message, enum, and service defined in the .proto
file.  Thus, these types will *not* be nested inside the wrapper class
named by java_outer_classname.  However, the wrapper class will still be
generated to contain the file's getDescriptor() method as well as any
top-level extensions defined in the file.
##### <span class="codicon codicon-symbol-field symbol-field"></span>java_generate_equals_and_hash (optional  `bool`)
This option does nothing.
##### <span class="codicon codicon-symbol-field symbol-field"></span>java_string_check_utf8 (optional  `bool`)
If set true, then the Java2 code generator will generate code that
throws an exception whenever an attempt is made to assign a non-UTF-8
byte sequence to a string field.
Message reflection will do the same.
However, an extension field still accepts non-UTF-8 byte sequences.
This option has no effect on when used with the lite runtime.
##### <span class="codicon codicon-symbol-field symbol-field"></span>optimize_for (UNHANDLED | TYPE)

##### <span class="codicon codicon-symbol-field symbol-field"></span>go_package (optional  `string`)
Sets the Go package where structs generated from this .proto will be
placed. If omitted, the Go package will be derived from the following:
  - The basename of the package import path, if provided.
  - Otherwise, the package statement in the .proto file, if present.
  - Otherwise, the basename of the .proto file, without extension.
##### <span class="codicon codicon-symbol-field symbol-field"></span>cc_generic_services (optional  `bool`)
Should generic services be generated in each language?  "Generic" services
are not specific to any particular RPC system.  They are generated by the
main code generators in each language (without additional plugins).
Generic services were the only kind of service generation supported by
early versions of google.protobuf.

Generic services are now considered deprecated in favor of using plugins
that generate code specific to your particular RPC system.  Therefore,
these default to false.  Old code which depends on generic services should
explicitly set them to true.
##### <span class="codicon codicon-symbol-field symbol-field"></span>java_generic_services (optional  `bool`)

##### <span class="codicon codicon-symbol-field symbol-field"></span>py_generic_services (optional  `bool`)

##### <span class="codicon codicon-symbol-field symbol-field"></span>php_generic_services (optional  `bool`)

##### <span class="codicon codicon-symbol-field symbol-field"></span>deprecated (optional  `bool`)
Is this file deprecated?
Depending on the target platform, this can emit Deprecated annotations
for everything in the file, or it will be completely ignored; in the very
least, this is a formalization for deprecating files.
##### <span class="codicon codicon-symbol-field symbol-field"></span>cc_enable_arenas (optional  `bool`)
Enables the use of arenas for the proto messages in this file. This applies
only to generated classes for C++.
##### <span class="codicon codicon-symbol-field symbol-field"></span>objc_class_prefix (optional  `string`)
Sets the objective c class prefix which is prepended to all objective c
generated classes from this .proto. There is no default.
##### <span class="codicon codicon-symbol-field symbol-field"></span>csharp_namespace (optional  `string`)
Namespace for generated classes; defaults to the package.
##### <span class="codicon codicon-symbol-field symbol-field"></span>swift_prefix (optional  `string`)
By default Swift generators will take the proto package and CamelCase it
replacing '.' with underscore and use that to prefix the types/symbols
defined. When this options is provided, they will use this value instead
to prefix the types/symbols defined.
##### <span class="codicon codicon-symbol-field symbol-field"></span>php_class_prefix (optional  `string`)
Sets the php class prefix which is prepended to all php generated classes
from this .proto. Default is empty.
##### <span class="codicon codicon-symbol-field symbol-field"></span>php_namespace (optional  `string`)
Use this option to change the namespace of php generated classes. Default
is empty. When this option is empty, the package name will be used for
determining the namespace.
##### <span class="codicon codicon-symbol-field symbol-field"></span>php_metadata_namespace (optional  `string`)
Use this option to change the namespace of php generated metadata classes.
Default is empty. When this option is empty, the proto file name will be
used for determining the namespace.
##### <span class="codicon codicon-symbol-field symbol-field"></span>ruby_package (optional  `string`)
Use this option to change the package of ruby generated classes. Default
is empty. When this option is not set, the package name will be used for
determining the ruby package.
##### <span class="codicon codicon-symbol-field symbol-field"></span>uninterpreted_option (repeated  [google.protobuf.UninterpretedOption](#uninterpretedoption))
The parser stores options it doesn't recognize here.
See the documentation for the "Options" section above.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>MessageOptions


#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>message_set_wire_format (optional  `bool`)
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
##### <span class="codicon codicon-symbol-field symbol-field"></span>no_standard_descriptor_accessor (optional  `bool`)
Disables the generation of the standard "descriptor()" accessor, which can
conflict with a field of the same name.  This is meant to make migration
from proto1 easier; new code should avoid fields named "descriptor".
##### <span class="codicon codicon-symbol-field symbol-field"></span>deprecated (optional  `bool`)
Is this message deprecated?
Depending on the target platform, this can emit Deprecated annotations
for the message, or it will be completely ignored; in the very least,
this is a formalization for deprecating messages.
##### <span class="codicon codicon-symbol-field symbol-field"></span>map_entry (optional  `bool`)
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
##### <span class="codicon codicon-symbol-field symbol-field"></span>uninterpreted_option (repeated  [google.protobuf.UninterpretedOption](#uninterpretedoption))
The parser stores options it doesn't recognize here. See above.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>FieldOptions


#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>ctype (UNHANDLED | TYPE)
The ctype option instructs the C++ code generator to use a different
representation of the field than it normally would.  See the specific
options below.  This option is not yet implemented in the open source
release -- sorry, we'll try to include it in a future version!
##### <span class="codicon codicon-symbol-field symbol-field"></span>packed (optional  `bool`)
The packed option can be enabled for repeated primitive fields to enable
a more efficient representation on the wire. Rather than repeatedly
writing the tag and type for each element, the entire array is encoded as
a single length-delimited blob. In proto3, only explicit setting it to
false will avoid using packed encoding.
##### <span class="codicon codicon-symbol-field symbol-field"></span>jstype (UNHANDLED | TYPE)
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
##### <span class="codicon codicon-symbol-field symbol-field"></span>lazy (optional  `bool`)
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
##### <span class="codicon codicon-symbol-field symbol-field"></span>deprecated (optional  `bool`)
Is this field deprecated?
Depending on the target platform, this can emit Deprecated annotations
for accessors, or it will be completely ignored; in the very least, this
is a formalization for deprecating fields.
##### <span class="codicon codicon-symbol-field symbol-field"></span>weak (optional  `bool`)
For Google-internal migration only. Do not use.
##### <span class="codicon codicon-symbol-field symbol-field"></span>uninterpreted_option (repeated  [google.protobuf.UninterpretedOption](#uninterpretedoption))
The parser stores options it doesn't recognize here. See above.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>OneofOptions


#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>uninterpreted_option (repeated  [google.protobuf.UninterpretedOption](#uninterpretedoption))
The parser stores options it doesn't recognize here. See above.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>EnumOptions


#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>allow_alias (optional  `bool`)
Set this option to true to allow mapping different tag names to the same
value.
##### <span class="codicon codicon-symbol-field symbol-field"></span>deprecated (optional  `bool`)
Is this enum deprecated?
Depending on the target platform, this can emit Deprecated annotations
for the enum, or it will be completely ignored; in the very least, this
is a formalization for deprecating enums.
##### <span class="codicon codicon-symbol-field symbol-field"></span>uninterpreted_option (repeated  [google.protobuf.UninterpretedOption](#uninterpretedoption))
The parser stores options it doesn't recognize here. See above.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>EnumValueOptions


#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>deprecated (optional  `bool`)
Is this enum value deprecated?
Depending on the target platform, this can emit Deprecated annotations
for the enum value, or it will be completely ignored; in the very least,
this is a formalization for deprecating enum values.
##### <span class="codicon codicon-symbol-field symbol-field"></span>uninterpreted_option (repeated  [google.protobuf.UninterpretedOption](#uninterpretedoption))
The parser stores options it doesn't recognize here. See above.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>ServiceOptions


#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>deprecated (optional  `bool`)
Is this service deprecated?
Depending on the target platform, this can emit Deprecated annotations
for the service, or it will be completely ignored; in the very least,
this is a formalization for deprecating services.
##### <span class="codicon codicon-symbol-field symbol-field"></span>uninterpreted_option (repeated  [google.protobuf.UninterpretedOption](#uninterpretedoption))
The parser stores options it doesn't recognize here. See above.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>MethodOptions


#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>deprecated (optional  `bool`)
Is this method deprecated?
Depending on the target platform, this can emit Deprecated annotations
for the method, or it will be completely ignored; in the very least,
this is a formalization for deprecating methods.
##### <span class="codicon codicon-symbol-field symbol-field"></span>idempotency_level (UNHANDLED | TYPE)

##### <span class="codicon codicon-symbol-field symbol-field"></span>uninterpreted_option (repeated  [google.protobuf.UninterpretedOption](#uninterpretedoption))
The parser stores options it doesn't recognize here. See above.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>UninterpretedOption
A message representing a option the parser does not recognize. This only
appears in options protos created by the compiler::Parser class.
DescriptorPool resolves these when building Descriptor objects. Therefore,
options protos in descriptor objects (e.g. returned by Descriptor::options(),
or produced by Descriptor::CopyTo()) will never have UninterpretedOptions
in them.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>name (repeated  [google.protobuf.UninterpretedOption.NamePart](#uninterpretedoptionnamepart))

##### <span class="codicon codicon-symbol-field symbol-field"></span>identifier_value (optional  `string`)
The value of the uninterpreted option, in whatever type the tokenizer
identified it as during parsing. Exactly one of these should be set.
##### <span class="codicon codicon-symbol-field symbol-field"></span>positive_int_value (optional  `uint64`)

##### <span class="codicon codicon-symbol-field symbol-field"></span>negative_int_value (optional  `int64`)

##### <span class="codicon codicon-symbol-field symbol-field"></span>double_value (optional  `double`)

##### <span class="codicon codicon-symbol-field symbol-field"></span>string_value (optional  `bytes`)

##### <span class="codicon codicon-symbol-field symbol-field"></span>aggregate_value (optional  `string`)


### <span class="codicon codicon-symbol-structure symbol-structure"></span>UninterpretedOption.NamePart


#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>name_part ( `string`)

##### <span class="codicon codicon-symbol-field symbol-field"></span>is_extension ( `bool`)


### <span class="codicon codicon-symbol-structure symbol-structure"></span>SourceCodeInfo
Encapsulates information about the original source file from which a
FileDescriptorProto was generated.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>location (repeated  [google.protobuf.SourceCodeInfo.Location](#sourcecodeinfolocation))
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

### <span class="codicon codicon-symbol-structure symbol-structure"></span>SourceCodeInfo.Location


#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>path (repeated  `int32`)

##### <span class="codicon codicon-symbol-field symbol-field"></span>span (repeated  `int32`)

##### <span class="codicon codicon-symbol-field symbol-field"></span>leading_comments (optional  `string`)

##### <span class="codicon codicon-symbol-field symbol-field"></span>trailing_comments (optional  `string`)

##### <span class="codicon codicon-symbol-field symbol-field"></span>leading_detached_comments (repeated  `string`)


### <span class="codicon codicon-symbol-structure symbol-structure"></span>GeneratedCodeInfo
Describes the relationship between generated code and its original source
file. A GeneratedCodeInfo message is associated with only one generated
source file, but may contain references to different source .proto files.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>annotation (repeated  [google.protobuf.GeneratedCodeInfo.Annotation](#generatedcodeinfoannotation))
An Annotation connects some span of text in generated code to an element
of its generating .proto file.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>GeneratedCodeInfo.Annotation


#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>path (repeated  `int32`)

##### <span class="codicon codicon-symbol-field symbol-field"></span>source_file (optional  `string`)

##### <span class="codicon codicon-symbol-field symbol-field"></span>begin (optional  `int32`)

##### <span class="codicon codicon-symbol-field symbol-field"></span>end (optional  `int32`)


## Enums 

### <span class="codicon codicon-symbol-enum symbol-enum"></span>Type


#### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>TYPE_DOUBLE


#### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>TYPE_FLOAT


#### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>TYPE_INT64


#### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>TYPE_UINT64


#### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>TYPE_INT32


#### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>TYPE_FIXED64


#### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>TYPE_FIXED32


#### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>TYPE_BOOL


#### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>TYPE_STRING


#### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>TYPE_GROUP


#### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>TYPE_MESSAGE


#### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>TYPE_BYTES


#### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>TYPE_UINT32


#### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>TYPE_ENUM


#### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>TYPE_SFIXED32


#### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>TYPE_SFIXED64


#### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>TYPE_SINT32


#### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>TYPE_SINT64


### <span class="codicon codicon-symbol-enum symbol-enum"></span>Label


#### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>LABEL_OPTIONAL


#### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>LABEL_REQUIRED


#### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>LABEL_REPEATED


### <span class="codicon codicon-symbol-enum symbol-enum"></span>OptimizeMode


#### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>SPEED


#### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>CODE_SIZE


#### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>LITE_RUNTIME


### <span class="codicon codicon-symbol-enum symbol-enum"></span>CType


#### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>STRING


#### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>CORD


#### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>STRING_PIECE


### <span class="codicon codicon-symbol-enum symbol-enum"></span>JSType


#### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>JS_NORMAL


#### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>JS_STRING


#### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>JS_NUMBER


### <span class="codicon codicon-symbol-enum symbol-enum"></span>IdempotencyLevel


#### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>IDEMPOTENCY_UNKNOWN


#### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>NO_SIDE_EFFECTS


#### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>IDEMPOTENT


