FROM      redhat/ubi9
RUN       dnf install mysql -y
COPY      app-user.sql master-data.sql schema.sql run.sh /
ENTRYPOINT  ["bash", "/run.sh"]
