#' Create Progress Printer
#'
#' @param freq
#' @param first
#' @param tag
#' @param log_to_file
#' @param rank
#' @param gen_heartbeat
#' @param num_epochs
#' @param test_freq
#' @param test_first
#' @param metric_is_pct
#' @param distributed_freq
#' @param distributed_first
#'
#' @export
ProgressPrinter <- function(freq = NULL, first = 0, tag = '',
							log_to_file = NULL, rank = NULL,
							gen_heartbeat = FALSE, num_epochs = NULL,
							test_freq = NULL, test_first = 0,
							metric_is_pct = TRUE, distributed_freq = NULL,
							distributed_first = 0) {
	cntk$logging$ProgressPrinter(
		freq = to_int(freq),
		first = to_int(first),
		tag = tag,
		log_to_file = log_to_file,
		rank = to_int(rank),
		gen_heartbeat = gen_heartbeat,
		num_epochs = to_int(num_epochs),
		test_freq = to_int(test_freq),
		test_first = to_int(test_first),
		metric_is_pct = metric_is_pct,
		distributed_freq = to_int(distributed_freq),
		distributed_first = to_int(distributed_first)
	)
}

#' Printer - End Progress Pring
#'
#' @param printer Printer instance on which to perform the operation
#' @param msg
#'
#' @export
printer_end_progress_print <- function(printer, msg = '') {
	printer$end_progress_print(msg = msg)
}

#' Printer - Log
#'
#' @param printer Printer instance on which to perform the operation
#' @param message
#'
#' @export
printer_log <- function(printer, message) {
	printer$log(message)
}

#' Printer - On Training Update End
#'
#' @param printer Printer instance on which to perform the operation
#'
#' @export
printer_on_training_update_end <- function(printer) {
	printer$on_training_update_end()
}

#' Printer - On Write Distributed Sync Update
#'
#' @param printer Printer instance on which to perform the operation
#' @param samples
#' @param updates
#' @param aggregate_metric
#'
#' @export
printer_on_write_distributed_sync_update <- function(printer, samples,
													 updates,
													 aggregate_metric) {
	printer$on_write_distributed_sync_update(
		samples,
		updates,
		aggregate_metric
	)
}

#' Printer - On Write Test Summary
#'
#' @param printer Printer instance on which to perform the operation
#' @param samples
#' @param updates
#' @param summaries
#' @param aggregate_metric
#' @param elapsed_milliseconds
#'
#' @export
printer_on_write_test_summary <- function(printer, samples, updates,
										  summaries, aggregate_metric,
										  elapsed_milliseconds) {
	printer$on_write_test_summary(
		samples,
		updates,
		summaries,
		aggregate_metric,
		elapsed_milliseconds
	)
}

#' any writer
#'
#' @param printer Printer instance on which to perform the operation
#' @param samples
#' @param updates
#' @param aggregate_metric
#'
#' @export
printer_on_write_test_update <- function(printer, samples, updates,
										 aggregate_metric) {
	printer$on_write_test_update(
		samples,
		updates,
		aggregate_metric
	)
}

#' Printer - On Write Training Summary
#'
#' @param printer Printer instance on which to perform the operation
#' @param samples
#' @param updates
#' @param summaries
#' @param aggregate_loss
#' @param aggregate_metric
#' @param elapsed_milliseconds
#'
#' @export
printer_on_write_training_summary <- function(printer, samples, updates,
											  summaries, aggregate_loss,
											  aggregate_metric,
											  elapsed_milliseconds) {
	printer$on_write_training_summary(
		samples,
		updates,
		summaries,
		aggregate_loss,
		aggregate_metric,
		elapsed_milliseconds
	)
}

#' Printer - Training Update on Write
#'
#' @param printer Printer instance on which to perform the operation
#' @param samples
#' @param updates
#' @param aggregate_loss
#' @param aggregate_metric
#'
#' @export
printer_on_write_training_update <- function(printer, samples, updates,
											 aggregate_loss, aggregate_metric) {
	printer$on_write_training_update(
		samples,
		updates,
		aggregate_loss,
		aggregate_metric
	)
}

#' Printer - Write
#'
#' @param printer Printer instance on which to perform the operation
#' @param key
#' @param value
#'
#' @export
printer_write <- function(printer, key, value) {
	printer$write(
		key,
		value
	)
}


#' New TensorBoard Progress Writer
#'
#' @param freq
#' @param log_dir
#' @param rank
#' @param model
#'
#' @export
TensorBoardProgressWriter <- function(freq = NULL, log_dir = '.', rank = NULL,
									  model = NULL) {
	cntk$logging$progress_print$TensorBoardProgressWriter(
		freq = to_int(freq),
		log_dir = log_dir,
		rank = to_int(rank),
		model = model
	)
}

#' Close Tensorboard
#'
#' @param tensorboard_writer
#'
#' @export
tensorboard_close <- function(tensorboard_writer) {
	tensorboard_writer$close()
}

#' Flush Tensorboard
#'
#' @param tensorboard_writer
#'
#' @export
tensorboard_flush <- function(tensorboard_writer) {
	tensorboard_writer$flush()
}

#' TensorBoard Write Value
#'
#' @param tensorboard_writer
#' @param name string (optional) the name of the Function instance in the network
#' @param value
#' @param step
#'
#' @export
tensorboard_write_value <- function(tensorboard_writer, name, value, step) {
	tensorboard_writer$write_value(
		name,
		value,
		to_int(step)
	)
}


#' Training Summary Progress Callback
#'
#' @param epoch_size
#' @param callback
#'
#' @export
TrainingSummaryProgressCallback <- function(epoch_size, callback) {
	cntk$logging$TrainingSummaryProgressCallback(
		to_int(epoch_size),
		callback
	)
}


#' Log Number of Parameters
#'
#' @param model
#' @param trace_level
#'
#' @export
log_number_of_parameters <- function(model, trace_level = 0) {
	cntk$logging$log_number_of_parameters(
		model,
		trace_level = trace_level
	)
}
