The process of manipulating quantum states using quantum bits (qubits) and quantum gates. They are critical for efficient quantum computing, quantum simulation, and optimization of quantum algorithms.
## Types
* Superpostion Qubits
	* Qubits exist in multiple states simultaneously (0 and 1 at the same time)
	* Allows for parallel processing of multiple possibilitities
	* Requires careful control to maintain coherence.
```python
import qiskit
from qiskit.quantum_info import Statevector

# Create a superposition state
state = Statevector([0.5, 0.5])
```
* Entangledment Qubits
	* Qubits are connected in way that one state effects the state of another. They can depend on each other.
	* Allows for quantum teleportaion or entangled states
```python
	import qiskit
from qiskit.quantum_info import Statevector, Operator

# Create two entangled qubits
qubit1 = QuantumRegister(2, 'q')
qubit2 = QuantumRegister(2, 'r')

state = Statevector([[0.5, 0.5], [0.5, 0.5]])
```
* Quantum Gates
	* Operations manipulate the states of qubits
	* Used to perform calculations and operations on qubits
	* unlike regular classical computing, they are reversible. You can tell what input was given based on output.
```python
import qiskit
from qiskit.quantum_info import Operator

# Create a Hadamard gate
h_gate = Operator([[1/np.sqrt(2), 1/np.sqrt(2)], [1/np.sqrt(2), -1/np.sqrt(2)]])

# Apply the Hadamard gate to a qubit
qubit = QuantumRegister(1, 'q')
state = h_gate.apply(state)
```
## Quantum Computing Basics
* Quantum Bit (Qubit)
	* fundamental unit of quantum information that can exist in mulitple states at the same time
* Quantum Register (QR)
	* Collection of qubits that can be maniupualted together as a unit
## Quantum Algorithms and Applications
* Shor's Algorithm
	* Factorizing large numbers exponentially faster than classical algorithms
```python
import qiskit
from qiskit.algorithms import shor

# Create a quantum circuit for Shor's algorithm
circuit = shor(n=15)
```
* Grover's Algorithm
	* Searching an unsorted database of N entries in $$O(\sqrt{ N })$$ time
## Quantum Computing Challenges and Limitations
* Error Correction
	* Techniques to mitigate errors caused by noise in quantum systems
* Scalability and Control
	* Challenge to scale the number of qubits while maintaining control over states
## Current News
* Microsoft releasing chip that significantly increases the amount of qubits available and in the size of your hand.