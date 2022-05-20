# Slither custom types

With solc 0.8.9, `solc Fixed.sol` returns without error.

With slither 0.8.3, `slither Fixed.sol` yields the following error:

```
Traceback (most recent call last):
  File "/Users/fiddle/.asdf/installs/python/3.9.2/lib/python3.9/site-packages/slither/__main__.py", line 744, in main_impl
    ) = process_all(filename, args, detector_classes, printer_classes)
  File "/Users/fiddle/.asdf/installs/python/3.9.2/lib/python3.9/site-packages/slither/__main__.py", line 87, in process_all
    ) = process_single(compilation, args, detector_classes, printer_classes)
  File "/Users/fiddle/.asdf/installs/python/3.9.2/lib/python3.9/site-packages/slither/__main__.py", line 70, in process_single
    slither = Slither(target, ast_format=ast, **vars(args))
  File "/Users/fiddle/.asdf/installs/python/3.9.2/lib/python3.9/site-packages/slither/slither.py", line 123, in __init__
    parser.analyze_contracts()
  File "/Users/fiddle/.asdf/installs/python/3.9.2/lib/python3.9/site-packages/slither/solc_parsing/slither_compilation_unit_solc.py", line 496, in analyze_contracts
    self._convert_to_slithir()
  File "/Users/fiddle/.asdf/installs/python/3.9.2/lib/python3.9/site-packages/slither/solc_parsing/slither_compilation_unit_solc.py", line 681, in _convert_to_slithir
    func.generate_slithir_and_analyze()
  File "/Users/fiddle/.asdf/installs/python/3.9.2/lib/python3.9/site-packages/slither/core/declarations/function.py", line 1706, in generate_slithir_and_analyze
    node.slithir_generation()
  File "/Users/fiddle/.asdf/installs/python/3.9.2/lib/python3.9/site-packages/slither/core/cfg/node.py", line 720, in slithir_generation
    self._irs = convert_expression(expression, self)
  File "/Users/fiddle/.asdf/installs/python/3.9.2/lib/python3.9/site-packages/slither/slithir/convert.py", line 118, in convert_expression
    result = apply_ir_heuristics(result, node)
  File "/Users/fiddle/.asdf/installs/python/3.9.2/lib/python3.9/site-packages/slither/slithir/convert.py", line 1744, in apply_ir_heuristics
    convert_constant_types(irs)
  File "/Users/fiddle/.asdf/installs/python/3.9.2/lib/python3.9/site-packages/slither/slithir/convert.py", line 1680, in convert_constant_types
    t = types[idx]
IndexError: list index out of range
None
Error in Fixed.sol
Traceback (most recent call last):
  File "/Users/fiddle/.asdf/installs/python/3.9.2/lib/python3.9/site-packages/slither/__main__.py", line 744, in main_impl
    ) = process_all(filename, args, detector_classes, printer_classes)
  File "/Users/fiddle/.asdf/installs/python/3.9.2/lib/python3.9/site-packages/slither/__main__.py", line 87, in process_all
    ) = process_single(compilation, args, detector_classes, printer_classes)
  File "/Users/fiddle/.asdf/installs/python/3.9.2/lib/python3.9/site-packages/slither/__main__.py", line 70, in process_single
    slither = Slither(target, ast_format=ast, **vars(args))
  File "/Users/fiddle/.asdf/installs/python/3.9.2/lib/python3.9/site-packages/slither/slither.py", line 123, in __init__
    parser.analyze_contracts()
  File "/Users/fiddle/.asdf/installs/python/3.9.2/lib/python3.9/site-packages/slither/solc_parsing/slither_compilation_unit_solc.py", line 496, in analyze_contracts
    self._convert_to_slithir()
  File "/Users/fiddle/.asdf/installs/python/3.9.2/lib/python3.9/site-packages/slither/solc_parsing/slither_compilation_unit_solc.py", line 681, in _convert_to_slithir
    func.generate_slithir_and_analyze()
  File "/Users/fiddle/.asdf/installs/python/3.9.2/lib/python3.9/site-packages/slither/core/declarations/function.py", line 1706, in generate_slithir_and_analyze
    node.slithir_generation()
  File "/Users/fiddle/.asdf/installs/python/3.9.2/lib/python3.9/site-packages/slither/core/cfg/node.py", line 720, in slithir_generation
    self._irs = convert_expression(expression, self)
  File "/Users/fiddle/.asdf/installs/python/3.9.2/lib/python3.9/site-packages/slither/slithir/convert.py", line 118, in convert_expression
    result = apply_ir_heuristics(result, node)
  File "/Users/fiddle/.asdf/installs/python/3.9.2/lib/python3.9/site-packages/slither/slithir/convert.py", line 1744, in apply_ir_heuristics
    convert_constant_types(irs)
  File "/Users/fiddle/.asdf/installs/python/3.9.2/lib/python3.9/site-packages/slither/slithir/convert.py", line 1680, in convert_constant_types
    t = types[idx]
IndexError: list index out of range
```

