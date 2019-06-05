open Ctypes
open Foreign

type t = Sine | Square | Saw | Reverse_saw | Triangle

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Sine
  else if v = Unsigned.UInt32.of_int 1 then Square
  else if v = Unsigned.UInt32.of_int 2 then Saw
  else if v = Unsigned.UInt32.of_int 3 then Reverse_saw
  else if v = Unsigned.UInt32.of_int 4 then Triangle
  else raise (Invalid_argument "Unexpected LFOWaveform value")

let to_value = function
  | Sine -> Unsigned.UInt32.of_int 0
  | Square -> Unsigned.UInt32.of_int 1
  | Saw -> Unsigned.UInt32.of_int 2
  | Reverse_saw -> Unsigned.UInt32.of_int 3
  | Triangle -> Unsigned.UInt32.of_int 4

let t_view = view ~read:of_value ~write:to_value uint32_t

