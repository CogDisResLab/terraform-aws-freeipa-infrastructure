locals {
  replicas = length(var.subnets)
  amis = {
    "af-south-1" = {
      x86_64 = "ami-0916d5b3d8b2900fc"
      arm64  = "ami-0424f243fccb94410"
    }
    "ap-east-1" = {
      x86_64 = "ami-02822441e3a986146"
      arm64  = "ami-0f4ba669a662940e9"
    }
    "ap-northeast-1" = {
      x86_64 = "ami-0bb013de1421122df"
      arm64  = "ami-01e3f235a5ee13748"
    }
    "ap-northeast-2" = {
      x86_64 = "ami-01f0d2c98febca9bf"
      arm64  = "ami-04e5d4e8439c37e0f"
    }
    "ap-northeast-3" = {
      x86_64 = "ami-0ef98b5070289ec1c"
      arm64  = "ami-0b26f9d60068b74e7"
    }
    "ap-south-1" = {
      x86_64 = "ami-0278b089d62351b9d"
      arm64  = "ami-000175bd7084ddcd4"
    }
    "ap-southeast-1" = {
      x86_64 = "ami-0cc4ae336cd8534db"
      arm64  = "ami-010438070860ee765"
    }
    "ap-southeast-2" = {
      x86_64 = "ami-0f4a4fb6495d28334"
      arm64  = "ami-074042364234e1eea"
    }
    "ap-southeast-3" = {
      x86_64 = "ami-0c64615cd904657c6"
      arm64  = "ami-02df9c10a7c690441"
    }
    "ca-central-1" = {
      x86_64 = "ami-034b2e66faa402409"
      arm64  = "ami-0b1c33ff9cb482815"
    }
    "eu-central-1" = {
      x86_64 = "ami-0017e2657911b5001"
      arm64  = "ami-0a00cfb5a035e10f7"
    }
    "eu-north-1" = {
      x86_64 = "ami-03279966a3686cf6b"
      arm64  = "ami-0c9e68440f52ca872"
    }
    "eu-south-1" = {
      x86_64 = "ami-09450af963bd3a271"
      arm64  = "ami-06ae8513a96b71a0e"
    }
    "eu-west-1" = {
      x86_64 = "ami-0d77d5a5efdeb2f1e"
      arm64  = "ami-0d94e9d734b7710a0"
    }
    "eu-west-2" = {
      x86_64 = "ami-0342ed08489cc7640"
      arm64  = "ami-08156e48d92f04792"
    }
    "eu-west-3" = {
      x86_64 = "ami-0a520c96dd09cb533"
      arm64  = "ami-0c74d89e1e18acf60"
    }
    "me-south-1" = {
      x86_64 = "ami-0a41fd354423f6390"
      arm64  = "ami-006e7c4ded44fcb8a"
    }
    "sa-east-1" = {
      x86_64 = "ami-0d997993a0887d3e7"
      arm64  = "ami-08350a61498e716f0"
    }
    "us-east-1" = {
      x86_64 = "ami-08a641187bca2e27d"
      arm64  = "ami-0543832c8973af485"
    }
    "us-east-2" = {
      x86_64 = "ami-0bacc110e0e534821"
      arm64  = "ami-0322ca2f4bfa72ccd"
    }
    "us-west-1" = {
      x86_64 = "ami-0459bd403639fba4e"
      arm64  = "ami-0adff0c13e2100dd8"
    }
    "us-west-2" = {
      x86_64 = "ami-0a879c5c584b21025"
      arm64  = "ami-0437bf01332004132"
    }
  }
}
