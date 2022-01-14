def pipelineContext = [:]
nœud {

   def registreProjet = ' localhost:5000/ '
   def  IMAGE = " ${ registreProjet } apache:version- ${ env.BUILD_ID } "

    stage( ' Cloner ' ) {
          caisse scm
    }

    def img = stage( ' Construire ' ) {
          docker . build( " $I MAGE " ,   ' . ' )
    }

    stage( ' Exécuter ' ) {
          img . withRun( " --name run- $B UILD_ID -p 8000:80 " ) { c  ->
       
          }
    }

    stage( ' Pousser ' ) {
          docker . withRegistry( ' https://localhost:5000 ' , ' registre_id ' ) {
              img . appuyez sur ' dernier '
              img . pousser()
          }
    }

}
