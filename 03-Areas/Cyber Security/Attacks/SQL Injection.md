Type of web app securitiy vulnerabliity that allows attacker to inject SQL code into a database in order to extract or modify data.
Happens when user input is not properly sanitized or validated. 
## Types
* Classic Injection
	* Most common type of SQL injection where attacker places code into web app's input field
* Blind SQL Injection
	* Database does not return error messages or results to attacker, making it harder to detect and prevent attack
* Time-based Blind SQL Injection
	* Attacker uses time-related info to determine structure of database
* Boolean-based blind SQL Injectiono
	* Similar to time-based, but attacker uses boolean values to determine structure
## How does it work
1. Attacker discovers vulnerablity in web app input validation process
2. Attacker crafts malicious SQL query that injects malicious code inot the database
3. Web app executes SQL quary allowing attacker to access sensitive data or modify records
## Common Techniques
* Classic - Inject keyboards like SELECT or INSERT into fields
* Parameter - Manipulate user input paremeters to inject code
* SQL Comment injection - Inject comments into quart to bypass validdation
* Error-based - Uses error messages to determine strucutre
## How to Prevent
* Validate and santiize usuer input to prevent code execution
* parameterize quaries - use parameterized quaries ot seperate code from data.
* Use Prepared statments to imporve security
* Regularly perform security audits na dpen test
## Tools and Techniques
* SQLMap - identifying and exploit SQL injection vulnerabilties
* Burp Suite - tool for web app testing and SQL injection detection
* OWASP Top Ten - list of most critical web app security reisks
```sql
SELECT UserId, Name, Password FROM Users WHERE UserId = 105 or 1=1;
```