    +-------------------+       +------------------+       +----------------------+
    | GitHub Repository |       | Jenkins Pipeline |       |   Kubernetes Cluster  |
    |  (Source Control) |       |   (CI/CD System) |       |  (Container Orchestration)|
    +--------+----------+       +---------+--------+       +------------+---------+
             |                           |                            | 
             | Git Webhooks              |                            |  Kubernetes API
             |                           |                            |
             v                           |                            |
    +--------+----------+       +--------v----------+       +-------v--------------+
    |   Jenkins Server  |       |    Terraform      |       |    EC2 Instances     |
    | (CI/CD Pipeline)  |       | (Infrastructure   |       |  (Compute Resources) |
    +---------+---------+       |  Provisioning)    |       +-----------+----------+
              |                 +--------+----------+                     |
              |                           |                               |
              | Jenkins Pipeline          | Terraform                     |
              |                           |                               |
              v                           v                               v
  +-----------+-----------+   +-----------+--------------+    +-----------+-----------+
  |    Microservices      |   |      Kubernetes          |    |        Grafana        |
  | (Docker Containers)   |   | (Container Orchestration)|    |   (Monitoring System) |
  +-----------+-----------+   +-----------+--------------+    +-----------+-----------+
              |                           |                               |
              | Docker Registry           |                               |
              |                           |                               |
              v                           |                               |
   +----------+----------+                |                               |
   |      DockerHub      |                |                               |
   | (Container Registry)|                |                               |
   +---------------------+                |                               |
                                          |                               |
                                          v                               |
                                  +-------+---------+                     |
                                  |     Prometheus  |                     |
                                  |  (Monitoring)   |                     |
                                  +-----------------+                     |
                                                                          |
                                                                          v
                                                                   +-------+----------+
                                                                   |     AlertManager |
                                                                   | (Alerting System)|
                                                                   +------------------+
