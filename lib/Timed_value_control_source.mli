open Ctypes

type t
val t_typ : t typ

val find_control_point_iter :
  t ptr -> Unsigned.uint64 -> Sequence_iter.t structure ptr
val get_all :
  t ptr -> List.t structure (* Not implemented : interface *) ptr
val get_count :
  t ptr -> int32
val set :
  t ptr -> Unsigned.uint64 -> float -> bool
val set_from_list :
  t ptr -> SList.t structure (* Not implemented : interface *) ptr -> bool
val unset :
  t ptr -> Unsigned.uint64 -> bool
val unset_all :
  t ptr -> unit
