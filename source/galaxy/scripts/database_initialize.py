import logging

from scripts.test_data import init_test_data

logger = logging.getLogger(__name__)


def run():
    logger.info("Initializing database…")
    init_test_data.run()
