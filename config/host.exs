use Mix.Config

config :scenic_nerves_image_example, :viewport, %{
  name: :main_viewport,
  # default_scene: {ScenicNervesImageExample.Scene.Crosshair, nil},
  default_scene: {ScenicNervesImageExample.Scene.SysInfo, nil},
  size: {800, 480},
  opts: [scale: 1.0],
  drivers: [
    %{
      module: Scenic.Driver.Glfw,
      opts: [title: "MIX_TARGET=host, app = :scenic_nerves_image_example"]
    }
  ]
}
