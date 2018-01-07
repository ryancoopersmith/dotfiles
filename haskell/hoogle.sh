#!/bin/bash
#
# Installs hoogle, generates databases and enables ghci hoogle integration (:hoogle and :doc)

if cabal list | grep -i hoogle; then
  set -e
  echo "Found hoogle"
else
  set -e
  echo "Installing and setting up hoogle... this may take a while"
  cabal install hoogle
  hoogle generate
  echo >> ~/.ghci ':def hoogle \x -> return $ ":!hoogle \"" ++ x ++ "\""'
  echo >> ~/.ghci ':def doc \x -> return $ ":!hoogle --info \"" ++ x ++ "\""'
fi
