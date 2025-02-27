### Minimal set-up for registration solvers 

```sh
sudo apt update
sudo apt install -y g++ build-essential cmake pkg-config
sudo apt install -y libeigen3-dev libomp-dev libopenblas-dev libssl-dev libboost-all-dev 

conda create -n reg python=3.11 -y
conda activate reg
pip install "numpy<2.0" "maturin[patchelf]" rich open3d
```

master-thesis
```sh
git clone --recurse-submodules -j8 https://github.com/doggydoggy0101/master-thesis.git
cd master-thesis && mkdir build && cd build
cmake .. -DBUILD_PYTHON=ON && make -j8
cd python && pip install .
cd ../../examples/python
python registration_example.py
cd ../../..
```

fracgm
```sh
git clone --recurse-submodules -j8 https://github.com/StephLin/FracGM.git
cd FracGM
python3 scripts/build_fracgm_python_package.py
python3 -m pip install $(ls ./target/wheels/*.whl) --force-reinstall
cd examples/python
python example_fracgm_py_project.py
cd ../../..
```

teaser
```sh
git clone https://github.com/MIT-SPARK/TEASER-plusplus.git
cd TEASER-plusplus && mkdir build && cd build
cmake .. -DTEASERPP_PYTHON_VERSION=3.10 && make teaserpp_python -j8
cd python && pip install .
cd ../.. && cd examples/teaser_python_ply 
python teaser_python_ply.py
cd ../../..
```