FROM ghcr.io/servercontainers/samba

HEALTHCHECK --interval=2s --timeout=2s --start-period=5s CMD ["/container/scripts/docker-healthcheck.sh"]

ENTRYPOINT ["/container/scripts/entrypoint.sh"]
CMD [ "runsvdir","-P", "/container/config/runit" ]
