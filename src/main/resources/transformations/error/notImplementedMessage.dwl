%dw 2.0
output application/json
---
{
    "success": false,
    "apiName": Mule::p("api.name"),
    "version": Mule::p("api.name"),
    "correlationId": correlationId,
    "timestamp": now(),
    "errorDetails": [
        {
            "code": 501,
            "message": "Not Implemented",
            "additionalInfo": "Not Implemented : " ++ (error.description default "")
        }
    ]
}