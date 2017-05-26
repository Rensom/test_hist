use Mix.Config

config  :logger,
    backends: [{LoggerFileBackend, :error_log},
                {LoggerFileBackend, :warn_log},
                {LoggerFileBackend, :info_log}]

config  :logger, :error_log,
    path:   "./log/error.log",
    level:  :error,
    metadata:   ...,
    foramt: "$time ---- !!!ERROR!!! ----  $message\n"

config  :logger, :warn_log,
    path:   "./log/warning.log",
    level:  :warn,
    metadata:   ...,
    format: "$time - $metadata[$level] - $message\n"

config  :logger, :info_log,
    path:   "./log/info.log",
    level:  :info
    metadata:   ...,
    format: "$time - $metadata[$level] - $message\n"