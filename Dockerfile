FROM neo4j:5.0-community

# Install wget to download APOC
RUN apt-get update && apt-get install -y wget

# Download and install APOC
RUN wget https://github.com/neo4j/apoc/releases/download/5.0.0/apoc-5.0.0-core.jar -O /var/lib/neo4j/plugins/apoc-5.0.0-core.jar

# Expose the default ports
EXPOSE 7474 7687
