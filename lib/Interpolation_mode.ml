open Ctypes
open Foreign

type t = None | Linear | Cubic | Cubic_monotonic

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then None
  else if v = Unsigned.UInt32.of_int 1 then Linear
  else if v = Unsigned.UInt32.of_int 2 then Cubic
  else if v = Unsigned.UInt32.of_int 3 then Cubic_monotonic
  else raise (Invalid_argument "Unexpected Interpolation_mode value")

let to_value = function
  | None -> Unsigned.UInt32.of_int 0
  | Linear -> Unsigned.UInt32.of_int 1
  | Cubic -> Unsigned.UInt32.of_int 2
  | Cubic_monotonic -> Unsigned.UInt32.of_int 3

let t_view = view ~read:of_value ~write:to_value uint32_t

