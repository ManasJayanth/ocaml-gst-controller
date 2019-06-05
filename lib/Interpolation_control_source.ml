open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gst_interpolation_control_source_new" (void @-> returning (ptr Control_source.t_typ))
