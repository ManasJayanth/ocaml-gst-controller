open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let find_control_point_iter =
  foreign "gst_timed_value_control_source_find_control_point_iter" (ptr t_typ @-> uint64_t @-> returning (ptr Sequence_iter.t_typ))
let get_all =
  foreign "gst_timed_value_control_source_get_all" (ptr t_typ @-> returning (ptr List.t_typ))
let get_count =
  foreign "gst_timed_value_control_source_get_count" (ptr t_typ @-> returning (int32_t))
let set =
  foreign "gst_timed_value_control_source_set" (ptr t_typ @-> uint64_t @-> double @-> returning (bool))
let set_from_list =
  foreign "gst_timed_value_control_source_set_from_list" (ptr t_typ @-> ptr SList.t_typ @-> returning (bool))
let unset =
  foreign "gst_timed_value_control_source_unset" (ptr t_typ @-> uint64_t @-> returning (bool))
let unset_all =
  foreign "gst_timed_value_control_source_unset_all" (ptr t_typ @-> returning (void))
