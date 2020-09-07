FROM python:3

RUN pip install -U pip && pip install changerelease==1.3.0

RUN echo '#!/bin/sh -ex\nchangerelease sync $@' > /entrypoint.sh && chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
