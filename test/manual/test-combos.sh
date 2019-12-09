#!/usr/bin/env bash

set -e

echo "========================================================================="
echo "Testing spring knative no svc"
echo "========================================================================="
./test-combo.sh test-genv2-app-spring-knative-no-svc.json https://github.com/IBM/spring-microservice.git

echo "========================================================================="
echo "Testing spring knative cloudant"
echo "========================================================================="
./test-combo.sh test-genv2-app-spring-knative-cloudant.json https://github.com/IBM/spring-microservice.git

echo "========================================================================="
echo "Testing spring knative appid"
echo "========================================================================="
./test-combo.sh test-genv2-app-spring-knative-appid.json https://github.com/IBM/spring-microservice.git

echo "========================================================================="
echo "Testing spring knative cos"
echo "========================================================================="
./test-combo.sh test-genv2-app-spring-knative-cos.json https://github.com/IBM/spring-microservice.git



echo "========================================================================="
echo "Testing liberty knative no svc"
echo "========================================================================="
./test-combo.sh test-genv2-app-liberty-knative-no-svc.json https://github.com/IBM/java-liberty-microservice.git

echo "========================================================================="
echo "Testing liberty knative cloudant"
echo "========================================================================="
./test-combo.sh test-genv2-app-liberty-knative-cloudant.json https://github.com/IBM/java-liberty-microservice.git



echo "========================================================================="
echo "Testing spring helm no svc"
echo "========================================================================="
./test-combo.sh test-genv2-app-spring-helm-no-svc.json https://github.com/IBM/spring-microservice.git

echo "========================================================================="
echo "Testing spring helm cloudant"
echo "========================================================================="
./test-combo.sh test-genv2-app-spring-helm-cloudant.json https://github.com/IBM/spring-microservice.git

echo "========================================================================="
echo "Testing spring helm cos"
echo "========================================================================="
./test-combo.sh test-genv2-app-spring-helm-cos.json https://github.com/IBM/spring-microservice.git

echo "========================================================================="
echo "Testing spring helm appid"
echo "========================================================================="
./test-combo.sh test-genv2-app-spring-helm-appid.json https://github.com/IBM/spring-microservice.git



echo "========================================================================="
echo "Testing go knative no svc"
echo "========================================================================="
./test-combo.sh test-genv2-app-go-knative-no-svc.json https://github.com/IBM/go-microservice.git

echo "========================================================================="
echo "Testing go knative cloudant"
echo "========================================================================="
./test-combo.sh test-genv2-app-go-knative-cloudant.json https://github.com/IBM/go-microservice.git

echo "========================================================================="
echo "Testing go knative appid"
echo "========================================================================="
./test-combo.sh test-genv2-app-go-knative-appid.json https://github.com/IBM/go-microservice.git



echo "========================================================================="
echo "Testing node express knative no svc"
echo "========================================================================="
./test-combo.sh test-genv2-app-express-knative-no-svc.json https://github.com/IBM/nodejs-microservice.git

echo "========================================================================="
echo "Testing node express knative cloudant"
echo "========================================================================="
./test-combo.sh test-genv2-app-express-knative-cloudant.json https://github.com/IBM/nodejs-microservice.git

echo "========================================================================="
echo "Testing node express knative appid"
echo "========================================================================="
./test-combo.sh test-genv2-app-express-knative-appid.json https://github.com/IBM/nodejs-microservice.git


echo "========================================================================="
echo "Testing swift knative no svc"
echo "========================================================================="
./test-combo.sh test-genv2-app-swift-knative-no-svc.json https://github.com/IBM/swift-web-app.git

echo "========================================================================="
echo "Testing swift knative cloudant"
echo "========================================================================="
./test-combo.sh test-genv2-app-swift-knative-cloudant.json https://github.com/IBM/swift-web-app.git

echo "========================================================================="
echo "Testing swift knative appid"
echo "========================================================================="
./test-combo.sh test-genv2-app-swift-knative-appid.json https://github.com/IBM/swift-web-app.git


echo "========================================================================="
echo "Testing flask knative no svc"
echo "========================================================================="
./test-combo.sh test-genv2-app-python-knative-no-svc.json https://github.com/IBM/flask-web-app.git

echo "========================================================================="
echo "Testing flask knative cloudant"
echo "========================================================================="
./test-combo.sh test-genv2-app-python-knative-cloudant.json https://github.com/IBM/flask-web-app.git

echo "========================================================================="
echo "Testing flask knative appid"
echo "========================================================================="
./test-combo.sh test-genv2-app-python-knative-appid.json https://github.com/IBM/flask-web-app.git


echo "========================================================================="
echo "Testing flask helm no svc"
echo "========================================================================="
./test-combo.sh test-genv2-app-python-helm-no-svc.json https://github.com/IBM/flask-web-app.git

echo "========================================================================="
echo "Testing flask helm cloudant"
echo "========================================================================="
./test-combo.sh test-genv2-app-python-helm-cloudant.json https://github.com/IBM/flask-web-app.git

echo "========================================================================="
echo "Testing flask helm appid"
echo "========================================================================="
./test-combo.sh test-genv2-app-python-helm-appid.json https://github.com/IBM/flask-web-app.git


echo "========================================================================="
echo "Testing flask cf no svc"
echo "========================================================================="
./test-combo.sh test-genv2-app-python-cf-no-svc.json https://github.com/IBM/flask-web-app.git

echo "========================================================================="
echo "Testing flask cf cloudant"
echo "========================================================================="
./test-combo.sh test-genv2-app-python-cf-cloudant.json https://github.com/IBM/flask-web-app.git

echo "========================================================================="
echo "Testing flask cf appid"
echo "========================================================================="
./test-combo.sh test-genv2-app-python-cf-appid.json https://github.com/IBM/flask-web-app.git