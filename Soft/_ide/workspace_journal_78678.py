# 2026-02-26T11:18:57.786214
import vitis

client = vitis.create_client()
client.set_workspace(path="Soft")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "platform_35t",hw_design = "$COMPONENT_LOCATION/../../design_1_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

comp = client.create_app_component(name="app_AH_35t",platform = "$COMPONENT_LOCATION/../platform_35t/export/platform_35t/platform_35t.xpfm",domain = "standalone_microblaze_0",template = "hello_world")

platform = client.get_component(name="platform_35t")
status = platform.build()

status = platform.build()

comp = client.get_component(name="app_AH_35t")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

