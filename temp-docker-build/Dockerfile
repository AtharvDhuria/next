# Multi-stage build for Next.js 15
FROM node:20 AS builder

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install all dependencies
RUN npm ci

# Copy source code
COPY . .

# Build Next.js app
RUN npm run build

# Production stage
FROM node:20 AS runner

WORKDIR /app

# Copy package files
COPY package*.json ./

# Install only production dependencies
RUN npm ci --only=production

# Copy built application
COPY --from=builder /app/.next ./.next
COPY --from=builder /app/public ./public

# Expose Next.js port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]