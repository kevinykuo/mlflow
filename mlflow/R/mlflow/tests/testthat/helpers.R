mlflow_clear_test_dir <- function(path) {
  mlflow_end_run()
  mlflow_set_active_experiment_id(NULL)
  if (dir.exists(path)) {
    unlink(path, recursive = TRUE)
  }
  mlflow:::mlflow_deregister_local_servers()
}
