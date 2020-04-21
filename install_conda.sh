if [[ $TRAVIS_OS_NAME == "osx" ]]; then
  MINICONDA_OS=MacOSX
else
  MINICONDA_OS=Linux
fi
wget https://repo.continuum.io/miniconda/Miniconda3-latest-${MINICONDA_OS}-x86_64.sh -O miniconda.sh
bash miniconda.sh -b -p $HOME/miniconda
source $HOME/miniconda/etc/profile.d/conda.sh
hash -r
conda config --set always_yes yes --set changeps1 no
conda update -q conda

