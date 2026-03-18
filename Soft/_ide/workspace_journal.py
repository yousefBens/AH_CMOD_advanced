# 2026-03-13T10:48:30.139786
import vitis

client = vitis.create_client()
client.set_workspace(path="Soft")

platform = client.get_component(name="platform_35t")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../design_1_wrapper.xsa")

status = platform.build()

status = platform.build()

comp = client.get_component(name="app_AH_35t")
comp.build()

vitis.dispose()

