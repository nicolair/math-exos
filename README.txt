Présentation

Ce dépôt fait partie du projet maquisdoc dont l'objectif est de présenter
- des documents pédagogiques
- des informations sur la manière de les organiser
- des outils pour les maintenir, les relier, les diffuser
Le projet se répartit sur plusieurs hébergeurs notamment des dépôts GitHub contenant le code des outils et les sources Tex des documents pédagogiques.

Ce dépôt particulier maths-exos https://github.com/nicolair/maths-exos contient les sources (essentiellement Tex) d'une collection d'exercices de mathématiques destinés à la classe de mpsi.

Conventions de nommage

- Les noms des fichiers sont formés de la manière suivante
    - la lettre "E" ou "C"
    - le code à deux lettres du thème de l'exercices
    - le numéros à deux chiffres de l'exercice dans le thème
- Les fichiers dont le nom commence par "E" sont relatifs à des énoncés.
- Les fichiers dont le nom commence par "C" sont relatifs à des corrigés.
- Les énoncés comme les corrigés peuvent inclure des figures en pdf compilées à partir de sources le plus souvent en Asymptote (.asy) parfois en Python. Le numéro de la figure apparaît dans le nom du fichier juste avant l'extension et précédée d'un underscore "_" .
- La liste des thèmes codés est donnée dans le fichier "_codes.csv". 

Compilation

Le dépôt ne contient pas de fichier à compiler directement. Il faut inclure des fichiers E***.tex ou C**.tex dans un fichier LateX commençant par inclure "exopdf.tex" de manière à disposer des paquetages et des commandes utilisées.
En principe les figures en pdf sont présentes dans le dépôt Git pour ceux qui ne sont pas habitués à Asymptote

Exemple:  
Le code LateX suivant présente l'exercice cp26 et son corrigé. Il porte sur les nombres complexes.

\input{exopdf.tex}
\begin{document}

\begin{enumerate}
  \item \input{Ecp26} \newline \input{Ccp26}
\end{enumerate}

\end{document}
