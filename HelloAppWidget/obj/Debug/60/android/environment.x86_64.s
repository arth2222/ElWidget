	.file	"obj\Debug\60\android\environment.x86_64.s"
	.type	mono_aot_mode_name, @object
	.global	mono_aot_mode_name

	.section	.data.mono_aot_mode_name, "aw", @progbits
	.p2align	3
mono_aot_mode_name:
	.quad	.L.autostr.0
	.size	mono_aot_mode_name, 8

	.type	app_environment_variables, @object
	.global	app_environment_variables

	.section	.data, "aw", @progbits
	.p2align	3
app_environment_variables:
	.quad	.L.autostr.1
	.quad	.L.autostr.2
	.quad	.L.autostr.3
	.quad	.L.autostr.4
	.quad	.L.autostr.5
	.quad	.L.autostr.6
	.quad	.L.autostr.7
	.quad	.L.autostr.8
	.quad	.L.autostr.9
	.quad	.L.autostr.10
	.quad	.L.autostr.11
	.quad	.L.autostr.12
	.size	app_environment_variables, 96

	.section	.data, "aw", @progbits
	.type	app_system_properties, @object
	.global	app_system_properties
app_system_properties:
	.size	app_system_properties, 0
	# Bundled assembly name buffers, all 50 bytes long

	.section	.bss.bundled_assembly_names, "aw", @nobits
	.type	.L.env.buf.0, @object
.L.env.buf.0:
	.zero	50
	.size	.L.env.buf.0, 50
	.type	.L.env.buf.1, @object
.L.env.buf.1:
	.zero	50
	.size	.L.env.buf.1, 50
	.type	.L.env.buf.2, @object
.L.env.buf.2:
	.zero	50
	.size	.L.env.buf.2, 50
	.type	.L.env.buf.3, @object
.L.env.buf.3:
	.zero	50
	.size	.L.env.buf.3, 50
	.type	.L.env.buf.4, @object
.L.env.buf.4:
	.zero	50
	.size	.L.env.buf.4, 50
	.type	.L.env.buf.5, @object
.L.env.buf.5:
	.zero	50
	.size	.L.env.buf.5, 50
	.type	.L.env.buf.6, @object
.L.env.buf.6:
	.zero	50
	.size	.L.env.buf.6, 50
	.type	.L.env.buf.7, @object
.L.env.buf.7:
	.zero	50
	.size	.L.env.buf.7, 50
	.type	.L.env.buf.8, @object
.L.env.buf.8:
	.zero	50
	.size	.L.env.buf.8, 50
	.type	.L.env.buf.9, @object
.L.env.buf.9:
	.zero	50
	.size	.L.env.buf.9, 50
	.type	.L.env.buf.10, @object
.L.env.buf.10:
	.zero	50
	.size	.L.env.buf.10, 50
	.type	.L.env.buf.11, @object
.L.env.buf.11:
	.zero	50
	.size	.L.env.buf.11, 50
	.type	.L.env.buf.12, @object
.L.env.buf.12:
	.zero	50
	.size	.L.env.buf.12, 50
	# Bundled assemblies data

	.type	bundled_assemblies, @object
	.global	bundled_assemblies

	.section	.data, "aw", @progbits
	.p2align	3
