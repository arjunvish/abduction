var goals = [{"status": "ok","goal": "Undefined behavior encountered","details-short": "Poison value created\nSigned addition caused wrapping even though the `nsw` flag was set","location": {"file": "/home/arjun/Desktop/galois/crucible/crux-llvm/tests/abduction/cFiles32bit/test-file-32.c","line": "5","col": "12"},"assumptions": [{"loc": {"file": "/home/arjun/Desktop/galois/crucible/crux-llvm/tests/abduction/cFiles32bit/test-file-32.c","line": "10","col": "0"},"text": "in main ./cFiles32bit/test-file-32.c:10:0: crucible_assume\n"}],"trivial": false,"path": [{"loop": [1],"loc": {"file": "","line": "1","col": "0"}},{"loop": [1],"loc": {"file": "/home/arjun/Desktop/galois/crucible/crux-llvm/tests/abduction/cFiles32bit/test-file-32.c","line": "9","col": "15"}},{"loop": [1],"loc": {"file": "/home/arjun/Desktop/galois/crucible/crux-llvm/tests/abduction/cFiles32bit/test-file-32.c","line": "10","col": "0"}},{"loop": [1],"loc": {"file": "/home/arjun/Desktop/galois/crucible/crux-llvm/tests/abduction/cFiles32bit/test-file-32.c","line": "5","col": "12"}}]},{"status": "fail","counter-example": [{"name": "x","loc": {"file": "/home/arjun/Desktop/galois/crucible/crux-llvm/tests/abduction/cFiles32bit/test-file-32.c","line": "9","col": "15"},"val": "0x63","bits": "32"}],"goal": "crucible_assert","details-short": null,"location": {"file": "/home/arjun/Desktop/galois/crucible/crux-llvm/tests/abduction/cFiles32bit/test-file-32.c","line": "11","col": "0"},"assumptions": [{"loc": {"file": "/home/arjun/Desktop/galois/crucible/crux-llvm/tests/abduction/cFiles32bit/test-file-32.c","line": "10","col": "0"},"text": "in main ./cFiles32bit/test-file-32.c:10:0: crucible_assume\n"}],"trivial": false,"path": [{"loop": [1],"loc": {"file": "/home/arjun/Desktop/galois/crucible/crux-llvm/tests/abduction/cFiles32bit/test-file-32.c","line": "9","col": "15"}},{"loop": [1],"loc": {"file": "/home/arjun/Desktop/galois/crucible/crux-llvm/tests/abduction/cFiles32bit/test-file-32.c","line": "5","col": "12"}}],"details-long": "./cFiles32bit/test-file-32.c:11:0: error: in main\ncrucible_assert\n"}]