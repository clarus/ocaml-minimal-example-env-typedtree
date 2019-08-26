let get_initial_env (file_name : string) : Env.t =
  let (_, cmt) = Cmt_format.read file_name in
  match cmt with
  | Some { Cmt_format.cmt_initial_env = env } ->
    (* We call [env_of_only_summary] else the environment is empty
       (contains only the summary) and cannot be searched.
    *)
    begin try Envaux.env_of_only_summary env with
    | Envaux.Error error ->
      Envaux.report_error Format.str_formatter error;
      failwith (Format.flush_str_formatter ())
    end
  | _ -> failwith "Cannot extract cmt data."

;;get_initial_env "example.cmt"