bundled_assemblies:
	.long	0xffffffff	# apk_fd
	.long	0x0	# data_offset
	.long	0x0	# data_size
	.zero	4
	.quad	0x0	# data
	.long	0x0	# name_length
	.zero	4
	.quad	.L.env.buf.0	# name

	.long	0xffffffff	# apk_fd
	.long	0x0	# data_offset
	.long	0x0	# data_size
	.zero	4
	.quad	0x0	# data
	.long	0x0	# name_length
	.zero	4
	.quad	.L.env.buf.1	# name

	.long	0xffffffff	# apk_fd
	.long	0x0	# data_offset
	.long	0x0	# data_size
	.zero	4
	.quad	0x0	# data
	.long	0x0	# name_length
	.zero	4
	.quad	.L.env.buf.2	# name

	.long	0xffffffff	# apk_fd
	.long	0x0	# data_offset
	.long	0x0	# data_size
	.zero	4
	.quad	0x0	# data
	.long	0x0	# name_length
	.zero	4
	.quad	.L.env.buf.3	# name

	.long	0xffffffff	# apk_fd
	.long	0x0	# data_offset
	.long	0x0	# data_size
	.zero	4
	.quad	0x0	# data
	.long	0x0	# name_length
	.zero	4
	.quad	.L.env.buf.4	# name

	.long	0xffffffff	# apk_fd
	.long	0x0	# data_offset
	.long	0x0	# data_size
	.zero	4
	.quad	0x0	# data
	.long	0x0	# name_length
	.zero	4
	.quad	.L.env.buf.5	# name

	.long	0xffffffff	# apk_fd
	.long	0x0	# data_offset
	.long	0x0	# data_size
	.zero	4
	.quad	0x0	# data
	.long	0x0	# name_length
	.zero	4
	.quad	.L.env.buf.6	# name

	.long	0xffffffff	# apk_fd
	.long	0x0	# data_offset
	.long	0x0	# data_size
	.zero	4
	.quad	0x0	# data
	.long	0x0	# name_length
	.zero	4
	.quad	.L.env.buf.7	# name

	.long	0xffffffff	# apk_fd
	.long	0x0	# data_offset
	.long	0x0	# data_size
	.zero	4
	.quad	0x0	# data
	.long	0x0	# name_length
	.zero	4
	.quad	.L.env.buf.8	# name

	.long	0xffffffff	# apk_fd
	.long	0x0	# data_offset
	.long	0x0	# data_size
	.zero	4
	.quad	0x0	# data
	.long	0x0	# name_length
	.zero	4
	.quad	.L.env.buf.9	# name

	.long	0xffffffff	# apk_fd
	.long	0x0	# data_offset
	.long	0x0	# data_size
	.zero	4
	.quad	0x0	# data
	.long	0x0	# name_length
	.zero	4
	.quad	.L.env.buf.10	# name

	.long	0xffffffff	# apk_fd
	.long	0x0	# data_offset
	.long	0x0	# data_size
	.zero	4
	.quad	0x0	# data
	.long	0x0	# name_length
	.zero	4
	.quad	.L.env.buf.11	# name

	.long	0xffffffff	# apk_fd
	.long	0x0	# data_offset
	.long	0x0	# data_size
	.zero	4
	.quad	0x0	# data
	.long	0x0	# name_length
	.zero	4
	.quad	.L.env.buf.12	# name

	.size	bundled_assemblies, 520
	# Assembly store individual assembly data
	.type	assembly_store_bundled_assemblies, @object
	.global	assembly_store_bundled_assemblies
assembly_store_bundled_assemblies:
	.size	assembly_store_bundled_assemblies, 0
	# Assembly store data
	.type	assembly_stores, @object
	.global	assembly_stores
assembly_stores:
	.size	assembly_stores, 0

	.type	dso_cache, @object
	.global	dso_cache

	.section	.data, "aw", @progbits
	.p2align	3
