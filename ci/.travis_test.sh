echo "running sample.."
./build/sample

if [[ $TRAVIS_BRANCH == 'master' ]]
    echo "building doxygen docs"
    cd docs
    doxygen Doxyfile

    echo "docs build successfully"

    cd ..

    echo "Building mkdocs"
    mkdocs build --verbose --clean --strict
fi
