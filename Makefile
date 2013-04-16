USER=root
HOST=192.168.255.1

INDEX=index.html

BOOTSTRAP_CSS=styles/bootstrap.css
MAIN_CSS=styles/main.css

NG_JS=components/angular/angular.js
NG_RESOURCE_JS=components/angular-resource/angular-resource.js
NG_COOKIES_JS=components/angular-cookies/angular-cookies.js
NG_SANITIZE_JS=components/angular-sanitize/angular-sanitize.js
NG_BOOTSTRAP_JS=components/angular-bootstrap/ui-bootstrap-tpls.js

APP_JS=scripts/app.js
MAIN_JS=scripts/controllers/main.js
SENSOR_JS=scripts/controllers/sensor.js

MAIN_HTML=views/main.html
SENSOR_HTML=views/sensor.html

init:
	@scp app/$(BOOTSTRAP_CSS) $(USER)@$(HOST):/www/$(BOOTSTRAP_CSS)
	@scp app/$(NG_JS) $(USER)@$(HOST):/www/$(NG_JS)
	@scp app/$(NG_RESOURCE_JS) $(USER)@$(HOST):/www/$(NG_RESOURCE_JS)
	@scp app/$(NG_COOKIES_JS) $(USER)@$(HOST):/www/$(NG_COOKIES_JS)
	@scp app/$(NG_SANITIZE_JS) $(USER)@$(HOST):/www/$(NG_SANITIZE_JS)
	@scp app/$(NG_BOOTSTRAP_JS) $(USER)@$(HOST):/www/$(NG_BOOTSTRAP_JS)

load:
	@scp app/$(INDEX) $(USER)@$(HOST):/www/$(INDEX)
	@scp app/$(MAIN_CSS) $(USER)@$(HOST):/www/$(MAIN_CSS)
	@scp app/$(APP_JS) $(USER)@$(HOST):/www/$(APP_JS)
	@scp app/$(MAIN_JS) $(USER)@$(HOST):/www/$(MAIN_JS)
	@scp app/$(SENSOR_JS) $(USER)@$(HOST):/www/$(SENSOR_JS)
	@scp app/$(MAIN_HTML) $(USER)@$(HOST):/www/$(MAIN_HTML)
	@scp app/$(SENSOR_HTML) $(USER)@$(HOST):/www/$(SENSOR_HTML)