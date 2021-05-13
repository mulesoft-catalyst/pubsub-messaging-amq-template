%dw 2.0
output application/json
---
{
  timestamp: now(),
  status: "Running",
  details: {
    appName: app.name
  }
}
