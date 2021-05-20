import os
import logging

from flask import Flask

from .frontend.assets import assets

from .frontend.blueprints.pages import pages

print(os.getcwd())

app = Flask(
	__name__,
	static_folder="frontend/static",
    template_folder="frontend/templates"
)

app.config.from_object(os.environ["BESHBARMAK_CONFIG"])
log = logging.getLogger('werkzeug')
log.setLevel(app.config["WEB_LOG_LEVEL"])

assets.init_app(app)
app.register_blueprint(pages)