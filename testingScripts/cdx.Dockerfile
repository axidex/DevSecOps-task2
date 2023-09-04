FROM golang:bullseye

COPY rep .

RUN cyclonedx-gomod app -output /sbom.xml /rep