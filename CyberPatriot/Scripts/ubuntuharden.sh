# Automatically hardens common vulnerabilities in Ubuntu 18.04

# Check if script is being run as root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# Update and upgrade
apt-get update
apt-get upgrade -y

# Remove unnecessary packages
apt-get remove -y nmap hydra john nikto netcat

# Install necessary packages
apt-get install -y ufw

# Enable firewall
ufw enable

# Password policy
# Set the minimum number of days before a password can be changed
MIN_DAYS=7

for user in $(cut -d: -f1 /etc/passwd); do
  # Skip system accounts
  if [[ $user == "root" || $user == "nobody" ]]; then
    continue
  fi

  # Set password expiration for the user
  chage -m $MIN_DAYS $user

  echo "Password expiration set for $user"
done


# Set the maximum number of days for password validity
MAX_DAYS=90

# Loop through all users
for user in $(cut -d: -f1 /etc/passwd); do
  # Skip system accounts
  if [[ $user == "root" || $user == "nobody" ]]; then
    continue
  fi

  # Set password expiration for the user
  chage -M $MAX_DAYS $user

  echo "Password expiration set for $user"
done

# Set password complexity
# Set minimum password length
MIN_LENGTH=8

# Set minimum number of digits
MIN_DIGITS=1

# Set minimum number of special characters
MIN_SPECIAL=1

# Set minimum number of uppercase letters
MIN_UPPER=1

# Set minimum number of lowercase letters
MIN_LOWER=1

# Set password complexity requirements
cat <<EOF > /etc/security/pwquality.conf
minlen = $MIN_LENGTH
dcredit = $MIN_DIGITS
ucredit = $MIN_UPPER
lcredit = $MIN_LOWER
ocredit = $MIN_SPECIAL
EOF

# Set password history
# Set the number of passwords remembered
HISTORY=5

# Set password history requirements
cat <<EOF > /etc/pam.d/common-password
password requisite pam_pwquality.so retry=3
password requisite pam_pwhistory.so remember=$HISTORY use_authtok
password required pam_unix.so obscure sha512
EOF

# Set password lockout policy
# Set the number of attempts before lockout
ATTEMPTS=3

# Set the lockout duration
DURATION=600

# Set the lockout policy
cat <<EOF > /etc/pam.d/common-auth
auth required pam_tally2.so deny=3 unlock_time=600 onerr=succeed
EOF

# Set password expiration
# Set the number of days before expiration warning
EXPIRE_WARN=7

# Set the expiration warning
cat <<EOF > /etc/login.defs
PASS_MAX_DAYS 90
PASS_MIN_DAYS 7
PASS_WARN_AGE 7
EOF

# Shut off ssh Root Login
sed -i 's/PermitRootLogin yes/PermitRootLogin no/g' /etc/ssh/sshd_config
