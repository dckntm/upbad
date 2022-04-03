from flask import Flask


def hello_world_handler():
    return "<h1>Hello, world!</h1>"


def create_app() -> Flask:
    """Factory function for entrypoint Flask app.

    Returns:
        Flask: app to run
    """
    app = Flask(__name__)

    app.add_url_rule("/", view_func=hello_world_handler)

    return app
