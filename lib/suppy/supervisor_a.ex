defmodule Suppy.SupervisorA do
  use Supervisor.Behaviour

  def start_link do
    :supervisor.start_link({:global, __MODULE__}, __MODULE__, [])
  end

  def init([]) do
    IO.puts "Starting #{__MODULE__} (#{inspect self})..."

    children = [
      worker(Suppy.SupervisorB, []),
      worker(Suppy.SupervisorC, []),
    ]

    supervise(children, strategy: :one_for_one)
  end

end