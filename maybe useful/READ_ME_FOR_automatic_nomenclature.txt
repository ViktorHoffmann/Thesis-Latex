Bei Verwendung von texstudio muss ein eigener Befehler definiert werden, um die Nomenklatur zu erstellen. Dazu folgende Anweisungen befolgen:

1. Reiter 'Options' öffnen
2. 'configure TeXstudio...' anklicken
3. Reiter 'Build' öffnen
4. In der Mitte auf 'Add' klicken
5. Namen des Befehls wählen, z.B. 'Make Nomenclature'    (siehe HowTo_Make_Nomenclature.png)
6. In das Feld rechts daneben 'makeindex -s nomencl.ist -t %.nlg -o %.nls %.nlo' eingeben
7. Ein neuer Befehl ist jetzt verfügbar, der über 'Tools' -> 'User' -> 'Make Nomenclature' ausführbar ist. Damit wird das .nls- und das .nlo-file 
   erzeugt. Diese werden für die Nomenklatur im .tex-file benötigt. 
8. Eine Änderung der Nomenklatur wird erst dann übernommen, wenn der Befehl 'Make Nomenclature' ausgeführt wurde.

Neben der .nlo- und .nls-Datei werden durch das Kompilieren der .tex-Datei noch die .aux-, .lof-, .log-, .lot-, .nlg-, .soc-, .synctex.gz-, & die .toc-Datei erstellt.

 