dso_cache:
	.quad	0x1816f285730a5c5d	# hash, from name: mono-native
	.byte	0x0	# ignore
	.zero	7
	.quad	.L.autostr.13	# name: libmono-native.so
	.quad	0x0	# handle

	.quad	0x1a42756f88f0b2c1	# hash, from name: libmono-profiler-log
	.byte	0x0	# ignore
	.zero	7
	.quad	.L.autostr.14	# name: libmono-profiler-log.so
	.quad	0x0	# handle

	.quad	0x2525308b79a4c498	# hash, from name: xamarin-debug-app-helper.so
	.byte	0x0	# ignore
	.zero	7
	.quad	.L.autostr.15	# name: libxamarin-debug-app-helper.so
	.quad	0x0	# handle

	.quad	0x2d0a981995adda1a	# hash, from name: mono-btls-shared
	.byte	0x0	# ignore
	.zero	7
	.quad	.L.autostr.16	# name: libmono-btls-shared.so
	.quad	0x0	# handle

	.quad	0x324e6d52264455c3	# hash, from name: libmono-native.so
	.byte	0x0	# ignore
	.zero	7
	.quad	.L.autostr.17	# name: libmono-native.so
	.quad	0x0	# handle

	.quad	0x35e64c6c9f4b9e72	# hash, from name: libmono-btls-shared
	.byte	0x0	# ignore
	.zero	7
	.quad	.L.autostr.18	# name: libmono-btls-shared.so
	.quad	0x0	# handle

	.quad	0x5c15a2333b0a0c84	# hash, from name: libxamarin-debug-app-helper.so
	.byte	0x0	# ignore
	.zero	7
	.quad	.L.autostr.19	# name: libxamarin-debug-app-helper.so
	.quad	0x0	# handle

	.quad	0x6156bef9cd41d0d9	# hash, from name: mono-profiler-log.so
	.byte	0x0	# ignore
	.zero	7
	.quad	.L.autostr.20	# name: libmono-profiler-log.so
	.quad	0x0	# handle

	.quad	0x65d94d818a60a3a7	# hash, from name: monodroid.so
	.byte	0x0	# ignore
	.zero	7
	.quad	.L.autostr.21	# name: libmonodroid.so
	.quad	0x0	# handle

	.quad	0x6b1a4fee66f8a525	# hash, from name: libxa-internal-api
	.byte	0x0	# ignore
	.zero	7
	.quad	.L.autostr.22	# name: libxa-internal-api.so
	.quad	0x0	# handle

	.quad	0x6b6b0562539657f0	# hash, from name: libmonosgen-2.0
	.byte	0x0	# ignore
	.zero	7
	.quad	.L.autostr.23	# name: libmonosgen-2.0.so
	.quad	0x0	# handle

	.quad	0x6cf9239740e64f9d	# hash, from name: libxamarin-debug-app-helper
	.byte	0x0	# ignore
	.zero	7
	.quad	.L.autostr.24	# name: libxamarin-debug-app-helper.so
	.quad	0x0	# handle

	.quad	0x74778f1b27881b01	# hash, from name: libmonodroid.so
	.byte	0x0	# ignore
	.zero	7
	.quad	.L.autostr.25	# name: libmonodroid.so
	.quad	0x0	# handle

	.quad	0x78600b2172b4e8ae	# hash, from name: mono-btls-shared.so
	.byte	0x0	# ignore
	.zero	7
	.quad	.L.autostr.26	# name: libmono-btls-shared.so
	.quad	0x0	# handle

	.quad	0x7daaf3a073c44dd7	# hash, from name: monodroid
	.byte	0x0	# ignore
	.zero	7
	.quad	.L.autostr.27	# name: libmonodroid.so
	.quad	0x0	# handle

	.quad	0x819997bb1318c38f	# hash, from name: xa-internal-api.so
	.byte	0x0	# ignore
	.zero	7
	.quad	.L.autostr.28	# name: libxa-internal-api.so
	.quad	0x0	# handle

	.quad	0x8da9f07ad98f854a	# hash, from name: mono-native.so
	.byte	0x0	# ignore
	.zero	7
	.quad	.L.autostr.29	# name: libmono-native.so
	.quad	0x0	# handle

	.quad	0x918196231499ae33	# hash, from name: xamarin-debug-app-helper
	.byte	0x0	# ignore
	.zero	7
	.quad	.L.autostr.30	# name: libxamarin-debug-app-helper.so
	.quad	0x0	# handle

	.quad	0x9fe56834a335f553	# hash, from name: libmonodroid
	.byte	0x0	# ignore
	.zero	7
	.quad	.L.autostr.31	# name: libmonodroid.so
	.quad	0x0	# handle

	.quad	0xb43ec55666e9bac2	# hash, from name: xa-internal-api
	.byte	0x0	# ignore
	.zero	7
	.quad	.L.autostr.32	# name: libxa-internal-api.so
	.quad	0x0	# handle

	.quad	0xb9af7500aad479f3	# hash, from name: libmono-btls-shared.so
	.byte	0x0	# ignore
	.zero	7
	.quad	.L.autostr.33	# name: libmono-btls-shared.so
	.quad	0x0	# handle

	.quad	0xc82f57facf333f6a	# hash, from name: monosgen-2.0.so
	.byte	0x0	# ignore
	.zero	7
	.quad	.L.autostr.34	# name: libmonosgen-2.0.so
	.quad	0x0	# handle

	.quad	0xcd875618fc6f174a	# hash, from name: libxa-internal-api.so
	.byte	0x0	# ignore
	.zero	7
	.quad	.L.autostr.35	# name: libxa-internal-api.so
	.quad	0x0	# handle

	.quad	0xe156906e01e8a274	# hash, from name: libmono-native
	.byte	0x0	# ignore
	.zero	7
	.quad	.L.autostr.36	# name: libmono-native.so
	.quad	0x0	# handle

	.quad	0xe7ff637b8de7a85b	# hash, from name: libmonosgen-2.0.so
	.byte	0x0	# ignore
	.zero	7
	.quad	.L.autostr.37	# name: libmonosgen-2.0.so
	.quad	0x0	# handle

	.quad	0xe935f11a41b02b22	# hash, from name: monosgen-2.0
	.byte	0x0	# ignore
	.zero	7
	.quad	.L.autostr.38	# name: libmonosgen-2.0.so
	.quad	0x0	# handle

	.quad	0xfdcd9140c2d7d3e7	# hash, from name: mono-profiler-log
	.byte	0x0	# ignore
	.zero	7
	.quad	.L.autostr.39	# name: libmono-profiler-log.so
	.quad	0x0	# handle

	.quad	0xfdd65028f69711e0	# hash, from name: libmono-profiler-log.so
	.byte	0x0	# ignore
	.zero	7
	.quad	.L.autostr.40	# name: libmono-profiler-log.so
	.quad	0x0	# handle

	.size	dso_cache, 896

	#
	# Generated from instance of: Xamarin.Android.Tasks.ApplicationConfig, Xamarin.Android.Build.Tasks, Version=12.3.0.26, Culture=neutral, PublicKeyToken=84e04ff9cfb79065
	#
	.type	application_config, @object
	.global	application_config

	.section	.data, "aw", @progbits
	.p2align	3
