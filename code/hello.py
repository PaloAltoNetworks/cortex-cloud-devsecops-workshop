import json
import django
import flask
import requests

from google.oauth2 import service_account
from google.cloud import storage

# BAD PRACTICE: Embedding service account JSON directly in code
SERVICE_ACCOUNT_KEY = """
{
  "type": "service_account",
  "project_id": "my-demo-project",
  "private_key_id": "1234567890abcdef1234567890abcdef12345678",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvAIBADANBgkqh...\n-----END PRIVATE KEY-----\n",
  "client_email": "demo-service-account@my-demo-project.iam.gserviceaccount.com",
  "client_id": "111111111111111111111",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/demo-service-account%40my-demo-project.iam.gserviceaccount.com"
}
"""

def main():
    print("hello from GCP (insecure demo mode)")

    # Parse the JSON key from the string
    service_account_info = json.loads(SERVICE_ACCOUNT_KEY)
    credentials = service_account.Credentials.from_service_account_info(service_account_info)

    # Example: List buckets with these credentials
    client = storage.Client(credentials=credentials, project=service_account_info["project_id"])

    print("Buckets in project", service_account_info["project_id"])
    for bucket in client.list_buckets():
        print(" -", bucket.name)


if __name__ == "__main__":
    main()
