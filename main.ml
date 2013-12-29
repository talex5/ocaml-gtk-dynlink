let () =
  try
    Dynlink.loadfile "_build/gui_gtk.cmxs"
  with Dynlink.Error ex ->
    Printf.printf "Failed to load GTK GUI plugin: %s" (Dynlink.error_message ex)
