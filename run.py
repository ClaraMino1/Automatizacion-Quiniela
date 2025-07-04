from app import create_app
import logging

logger = logging.getLogger(__name__)

if __name__ == '__main__':
    logger.info("Iniciando aplicación Flask")
    app = create_app()
    app.run(
        host='0.0.0.0',
        port=5000,
        debug=True
    )
