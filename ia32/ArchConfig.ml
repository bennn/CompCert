(* *********************************************************************)
(*                                                                     *)
(*              The Compcert verified compiler                         *)
(*                                                                     *)
(*          Bernhard Schommer, AbsInt Angewandte Informatik GmbH       *)
(*                                                                     *)
(*  AbsInt Angewandte Informatik GmbH. All rights reserved. This file  *)
(*  is distributed under the terms of the INRIA Non-Commercial         *)
(*  License Agreement.                                                 *)
(*                                                                     *)
(* *********************************************************************)

(* Architecture dependend configuration types. *)

type cpus=
  | Generic

let cpu_of_string = function
  | _ -> Generic (* Others are currently not supported *)

type model =
  | SSE2

let model_of_string = function
  | "sse2" -> SSE2
  | s -> Printf.eprintf "Invalid model `%s' is not supported\n" s; exit 2

let string_of_model = function
  | SSE2 -> "sse2"

let needs_thumb _ = false
