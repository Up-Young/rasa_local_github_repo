######################################################################
#  This Dockerfile is used for local development                     #
######################################################################

# Extend the official Rasa SDK image
FROM rasa/rasa-sdk:2.8.0
# Use subdirectory as working directory
WORKDIR /app

# Copy any additional custom requirements, if necessary (uncomment next line)
COPY actions/requirements.txt ./

# Copy actions folder to working directory
COPY ./actions /app/actions

# By best practices, don't run the code with root user
USER 1001