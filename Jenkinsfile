//  This shows a simple build wrapper example, using the AnsiColor plugin.
//node {
    // This displays colors using the 'xterm' ansi color map.
//    ansiColor('xterm') {
//        // Just some echoes to show the ANSI color.
  //      stage "\u001B[31mI'm Red\u001B[0m Now not"
//    }
//}

node {
    stage 'Clone the project'
    git 'https://github.com/sebastianmascolo/jenkins'
  
    dir('Code') {
        stage("Build") {
            parallel 'Compilation': {
                sh "./mvn clean deploy -DskipTests"
            }, 'Static Analysis': {
                stage("Checkstyle") {
                    sh "./mvnw checkstyle:checkstyle"
                    
                    step([$class: 'CheckStylePublisher',
                      canRunOnFailed: true,
                      defaultEncoding: '',
                      healthy: '100',
                      pattern: '**/target/checkstyle-result.xml',
                      unHealthy: '90',
                      useStableBuildAsReference: true
                    ])
                }
            }
        }
        
}
}
}
