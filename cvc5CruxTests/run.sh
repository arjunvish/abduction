#!/bin/bash

echo "Running tests for 3 minutes each"
echo ""

echo "8bit abd paper"
time timeout 180 cvc5 --incremental 8bit-abdpaper.smt2
echo ""

echo "8bit abd paper fast enum"
time timeout 180 cvc5 --incremental --sygus-enum=fast 8bit-abdpaper.smt2
echo ""

echo "8bit add ident"
time timeout 180 cvc5 --incremental 8bit-addident.smt2
echo ""

echo "8bit add ident fast enum"
time timeout 180 cvc5 --incremental --sygus-enum=fast 8bit-addident.smt2
echo ""

echo "8bit add inv"
time timeout 180 cvc5 --incremental 8bit-addinv.smt2
echo ""

echo "8bit add inv fast enum"
time timeout 180 cvc5 --incremental --sygus-enum=fast 8bit-addinv.smt2
echo ""

echo "8bit and ex"
time timeout 180 cvc5 --incremental 8bit-andex.smt2
echo ""

echo "8bit and ex fast enum"
time timeout 180 cvc5 --incremental --sygus-enum=fast 8bit-andex.smt2
echo ""

echo "8bit max int"
time timeout 180 cvc5 --incremental 8bit-maxint.smt2
echo ""

echo "8bit max int fast enum"
time timeout 180 cvc5 --incremental --sygus-enum=fast 8bit-maxint.smt2
echo ""

echo "8bit mult ident"
time timeout 180 cvc5 --incremental 8bit-multident.smt2
echo ""

echo "8bit mult ident fast enum"
time timeout 180 cvc5 --incremental --sygus-enum=fast 8bit-multident.smt2
echo ""

echo "8bit mult inv"
time timeout 180 cvc5 --incremental 8bit-multinv.smt2
echo ""

echo "8bit mult inv fast enum"
time timeout 180 cvc5 --incremental --sygus-enum=fast 8bit-multinv.smt2
echo ""

echo "8bit test file"
time timeout 180 cvc5 --incremental 8bit-testfile.smt2
echo ""

echo "8bit test file fast enum"
time timeout 180 cvc5 --incremental --sygus-enum=fast 8bit-testfile.smt2
echo ""

echo "8bit trans"
time timeout 180 cvc5 --incremental 8bit-trans.smt2
echo ""

echo "8bit trans fast enum"
time timeout 180 cvc5 --incremental --sygus-enum=fast 8bit-trans.smt2
echo ""

echo "32bit abd paper"
time timeout 180 cvc5 --incremental 32bit-abdpaper.smt2
echo ""

echo "32bit abd paper fast enum"
time timeout 180 cvc5 --incremental --sygus-enum=fast 32bit-abdpaper.smt2
echo ""

echo "32bit add ident"
time timeout 180 cvc5 --incremental 32bit-addident.smt2
echo ""

echo "32bit add ident fast enum"
time timeout 180 cvc5 --incremental --sygus-enum=fast 32bit-addident.smt2
echo ""

echo "32bit add inv"
time timeout 180 cvc5 --incremental 32bit-addinv.smt2
echo ""

echo "32bit add inv fast enum"
time timeout 180 cvc5 --incremental --sygus-enum=fast 32bit-addinv.smt2
echo ""

echo "32bit and ex"
time timeout 180 cvc5 --incremental 32bit-andex.smt2
echo ""

echo "32bit and ex fast enum"
time timeout 180 cvc5 --incremental --sygus-enum=fast 32bit-andex.smt2
echo ""

echo "32bit max int"
time timeout 180 cvc5 --incremental 32bit-maxint.smt2
echo ""

echo "32bit max int fast enum"
time timeout 180 cvc5 --incremental --sygus-enum=fast 32bit-maxint.smt2
echo ""

echo "32bit mult ident"
time timeout 180 cvc5 --incremental 32bit-multident.smt2
echo ""

echo "32bit mult ident fast enum"
time timeout 180 cvc5 --incremental --sygus-enum=fast 32bit-multident.smt2
echo ""

echo "32bit mult inv"
time timeout 180 cvc5 --incremental 32bit-multinv.smt2
echo ""

echo "32bit mult inv fast enum"
time timeout 180 cvc5 --incremental --sygus-enum=fast 32bit-multinv.smt2
echo ""

echo "32bit test file"
time timeout 180 cvc5 --incremental 32bit-testfile.smt2
echo ""

echo "32bit test file fast enum"
time timeout 180 cvc5 --incremental --sygus-enum=fast 32bit-testfile.smt2
echo ""

echo "32bit trans"
time timeout 180 cvc5 --incremental 32bit-trans.smt2
echo ""

echo "32bit trans fast enum"
time timeout 180 cvc5 --incremental --sygus-enum=fast 32bit-trans.smt2
echo ""