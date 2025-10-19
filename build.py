from weasyprint import HTML, CSS
from weasyprint.text.fonts import FontConfiguration
import sys
import time
import logging
from watchdog.observers import Observer
from watchdog.events import LoggingEventHandler

class EventHandler(LoggingEventHandler):
    """Rebuild files."""

    def __init__(self, logger=None):
        super().__init__()

    def on_moved(self, event):
        super().on_moved(event)
        self.on_any()

    def on_created(self, event):
        super().on_created(event)
        self.on_any()

    def on_deleted(self, event):
        super().on_deleted(event)
        self.on_any()

    def on_modified(self, event):
        super().on_modified(event)
        self.on_any()

    def on_any(self):
        build_pdf()

def build_pdf():
    print('Reload')
    font_config = FontConfiguration()
    html = HTML(filename='./src/index.html')
    # css = CSS(string=css, font_config=font_config)
    html.write_pdf('./build/resume/resume.pdf', font_config=font_config)

if __name__ == "__main__":
    logging.basicConfig(level=logging.INFO,
                        format='%(asctime)s - %(message)s',
                        datefmt='%Y-%m-%d %H:%M:%S')
    path = './src'
    event_handler = EventHandler()
    observer = Observer()
    observer.schedule(event_handler, path, recursive=True)
    observer.start()
    try:
        while True:
            time.sleep(1)
    finally:
        observer.stop()
        observer.join()