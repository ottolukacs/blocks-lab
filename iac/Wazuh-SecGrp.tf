resource "aws_security_group" "wazuh_stack" {
  name        = "wazuh-stack-sg"
  description = "Security group for Wazuh stack (server and agent communication)"

  # Required ports
  ingress {
    description = "Wazuh agent-to-manager (UDP 1514)"
    from_port   = 1514
    to_port     = 1514
    protocol    = "udp"
    cidr_blocks = ["172.31.16.0/20"]
  }

  ingress {
    description = "Wazuh agent registration/authd (TCP 1515)"
    from_port   = 1515
    to_port     = 1515
    protocol    = "tcp"
    cidr_blocks = ["172.31.16.0/20"]
  }

  ingress {
    description = "Wazuh API (TCP 55000)"
    from_port   = 55000
    to_port     = 55000
    protocol    = "tcp"
    cidr_blocks = ["172.31.16.0/20"]
  }

  # Optional ports
  ingress {
    description = "Syslog input (TCP 514)"
    from_port   = 514
    to_port     = 514
    protocol    = "tcp"
    cidr_blocks = ["172.31.16.0/20"]
  }

  ingress {
    description = "Syslog input (UDP 514)"
    from_port   = 514
    to_port     = 514
    protocol    = "udp"
    cidr_blocks = ["172.31.16.0/20"]
  }

  ingress {
    description = "Kibana dashboard (TCP 5601)"
    from_port   = 5601
    to_port     = 5601
    protocol    = "tcp"
    cidr_blocks = ["172.31.16.0/20"]
  }

  ingress {
    description = "Elasticsearch API (TCP 9200)"
    from_port   = 9200
    to_port     = 9200
    protocol    = "tcp"
    cidr_blocks = ["172.31.16.0/20"]
  }

  # Allow all outbound traffic (modify if you want to restrict)
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "wazuh-stack-sg"
  }
}