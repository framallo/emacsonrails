sudo apt-get install libgtk2.0-dev libglade2-dev ttf-inconsolata

git submodule init
git submodule update

cd rinari
git submodule init
git submodule update
cd ..

cd org-mode
make
cd ..

cd predictive
make
cd ..

cd gpicker-1.0
./configure
make
sudo make install
cd ..

cat dot.emacs >> ~/.emacs
cat dot.Xresources >> ~/.Xresources

