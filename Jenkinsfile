pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/Suman2895/Guvi-Task-20.git'
            }
        }
        stage('Install Requirements') {
            steps {
                bat '"C:\\Users\\Sumanth\\AppData\\Local\\Programs\\Python\\Python314\\python.exe" -m pip install -r requirements.txt'
            }
        }
        stage('Run Tests') {
            steps {
                bat '"C:\\Users\\Sumanth\\AppData\\Local\\Programs\\Python\\Python314\\python.exe" -m robot Tests'
            }
        }
    }
}
