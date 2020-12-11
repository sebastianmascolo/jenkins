pipeline {
    agent {label 'bc-sebastianmascolo'}
    stages {
        stage('Etapa ls ') {
            steps {
                sh 'ls'
            }
        }
        stage('Etapa Test ') {
            steps {
                sh 'mvn test --file Code/pom.xml'
            }
        }
    
        stage('Etapa Snapshot') {
            steps {
                sh 'mvn versions:set -DnewVersion=4.0.0-SNAPSHOT -DskipTests  --file Code/pom.xml'
                sh 'mvn clean deploy --file Code/pom.xml'
            }
        }
        stage('Etapa Release') {
            steps {
                sh 'mvn versions:set -DnewVersion=4.0.0 -DskipTests --file Code/pom.xml'
                sh 'mvn clean deploy --file Code/pom.xml'
            }
        }
        stage('Etapa DockerHub') {
            steps {
                sh 'docker build --tag sebastianmascolo/centos0:latest Docker/'
                sh 'docker push sebastianmascolo/centos0'
            }
	}
    }
}
