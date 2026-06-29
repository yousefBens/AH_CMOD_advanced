# 2026-03-30T10:29:41.151392
import vitis

client = vitis.create_client()
client.set_workspace(path="Soft")

platform = client.get_component(name="platform_35t")
status = platform.build()

comp = client.get_component(name="app_AH_35t")
comp.build()

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../design_1_wrapper.xsa")

status = platform.build()

status = platform.build()

comp.build()

vitis.dispose()

