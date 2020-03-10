FROM nfcore/base:1.7
LABEL authors="Saba Nafees" \
      description="Docker image containing all requirements for czbiohub/unsplicedcds pipeline"


COPY environment.yml /
RUN conda env create -f /environment.yml && conda clean -a
ENV PATH /opt/conda/envs/czbiohub-unsplicedcds-1.0dev/bin:$PATH
