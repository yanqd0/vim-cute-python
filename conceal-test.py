# conceal test -- lines should match

"""
if a is not ∅: pass """
if a is not None: pass

"""
if b is ∅: pass """
if b is None: pass

"""
if 3 ∈ [1,2,3]: pass """
if 3 in [1,2,3]: pass

"""
if 4 ∉ [1,2,3]: pass """
if 4 not in [1,2,3]: pass

"""
if a ≡ b: pass """
if a == b: pass

"""
√(7) """
sqrt(7)

"""
π ≡ π """
math.pi == pi

"""
⌈(1.5) """
math.ceil(1.5)

"""
⌊(1.5) """
math.floor(1.5)

"""
ℯ(2) """
math.exp(2)

"""
-∞ < ∞ """
-math.inf < math.inf

"""
ℤ(1) """
int(1)

"""
ℝ(1.5) """
float(1.5)

"""
ℂ(c) """
complex(c)

"""
map(λ x: x, [1,2,3]) """
map(lambda x: x, [1,2,3])

"""
a ∧ b """
a and b

"""
a ∨ b """
a or b

"""
∑([1,2,3]) """
sum([1,2,3])

"""
∀([1,2,3]) """
all([1,2,3])

"""
∃([1,2,3]) """
any([1,2,3])

"""
if a ≢ b: pass """
if a != b: pass

"""
if a ≥ b: pass """
if a >= b: pass

"""
if a ≤ b: pass """
if a <= b: pass

"""
if e ∈ [1,2,3] ∧ ¬a: pass """
if e in [1,2,3] and not a: pass

"""
a∙b ≢ a÷b """
a * b != a / b

"""
x² + x³ ≢ xⁿ """
x ** 2 + x ** 3 != x ** n

"""
𝕋 is not 𝔽 """
True is not False

"""
import 🎲 """
import random

"""
🎲() """
random.random()

"""
import ⏰ """
import time

"""
⏰() """
time.time()
