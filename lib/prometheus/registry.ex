defmodule Prometheus.Registry do

  defmacro collect(callback, registry \\ :default) do
    quote do
      :prometheus_registry.collect(unquote(registry), unquote(callback))
    end
  end

  defmacro collectors(registry \\ :default) do
    quote do
      :prometheus_registry.collectors(unquote(registry))
    end
  end

  defmacro register_collector(collector, registry \\ :default) do
    quote do
      :prometheus_registry.register_collector(unquote(registry), unquote(collector))
    end
  end

  defmacro deregister_collector(collector, registry \\ :default) do
    quote do
      :prometheus_registry.deregister_collector(unquote(registry), unquote(collector))
    end
  end

  defmacro clear(registry \\ :default) do
    quote do
      :prometheus_registry.clear(unquote(registry))
    end
  end

  defmacro collector_registred?(collector, registry \\ :default) do
    quote do
      :prometheus_registry.collector_registeredp(unquote(registry), unquote(collector))
    end
  end
  
end
