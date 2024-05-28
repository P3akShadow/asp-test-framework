#!/usr/bin/python3

from clintest.test import Assert, And
from clintest.quantifier import All, Any, Exact
from clintest.assertion import Contains, SupersetOf, True_, Not
from clintest.solver import Clingo

import os

martianAP = ""
with open("../MartianAP.lp", "r") as file:
    martianAP = file.read()

errors = 0
for _, _, files in os.walk("results"):
    for resultfile in files:
        print(f"starting test: {resultfile}")

        testfile = f"tests/{resultfile}.lp"
        testfileContent = ""
        with open(testfile) as file:
            testfileContent = file.read()

        solver = Clingo("0", testfileContent + martianAP)

        sum = 0
        with open(f"results/{resultfile}", "r") as file:
            for line in file:
                sum += 1
                result = line.split()

                test = Assert(Any(), SupersetOf(set(result)))
                solver.solve(test)
                if not test.outcome().is_certainly_true():
                    print(f"ERROR: expected test {resultfile} to contain:\n {result}")

                result = [result[0], result[1], result[3]]
                test = Assert(Any(), SupersetOf(set(result)))
                solver.solve(test)
                if not test.outcome().is_certainly_true():
                    print(f"ERROR: expected test {resultfile} to contain:\n {result}")
                    errors += 1

        
        
        test = Assert(Exact(sum), Not(Contains("a")))
        solver.solve(test)

        if not test.outcome().is_certainly_true():
            print(f"ERROR: expected test {resultfile} to contain, exactly {sum} answersets!")
            errors += 1
        print(f"finished test: {resultfile}")

if errors == 0:
    print("no errors found, seems to work!")
else:
    print(f"found {errors} errros, maybe doubleckeck - either the test is wrong or there is a bug in your soluition!")

