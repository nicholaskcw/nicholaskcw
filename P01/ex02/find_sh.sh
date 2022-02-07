find . -name "*.sh" -exec basename {} + | rev | cut -f 2- -d '.' | rev