application_config:
	.byte	0x0	# uses_mono_llvm
	.byte	0x0	# uses_mono_aot
	.byte	0x1	# uses_assembly_preload
	.byte	0x0	# is_a_bundled_app
	.byte	0x0	# broken_exception_transitions
	.byte	0x0	# instant_run_enabled
	.byte	0x0	# jni_add_native_method_registration_attribute_present
	.byte	0x0	# have_runtime_config_blob
	.byte	0x0	# have_assemblies_blob
	.byte	0x1	# bound_stream_io_exception_type
	.zero	2
	.long	0x3	# package_naming_policy
	.long	0xc	# environment_variable_count
	.long	0x0	# system_property_count
	.long	0xd	# number_of_assemblies_in_apk
	.long	0x32	# bundled_assembly_name_width
	.long	0x2	# number_of_assembly_store_files
	.long	0x1c	# number_of_dso_cache_entries
	.long	0x0	# mono_components_mask
	.zero	4
	.quad	.L.autostr.41	# android_package_name
	.size	application_config, 56


	.section	.rodata.autostr, "aMS", @progbits, 1
	.type	.L.autostr.0, @object
.L.autostr.0:
	.asciz	"none"
	.size	.L.autostr.0, 5

	.type	.L.autostr.1, @object
.L.autostr.1:
	.asciz	"MONO_GC_PARAMS"
	.size	.L.autostr.1, 15

	.type	.L.autostr.2, @object
.L.autostr.2:
	.asciz	"major=marksweep"
	.size	.L.autostr.2, 16

	.type	.L.autostr.3, @object
.L.autostr.3:
	.asciz	"MONO_LOG_LEVEL"
	.size	.L.autostr.3, 15

	.type	.L.autostr.4, @object
.L.autostr.4:
	.asciz	"info"
	.size	.L.autostr.4, 5

	.type	.L.autostr.5, @object
.L.autostr.5:
	.asciz	"XAMARIN_BUILD_ID"
	.size	.L.autostr.5, 17

	.type	.L.autostr.6, @object
.L.autostr.6:
	.asciz	"d9aae232-23ee-4b03-80bb-5073e54df46e"
	.size	.L.autostr.6, 37

	.type	.L.autostr.7, @object
.L.autostr.7:
	.asciz	"XA_HTTP_CLIENT_HANDLER_TYPE"
	.size	.L.autostr.7, 28

	.type	.L.autostr.8, @object
.L.autostr.8:
	.asciz	"System.Net.Http.HttpClientHandler, System.Net.Http"
	.size	.L.autostr.8, 51

	.type	.L.autostr.9, @object
.L.autostr.9:
	.asciz	"XA_TLS_PROVIDER"
	.size	.L.autostr.9, 16

	.type	.L.autostr.10, @object
.L.autostr.10:
	.asciz	"btls"
	.size	.L.autostr.10, 5

	.type	.L.autostr.11, @object
.L.autostr.11:
	.asciz	"__XA_PACKAGE_NAMING_POLICY__"
	.size	.L.autostr.11, 29

	.type	.L.autostr.12, @object
.L.autostr.12:
	.asciz	"LowercaseCrc64"
	.size	.L.autostr.12, 15

	.type	.L.autostr.13, @object
.L.autostr.13:
	.asciz	"libmono-native.so"
	.size	.L.autostr.13, 18

	.type	.L.autostr.14, @object
