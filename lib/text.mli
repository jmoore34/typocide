open! Import

module Word : sig
  type t =
    { id : int
    ; col : int
    ; row : int
    ; line_offset : int
    ; data : string
    ; typed : string
    ; state : [ `New | `Pending | `Active | `Success | `Failure ]
    }
  [@@deriving sexp]
end

type t = Word.t list [@@deriving sexp]

val col_row_of_cursor : t -> cursor:Cursor.t -> (int * int) option
