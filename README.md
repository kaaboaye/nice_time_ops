# NiceTimeOps

**TODO: Add description**

## Installation

```elixir
def deps do
  [
    {:nice_time_ops, github: "kaaboaye/nice_time_ops"}
  ]
end
```

## Usage

```
iex(4)> %NaiveDateTime{}[2][:hours][:ago]
~N[2022-01-28 20:11:30.521683]
iex(5)> %DateTime{}[2][:hours][:from_now]
~U[2022-01-29 00:11:49.317442Z]
iex(6)> ~U[2022-01-29 00:11:49.317442Z][2][:years][:before]
~U[2020-01-29 00:11:49.317442Z]
iex(7)> ~U[2022-01-29 00:11:49.317442Z][100][:years][:ahead]
~U[2122-01-29 00:11:49.317442Z]
```

## Is NiceTimeOps production ready?

Yeah, sure. What can go wrong?

## TODO

- Use already `DateTime` and `NaiveDateTime` shipped with Elixir by modifying those modules' bytecode at runtime. I know it's doable but I'm to lazy to do it myself. PRs are welcome <3
