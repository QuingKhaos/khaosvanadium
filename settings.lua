local khaoslib_setting = require("__khaoslib__.settings.setting")

khaoslib_setting:load {
  type = "int-setting",
  name = "khaosvanadium-mining-fluid-amount",
  setting_type = "startup",
  default_value = 10,
  minimum_value = 1,
  maximum_value = 1000,
  order = "a[settings]-a[mining-fluid-amount]",
} :commit()

khaoslib_setting:load {
  type = "bool-setting",
  name = "khaosvanadium-starting-patch",
  setting_type = "startup",
  default_value = false,
  order = "a[settings]-b[starting-patch]",
} :commit()

khaoslib_setting:load {
  type = "bool-setting",
  name = "khaosvanadium-more",
  setting_type = "startup",
  default_value = false,
  order = "a[settings]-c[more-intermediates]",
} :commit()
