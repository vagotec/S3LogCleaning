# Use a Go language base image
FROM golang:1.20-alpine
# Set the working directory to /app
WORKDIR /app
# Copy the go.mod and go.sum files to the container
COPY go.mod ./
# Download and cache the Go modules
RUN go mod download
# Copy the rest of the application code to the container
COPY . .
# Build the Go application
RUN go build -o main .
# Run the application
CMD ["./main"]


