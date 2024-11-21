# Gunakan image Node.js sebagai base
FROM node:22-alpine

# Set working directory
WORKDIR /app

# Salin file package.json dan package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Salin semua file ke container
COPY . .

# Build aplikasi Next.js
RUN npm run build

# Expose port aplikasi
EXPOSE 3000

# Jalankan aplikasi
CMD ["npm", "start"]
