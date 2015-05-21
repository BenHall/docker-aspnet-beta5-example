FROM benhall/aspnet-vnext-npm
USER root
ADD WebApplication /app
RUN chown -R dev:dev /app
user dev
WORKDIR /app
RUN ["dnu", "restore"]

EXPOSE 5001
ENTRYPOINT ["dnx", ".", "kestrel"]
