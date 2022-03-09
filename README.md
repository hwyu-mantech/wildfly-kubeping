# wildfly-kubeping 사용법

## 1. 도커빌드
```bash
docker build -t <docker images> .
```

## 2. ServiceAccount, ClusterRole, ClusterRoleBinding 배포
```bash
kubectl apply -f wildfly-sa-role.yaml
```

## 3. Wildfly 배포
```bash
kubectl apply -f wildfly-deploy.yaml
```

## 4. 배포된 Cluster 샘플소스 확인
