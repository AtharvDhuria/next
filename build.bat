@echo off
echo Starting Docker build...
cd /d S:\new
echo Current directory: %cd%
echo Running docker build...
docker build -t nextjs-app .
echo Docker build completed with exit code %errorlevel%
docker images nextjs-app