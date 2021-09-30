---
title: "Reference: google.protobuf"
---
## Message Types 

### FileDescriptorSet

Fields

| Name | Type |
| ---- | ---- |
| file | [google.protobuf.FileDescriptorProto](#filedescriptorproto) |

### FileDescriptorProto

Fields

| Name | Type |
| ---- | ---- |
| name | `string` |
| package | `string` |
| dependency | `string` |
| public_dependency | `int32` |
| weak_dependency | `int32` |
| message_type | [google.protobuf.DescriptorProto](#descriptorproto) |
| enum_type | [google.protobuf.EnumDescriptorProto](#enumdescriptorproto) |
| service | [google.protobuf.ServiceDescriptorProto](#servicedescriptorproto) |
| extension | [google.protobuf.FieldDescriptorProto](#fielddescriptorproto) |
| options | [google.protobuf.FileOptions](#fileoptions) |
| source_code_info | [google.protobuf.SourceCodeInfo](#sourcecodeinfo) |
| syntax | `string` |

### DescriptorProto

Fields

| Name | Type |
| ---- | ---- |
| name | `string` |
| field | [google.protobuf.FieldDescriptorProto](#fielddescriptorproto) |
| extension | [google.protobuf.FieldDescriptorProto](#fielddescriptorproto) |
| nested_type | [google.protobuf.DescriptorProto](#descriptorproto) |
| enum_type | [google.protobuf.EnumDescriptorProto](#enumdescriptorproto) |
| extension_range | [google.protobuf.DescriptorProto.ExtensionRange](#descriptorproto-extensionrange) |
| oneof_decl | [google.protobuf.OneofDescriptorProto](#oneofdescriptorproto) |
| options | [google.protobuf.MessageOptions](#messageoptions) |
| reserved_range | [google.protobuf.DescriptorProto.ReservedRange](#descriptorproto-reservedrange) |
| reserved_name | `string` |

### ExtensionRangeOptions

Fields

| Name | Type |
| ---- | ---- |
| uninterpreted_option | [google.protobuf.UninterpretedOption](#uninterpretedoption) |

### FieldDescriptorProto

Fields

| Name | Type |
| ---- | ---- |
| name | `string` |
| number | `int32` |
| UNHANDLED | TYPE |
| UNHANDLED | TYPE |
| type_name | `string` |
| extendee | `string` |
| default_value | `string` |
| oneof_index | `int32` |
| json_name | `string` |
| options | [google.protobuf.FieldOptions](#fieldoptions) |
| proto3_optional | `bool` |

### OneofDescriptorProto

Fields

| Name | Type |
| ---- | ---- |
| name | `string` |
| options | [google.protobuf.OneofOptions](#oneofoptions) |

### EnumDescriptorProto

Fields

| Name | Type |
| ---- | ---- |
| name | `string` |
| value | [google.protobuf.EnumValueDescriptorProto](#enumvaluedescriptorproto) |
| options | [google.protobuf.EnumOptions](#enumoptions) |
| reserved_range | [google.protobuf.EnumDescriptorProto.EnumReservedRange](#enumdescriptorproto-enumreservedrange) |
| reserved_name | `string` |

### EnumValueDescriptorProto

Fields

| Name | Type |
| ---- | ---- |
| name | `string` |
| number | `int32` |
| options | [google.protobuf.EnumValueOptions](#enumvalueoptions) |

### ServiceDescriptorProto

Fields

| Name | Type |
| ---- | ---- |
| name | `string` |
| method | [google.protobuf.MethodDescriptorProto](#methoddescriptorproto) |
| options | [google.protobuf.ServiceOptions](#serviceoptions) |

### MethodDescriptorProto

Fields

| Name | Type |
| ---- | ---- |
| name | `string` |
| input_type | `string` |
| output_type | `string` |
| options | [google.protobuf.MethodOptions](#methodoptions) |
| client_streaming | `bool` |
| server_streaming | `bool` |

### FileOptions

Fields

| Name | Type |
| ---- | ---- |
| java_package | `string` |
| java_outer_classname | `string` |
| java_multiple_files | `bool` |
| java_generate_equals_and_hash | `bool` |
| java_string_check_utf8 | `bool` |
| UNHANDLED | TYPE |
| go_package | `string` |
| cc_generic_services | `bool` |
| java_generic_services | `bool` |
| py_generic_services | `bool` |
| php_generic_services | `bool` |
| deprecated | `bool` |
| cc_enable_arenas | `bool` |
| objc_class_prefix | `string` |
| csharp_namespace | `string` |
| swift_prefix | `string` |
| php_class_prefix | `string` |
| php_namespace | `string` |
| php_metadata_namespace | `string` |
| ruby_package | `string` |
| uninterpreted_option | [google.protobuf.UninterpretedOption](#uninterpretedoption) |

### MessageOptions

Fields

| Name | Type |
| ---- | ---- |
| message_set_wire_format | `bool` |
| no_standard_descriptor_accessor | `bool` |
| deprecated | `bool` |
| map_entry | `bool` |
| uninterpreted_option | [google.protobuf.UninterpretedOption](#uninterpretedoption) |

### FieldOptions

Fields

| Name | Type |
| ---- | ---- |
| UNHANDLED | TYPE |
| packed | `bool` |
| UNHANDLED | TYPE |
| lazy | `bool` |
| deprecated | `bool` |
| weak | `bool` |
| uninterpreted_option | [google.protobuf.UninterpretedOption](#uninterpretedoption) |

### OneofOptions

Fields

| Name | Type |
| ---- | ---- |
| uninterpreted_option | [google.protobuf.UninterpretedOption](#uninterpretedoption) |

### EnumOptions

Fields

| Name | Type |
| ---- | ---- |
| allow_alias | `bool` |
| deprecated | `bool` |
| uninterpreted_option | [google.protobuf.UninterpretedOption](#uninterpretedoption) |

### EnumValueOptions

Fields

| Name | Type |
| ---- | ---- |
| deprecated | `bool` |
| uninterpreted_option | [google.protobuf.UninterpretedOption](#uninterpretedoption) |

### ServiceOptions

Fields

| Name | Type |
| ---- | ---- |
| deprecated | `bool` |
| uninterpreted_option | [google.protobuf.UninterpretedOption](#uninterpretedoption) |

### MethodOptions

Fields

| Name | Type |
| ---- | ---- |
| deprecated | `bool` |
| UNHANDLED | TYPE |
| uninterpreted_option | [google.protobuf.UninterpretedOption](#uninterpretedoption) |

### UninterpretedOption

Fields

| Name | Type |
| ---- | ---- |
| name | [google.protobuf.UninterpretedOption.NamePart](#uninterpretedoption-namepart) |
| identifier_value | `string` |
| positive_int_value | `uint64` |
| negative_int_value | `int64` |
| double_value | `double` |
| string_value | `bytes` |
| aggregate_value | `string` |

### SourceCodeInfo

Fields

| Name | Type |
| ---- | ---- |
| location | [google.protobuf.SourceCodeInfo.Location](#sourcecodeinfo-location) |

### GeneratedCodeInfo

Fields

| Name | Type |
| ---- | ---- |
| annotation | [google.protobuf.GeneratedCodeInfo.Annotation](#generatedcodeinfo-annotation) |

### DescriptorProto.ExtensionRange

Fields

| Name | Type |
| ---- | ---- |
| start | `int32` |
| end | `int32` |
| options | [google.protobuf.ExtensionRangeOptions](#extensionrangeoptions) |

### DescriptorProto.ReservedRange

Fields

| Name | Type |
| ---- | ---- |
| start | `int32` |
| end | `int32` |

### EnumDescriptorProto.EnumReservedRange

Fields

| Name | Type |
| ---- | ---- |
| start | `int32` |
| end | `int32` |

### UninterpretedOption.NamePart

Fields

| Name | Type |
| ---- | ---- |
| name_part | `string` |
| is_extension | `bool` |

### SourceCodeInfo.Location

Fields

| Name | Type |
| ---- | ---- |
| path | `int32` |
| span | `int32` |
| leading_comments | `string` |
| trailing_comments | `string` |
| leading_detached_comments | `string` |

### GeneratedCodeInfo.Annotation

Fields

| Name | Type |
| ---- | ---- |
| path | `int32` |
| source_file | `string` |
| begin | `int32` |
| end | `int32` |

## Services 

