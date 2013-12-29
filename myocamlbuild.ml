open Ocamlbuild_plugin

let () =
  dispatch (function
  | After_rules -> flag ["library"; "native"; "link_gtk"] (S [A"-thread"; A"lablgtk.cmxa"])
  | _ -> ()
  )
