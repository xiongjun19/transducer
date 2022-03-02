python setup.py install
cp build/lib.linux-x86_64-3.8/transducer/*.so transducer
python torch_test.py
