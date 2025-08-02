FROM gyoridavid/short-video-maker:latest-tiny

ENV PEXELS_API_KEY=k0gTZUBomq82e3ImusCrPJv86ItD6m3E2GwcgqjfDvk4YYwPtKqKqSDn
ENV LOG_LEVEL=debug

EXPOSE 3123

CMD ["npm", "run", "start"]