defmodule Suppy.ServerB do
  use GenServer.Behaviour

  def start_link do
    :gen_server.start_link(__MODULE__, [], [])
  end

  def init([]) do
    IO.puts "Starting #{__MODULE__} (#{inspect self})..."
    {:ok, []}
  end

  def handle_call(_msg, _from, _state) do
    {:reply, :ok, []}
  end

  def handle_cast(_msg, _state) do
    {:noreply, :ok, []}
  end

  def handle_info(_msg, _state) do
  end

  def terminate(_reason, _state) do
  end

  def code_change(_old_vsn, _state, _extra) do
  end

end
