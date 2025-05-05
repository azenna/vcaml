type t =
  { row : int
  ; col : int
  }
[@@deriving sexp_of, bin_io]

module One_indexed_row : sig
  type zero_indexed_row := t

  type t =
    { row : int
    ; col : int
    }
  [@@deriving sexp_of, bin_io]

  val to_zero : t -> zero_indexed_row
  val of_zero : zero_indexed_row -> t
end
