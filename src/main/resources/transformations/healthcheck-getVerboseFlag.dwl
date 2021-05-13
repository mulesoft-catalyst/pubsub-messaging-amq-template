%dw 2.0
output application/json

import try, fail from dw::Runtime
import * from dw::core::Binaries

fun getClientId(inAuthString) =
 splitBy(fromBase64(splitBy(inAuthString, " ")[1]), ":")[0]

var vClientId = try(() -> getClientId(attributes.headers.authorization))

---
(attributes.queryParams.mode == "verbose") and
(vClientId.success == true) and
(vClientId.result == p('app.admin.client.id'))
