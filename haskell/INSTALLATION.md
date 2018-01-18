Make a directory to store these repos and builds

**IMPORTANT**: Do NOT mess with the path to these builds
- the new binaries depend on this path being the same as when the builds were created
- if you do need to change the path, delete these three binaries under ~/.local/bin and create them again

Enter the new directory
Checkout this branch: git clone git@github.com:ariskou/ghc-mod.git -b ghc802
Checkout the master branch for cabal-helper: git clone https://github.com/DanielG/cabal-helper.git
Enter the ghc-mod directory
Create a stack.yaml file with these contents:
resolver: lts-10.0

packages:
- location: .
- location: ../cabal-helper
  extra-dep: true

extra-deps: 
- extra-1.5.3
- monad-journal-0.7.2
- optparse-applicative-0.13.2.0
- unix-compat-0.4.3.1
- either-4.4.1.1

                
flags: {}

extra-package-dbs: []

Run stack build. You should get working ghc-mod binaries somewhere in the .stack-work subdirectory.
Copy these three new binaries to ~/.local/bin
