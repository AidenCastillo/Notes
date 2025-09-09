* DC Circuits
* AC Circuits
* Electronic Circuits
* Digitial Circuits

Passive Components
DC - Direct current. It is a constant voltage over time.
* Battery
AC - sinusoidal voltage over time. 

Active Componientes (transisters)
Electronic Circuit - closed loop interconnections of electrical sources and corresponeding load (converting energy to another form like heat, or process information)

Digital Curcuits - Binary ones and zeros. Gates.

Electrical lSource - distribution or conditioning of sources of electrical power. Require power to operate active components 

Audio Recievers - capture audio from microphones, improve signal quality through amplification and filtering, digitize the signal, and input the resulting digitial signal as a input to a microprocessor.

Radar Transciever - generate an electrical waveform capable of propagating in free space, condition it to improve its ability to propagate, and transmit it towards a target in a radar system.

## Classical Circuit analysis
* in classical (academic) the goal is describe the distribution of electrical phenomena through an interconnection of fixed subset of "classical" components (resisetsers, capacitors)
	* Relationship between component values and electrical phenomena are governed by mathematical equations (Ohm's law)
	* Elements within a circuit may represent actuall circuit components or may model the electicall behavioir or a "real world" element


The formal definition (physics) voltage between two points define the amount of work required to move a large unit of charge (1 coulomb) between the two points.
* Electrical charge is signed quanitity

Fundamental circuit componets, DC voltages are modeled by 
* Governing equations (requires symbol)
* SI units (V voltage)
* schematic drawing
* DC voltage are componely representated by two different schematic drawings within circuits as shown bto the left
* within euqations the voltage associated with Dcsources represetnted by symbol V
* Ideal DC voltage sourcews will "hold" voltage value across the terminal regardless of the load attached (from Ohm's law)

## DC Current
* Electical current defined as flow of charged particles through conductive medium
	* most common "conductive medium" for ECE
		* metal conductors (jumper wires, PCB traces) - can ideally transfer unlimited current with no voltage drop
		* electrons and "holes" in semiconductor material
		* cation in batteries (Li+ ions in lithium ion batteries)
* in circuit alaysis we assume and secribe that thhe moving particles associated with current have positive charge -> conventional current threory. Positive to negative
	* note that circuits in which electrons are charged carriers (metals) the direction of conventional current flow is opposite the actual movement of electrons
* DC current direction remains fixed over time
* modelinig quantities 
	* equation symboll: `i`
	* Unit (Amperes): `A`
		* 1 ameres of current -> 1 coulomb (6.24 * 10^18 electrons) of charged passes a cross-section in the oconduvtie medium per section

## Ideal Current Sources
* can also be deifned as ideal current source (used in modeling though can configure benchtop instrumentation to function in this manner)
* an ideal currenet source supplies the rated value of current independent of the connected load
* ideal current sources are modeled using the schematic symbol)
* DC voltage sources are polarized with direction indicated by arrow (current flows out of source in direction inddicated by the arrow)
## Series versus parralel connections
* two points of connection (often called terminals or nodes) can be connected in two ways
	1. series
	2. parrallel
* When electrical componets are connected in series, the same current passes in each component
* When in parrallel, the same voltage is present across each component
* example of servies and parallel connection of two DC voltage
* Schematics captured in MultiSimi live
* notvation VX next to each is known as reference designator
* the numbers denote nodes within circuit
* In series multiple DC sources may be combined in series to modif the total level of voltage across the connected sources
* Series Aiding connection
	* note tha tif polarities are swapped, resulting voltage may no longer increase
* 