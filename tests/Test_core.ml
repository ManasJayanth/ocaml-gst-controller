open OUnit2

let test_gstreamer_initialization _ctxt = assert_bool "Foobar" true

let tests =
  "Gstreamer Core tests"
  >::: ["Gstreamer initialization" >:: test_gstreamer_initialization]
