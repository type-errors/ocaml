- 1. Backtracking: use snapshot and backtrack.  Examples from ctypes.ml:

    ```
    let update_level env level ty =
      let ty = repr ty in
      if ty.level > level then begin
        let snap = snapshot () in
        try
          update_level env level false ty
        with Unify _ ->
          backtrack snap;
          update_level env level true ty
      end
    ```

- 2. How to force printing error on the fly
