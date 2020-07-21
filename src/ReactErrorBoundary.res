type fallbackProps = {
  error: option<Js.Exn.t>,
  componentStack: option<string>,
  resetErrorBoundary: unit => unit,
}

@react.component @bs.module("react-error-boundary")
external make: (
  ~onResetKeysChange: (array<'a>, array<'b>) => unit=?,
  ~onReset: unit => unit=?,
  ~onError: (Js.Exn.t, string) => unit=?,
  ~resetKeys: array<'a>=?,
  @bs.as("FallbackComponent") ~fallbackComponent: React.element=?,
  ~fallbackRender: fallbackProps => React.element=?,
  ~fallback: React.element=?,
  ~children: React.element,
) => React.element = "ErrorBoundary"
