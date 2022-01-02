using Kuber 

ctx = KuberContext()

git_repo="https://github.com/bibinwilson/kubernetes-grafana.git"


# function  run_command(git)
#     run(`git clone $git`)
    
# end


# if (!LoadError):

# run_command(git_repo)


grafana_config=kuber_obj(ctx,"""{
    "apiVersion": "v1",
    "kind": "ConfigMap",
    "metadata":{
      "name": "grafana-datasources",
      "namespace": "monitoring"
      }
}""");

# grafana_deploy = kuber_obj(ctx,"""{
#     apiVersion: apps/v1
# kind: Deployment
# metadata:
#   name: grafana
#   namespace: monitoring
# spec:
#   replicas: 1
#   selector:
#     matchLabels:
#       app: grafana
#   template:
#     metadata:
#       name: grafana
#       labels:
#         app: grafana
#     spec:
#       containers:
#       - name: grafana
#         image: grafana/grafana:latest
#         ports:
#         - name: grafana
#           containerPort: 3000
#         resources:
#           limits:
#             memory: "1Gi"
#             cpu: "1000m"
#           requests: 
#             memory: 500M
#             cpu: "500m"
#         volumeMounts:
#           - mountPath: /var/lib/grafana
#             name: grafana-storage
#           - mountPath: /etc/grafana/provisioning/datasources
#             name: grafana-datasources
#             readOnly: false
#       volumes:
#         - name: grafana-storage
#           emptyDir: {}
#         - name: grafana-datasources
#           configMap:
#               defaultMode: 420
#               name: grafana-datasources
# }""");

