AWS_DIR="$HOME/.aws"
mkdir -p "$AWS_DIR"

cat > "$AWS_DIR/credentials" <<EOF
[default]
aws_access_key_id = AKIAYFIFSTOIQ46UQRF5
aws_secret_access_key = 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 
EOF

cat > "$AWS_DIR/config" <<EOF
[default]
region = ap-south-1
output = text
EOF

chmod 600 "$AWS_DIR/credentials"

echo "AWS CLI credentials configured"
