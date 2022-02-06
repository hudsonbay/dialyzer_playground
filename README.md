# DialyzerPlayground

This project is a simple currency converter that converts Singapore dollars (SGD) to United States dollars (USD).

It aims to create example files that demonstrate how Dialyzer can catch simple type errors.

This is the result of following _The Little Elixir & OTP Guidebook_ book from _Benjamin Tan Wei Hao_, released in 2017 by Manning Publications.

## Installation

```sh
mix do deps.get, deps.compile
```

## Try it and see the errors thrown by `dialyzer`

```sh
mix dialyzer
```

## Play with the project

```Elixir
MyEnum.map(fn x -> x * 2 end, [1,2,3])

Hexy.rgb_to_hex({170, 201, 13})
```