.L.autostr.14:
	.asciz	"libmono-profiler-log.so"
	.size	.L.autostr.14, 24

	.type	.L.autostr.15, @object
.L.autostr.15:
	.asciz	"libxamarin-debug-app-helper.so"
	.size	.L.autostr.15, 31

	.type	.L.autostr.16, @object
.L.autostr.16:
	.asciz	"libmono-btls-shared.so"
	.size	.L.autostr.16, 23

	.type	.L.autostr.17, @object
.L.autostr.17:
	.asciz	"libmono-native.so"
	.size	.L.autostr.17, 18

	.type	.L.autostr.18, @object
.L.autostr.18:
	.asciz	"libmono-btls-shared.so"
	.size	.L.autostr.18, 23

	.type	.L.autostr.19, @object
.L.autostr.19:
	.asciz	"libxamarin-debug-app-helper.so"
	.size	.L.autostr.19, 31

	.type	.L.autostr.20, @object
.L.autostr.20:
	.asciz	"libmono-profiler-log.so"
	.size	.L.autostr.20, 24

	.type	.L.autostr.21, @object
.L.autostr.21:
	.asciz	"libmonodroid.so"
	.size	.L.autostr.21, 16

	.type	.L.autostr.22, @object
.L.autostr.22:
	.asciz	"libxa-internal-api.so"
	.size	.L.autostr.22, 22

	.type	.L.autostr.23, @object
.L.autostr.23:
	.asciz	"libmonosgen-2.0.so"
	.size	.L.autostr.23, 19

	.type	.L.autostr.24, @object
.L.autostr.24:
	.asciz	"libxamarin-debug-app-helper.so"
	.size	.L.autostr.24, 31

	.type	.L.autostr.25, @object
.L.autostr.25:
	.asciz	"libmonodroid.so"
	.size	.L.autostr.25, 16

	.type	.L.autostr.26, @object
.L.autostr.26:
	.asciz	"libmono-btls-shared.so"
	.size	.L.autostr.26, 23

	.type	.L.autostr.27, @object
.L.autostr.27:
	.asciz	"libmonodroid.so"
	.size	.L.autostr.27, 16

	.type	.L.autostr.28, @object
.L.autostr.28:
	.asciz	"libxa-internal-api.so"
	.size	.L.autostr.28, 22

	.type	.L.autostr.29, @object
.L.autostr.29:
	.asciz	"libmono-native.so"
	.size	.L.autostr.29, 18

	.type	.L.autostr.30, @object
.L.autostr.30:
	.asciz	"libxamarin-debug-app-helper.so"
	.size	.L.autostr.30, 31

	.type	.L.autostr.31, @object
.L.autostr.31:
	.asciz	"libmonodroid.so"
	.size	.L.autostr.31, 16

	.type	.L.autostr.32, @object
.L.autostr.32:
	.asciz	"libxa-internal-api.so"
	.size	.L.autostr.32, 22

	.type	.L.autostr.33, @object
.L.autostr.33:
	.asciz	"libmono-btls-shared.so"
	.size	.L.autostr.33, 23

	.type	.L.autostr.34, @object
.L.autostr.34:
	.asciz	"libmonosgen-2.0.so"
	.size	.L.autostr.34, 19

	.type	.L.autostr.35, @object
.L.autostr.35:
	.asciz	"libxa-internal-api.so"
	.size	.L.autostr.35, 22

	.type	.L.autostr.36, @object
.L.autostr.36:
	.asciz	"libmono-native.so"
	.size	.L.autostr.36, 18

	.type	.L.autostr.37, @object
.L.autostr.37:
	.asciz	"libmonosgen-2.0.so"
	.size	.L.autostr.37, 19

	.type	.L.autostr.38, @object
.L.autostr.38:
	.asciz	"libmonosgen-2.0.so"
	.size	.L.autostr.38, 19

	.type	.L.autostr.39, @object
.L.autostr.39:
	.asciz	"libmono-profiler-log.so"
	.size	.L.autostr.39, 24

	.type	.L.autostr.40, @object
.L.autostr.40:
	.asciz	"libmono-profiler-log.so"
	.size	.L.autostr.40, 24

	.type	.L.autostr.41, @object
.L.autostr.41:
	.asciz	"net.marcofolio.helloappwidget"
	.size	.L.autostr.41, 30


	.ident	"Xamarin.Android remotes/origin/d17-2 @ bbba5a21f3b649a761b22d83959758b4d30df672"
