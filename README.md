# Projeto Hackaton Fiap - 69AOJ

## Resumo

Portas:

```
donateverse-mysql:3306
donateverse-prometheus:9090 
donateverse-zipkin:9411
donateverse-discovery-server:8761
donateverse-gateway:9091

donateverse-user:8080
donateverse-transaction:8081
donateverse-center:3012

```

## Atualizando submodules

```
git submodule init
git submodule update --recursive --remote
```

---

## Build projetos

### Geral

cd project-name

Build Project
mvn package

### Buildar todas via script

./build-projects.sh

---

## Deploy

Iniciando aplicações:

```
sudo docker-compose up -d --build
```

Parando aplicações:

```
sudo docker-compose down
```

Visualizando logs:

```
sudo docker-compose logs -f
```

---

## Iniciar Infra (kafka, zipkin e discovery)

Iniciando aplicações:

```
sudo docker-compose -f docker-compose-infra.yml up -d --build
```

Parando aplicações:

```
sudo docker-compose down
```