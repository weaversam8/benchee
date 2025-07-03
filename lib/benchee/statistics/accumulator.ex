defmodule Benchee.Statistics.Accumulator do
  @moduledoc """
  Internal module that tracks statistics via an "accumulator" rather than holding an entire list of samples. Only used if the `:use_accumulator` option is set to `true` in your `Benchee.Configuration`.
  """

  defstruct [
    :minimum,
    maximum: 0,
    total: 0.0,
    m2: 0.0,
    sample_size: 0
  ]

  @type t :: %__MODULE__{
          total: number,
          m2: float,
          minimum: number,
          maximum: number,
          sample_size: integer
        }
end
