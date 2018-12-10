# For Dan's use only (IAA willn not need this)
gcloud compute firewall-rules create flask-apps \
    --action allow \
    --direction ingress \
    --rules tcp:$1 \
    --target-tags flask-apps \
    --source-ranges 0.0.0.0/0 \
    --priority 1000

#ZEND
