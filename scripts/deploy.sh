docker push wolfgangbecker/udacity-c4-proxy:latest
docker push wolfgangbecker/udacity-c4-frontend:latest
docker push wolfgangbecker/udacity-c4-user-api:latest
docker push wolfgangbecker/udacity-c4-feed-api:latest
kubectl apply -f k8s
kubectl set image deployments/proxy-deployment client=wolfgangbecker/udacity-c4-proxy:$SHA
kubectl set image deployments/frontend-deployment client=wolfgangbecker/udacity-c4-frontend:$SHA
kubectl set image deployments/user-api-deployment client=wolfgangbecker/udacity-c4-user-api:$SHA
kubectl set image deployments/feed-api-deployment client=wolfgangbecker/udacity-c4-feed-api:$SHA
