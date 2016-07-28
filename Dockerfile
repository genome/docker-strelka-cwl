FROM mgibio/strelka:1.0.15
MAINTAINER Thomas B. Mooney <tmooney@genome.wustl.edu>

LABEL \
  version="1.0.15" \
  description="Strelka image adapter for CWL"

ENTRYPOINT [] #clear the inherited entrypoint

ADD cwl_helper.sh /usr/bin/
CMD ["/usr/bin/cwl_helper.sh"]
