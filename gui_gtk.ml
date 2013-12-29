let () =
  print_endline "Plugin loaded";
  ignore (GMain.init ());
  let window = GWindow.window () in
  ignore (window#connect#destroy (fun () -> exit 0));
  window#show ();
  GMain.Main.main ()
