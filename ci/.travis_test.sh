echo "running sample.."
./build/sample

echo "building doxygen docs"
cd docs
doxygen Doxyfile

echo "docs build successfully"

cd ..
