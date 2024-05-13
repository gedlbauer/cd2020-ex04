FROM golang:1.20-alpine

# Set maintainer label: maintainer=[YOUR-EMAIL]
LABEL maintainer="s23455005@fh-ooe.at"

# Set working directory: `/src`
WORKDIR /src

# Copy local file `main.go` to the working directory
ADD . .

# List items in the working directory (ls)
RUN ls

# Build the GO app as myapp binary and move it to /usr/
RUN go build -o /usr/myapp

#Expose port 8888
EXPOSE 8888

# Run the service myapp when a container of this image is launched
ENTRYPOINT [ "/usr/myapp" ]