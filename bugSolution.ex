```elixir
list = [1, 2, 3, 4, 5]

Enum.map(list, fn x ->
  Task.async(fn ->
    if x == 3 do
      Process.sleep(1000) # Simulate some work
    end
    {x, :ok}
  end)
end) |> Enum.map(fn task ->
  Task.await(task)
end) |> Enum.each(fn {x, _} -> IO.puts(x) end)
```