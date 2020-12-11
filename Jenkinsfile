pipeline {
    agent any
    stages {
        stage('Etapa Test ') {
            steps {
                sh 'mvn test --file Code/pom.xml'
            }
        }
    
        stage('Etapa Snapshot') {
            steps {
                sh 'mvn versions:set -DnewVersion=4.0.0-SNAPSHOT  --file Code/pom.xml'
                sh 'mvn clean deploy --file Code/pom.xml'
            }
        }
        stage('Etapa Release') {
            steps {
                sh 'mvn versions:set -DnewVersion=4.0.0  --file Code/pom.xml'
                sh 'mvn clean deploy --file Code/pom.xml'
            }
        }
        stage('Etapa DockerHub') {
            steps {
                sh 'docker build --tag sebastianmascolo/centos0:latest .'
                sh 'docker push sebastianmascolo/centos0'
            }
	}
    }
}
