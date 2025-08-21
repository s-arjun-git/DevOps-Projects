FROM node:18
WORKDIR /usr/src/app

# Install only production deps
COPY app/package*.json ./
RUN npm install --only=production

# Copy application code
COPY app/ .

EXPOSE 3000
CMD ["npm", "start"]
