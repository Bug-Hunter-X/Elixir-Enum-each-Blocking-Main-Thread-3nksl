# Elixir Enum.each Blocking Main Thread

This repository demonstrates a common issue in Elixir where using `Enum.each` with a potentially slow function can block the main thread.  The provided code simulates a long-running operation within the `Enum.each` loop, causing the application to appear unresponsive.

## Problem

The `Enum.each` function iterates over a list and executes a function for each element.  If the function performs lengthy I/O operations or other time-consuming tasks, it can block the entire process.

## Solution

The best approach is to avoid blocking operations within `Enum.each`. Using concurrent operations with tasks or agents can improve performance and prevent the main thread from being blocked. A better approach is using `Enum.map` with `Task.async`.