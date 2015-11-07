# TVInstallGenerator
The generation script for Inno Setup Compiler that's used to create the tribes installer given the files to be installed and an icon (included)

Tested and found working with version 5.5.6 (a)

The Inno Setup Compiler can be found here http://www.jrsoftware.org/isinfo.php

If you're going to create an install, change the Source paths under the [Files] directive to where you keep the files. It is expected that the source files will have the same structure as the intended structure of the final install i.e. VUGames\Tribes Vengeance\{Content, Program, etc}.
There are absolutely no changes applied that modify where the files end up (no current plans to do so either).

To create and run a test installation, it's helpful to create a test file structure where only the "Bin" folder exists i.e. VUGames\Tribes Vengeance\Program\Bin and has the contents of the Bin folder in the actual install. This gives you a quick and easy way to make sure all the files get installed right and the post install operations happen properly and whatnot without you having to wait for it to compress the entire game.
