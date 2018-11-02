echo "installing cmake"

sudo apt-get install cmake
echo "cmake version:"
cmake --version
echo "sudo cmake version:"
sudo cmake --version

echo "python version"
python3 --version

echo "installing mkdocs"
sudo pip install mkdocs

echo "mkdocs version"
mkdocs --version

echo "installing sample..."
mkdir build;
cd build; pwd 

cmake -DTEST=ON -DEIGEN_DIR=ON -DSHOGUN_DIR=ON ..

cd ..

make -C build VERBOSE=1

