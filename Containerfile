FROM registry.access.redhat.com/ubi9-minimal

RUN microdnf --disableplugin=subscription-manager install -y nmap; \
    microdnf update -y ; \
    microdnf clean all ; \
    setcap cap_net_raw,cap_net_admin,cap_net_bind_service+eip /bin/nmap