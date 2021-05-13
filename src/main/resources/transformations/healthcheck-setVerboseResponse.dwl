%dw 2.0
output application/json
---
{
  timestamp: now(),
  status: "Running",
  details: {
    appName: app.name,
	appProperties: {
	deployedAppName: app.name,
	muleVersion: mule.version,
	encoding: app.encoding,
	standalone: app.standalone,
	workDir: app.workDir,
	listeningHost: attributes.headers.host default ''
	},
	reservedProperties: {
	javaVendor: Mule::p("java.vendor"),
	javaName: Mule::p("java.runtime.name"),
	javaVersion: Mule::p("java.version"),
	orgId: Mule::p("csorganization.id"),
	envId: Mule::p("environment.id"),
	envType: Mule::p("environment.type"),
	workerId: Mule::p("worker.id"),
	domain: Mule::p("domain"),
	fullDomain: Mule::p("fullDomain"),
	region: Mule::p("application.aws.region"),
	httpPort: Mule::p("http.port"),
	httpsPort: Mule::p("https.port"),
	httpPrivatePort: Mule::p("http.private.port"),
	httpsPrivatePort: Mule::p("https.private.port"),
	muleHome: Mule::p("mule.home")
	},
	serverProperties: {
	time: now() as String {format: "yyyy-MM-dd'T'HH:mm:ss.SSSZ"} ,
	host: server.host,
	ipAddr: server.ip,
	javaVendor: server.javaVendor,
	javaVersion: server.javaVersion,
	osArch: server.osArch,
	osName: server.osName,
	osVersion: server.osVersion,
	fileSeparator: server.fileSeparator,
	tmpDir: server.tmpDir,
	userDir: server.userDir,
	userHome: server.userHome,
	userName: server.userName,
  },
	requestAttributes: attributes
  }
}