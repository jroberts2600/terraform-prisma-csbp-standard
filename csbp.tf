resource "prismacloud_compliance_standard_requirement_section" "s3" {
    csr_id = prismacloud_compliance_standard_requirement.encryption_requirements.csr_id
    section_id = "S3"
    description = "S3 Encryption Controls"
}

resource "prismacloud_compliance_standard_requirement" "encryption_requirements" {
    cs_id = prismacloud_compliance_standard.csbp_standard.cs_id
    name = "Encryption"
    description = "Controls for Ensuring Data Encryption"
    requirement_id = "1.0"
}

resource "prismacloud_compliance_standard" "csbp_standard" {
    name = "AAA Cloud Security Standards"
    description = "Cloud Security Standards for AAA Organization"
}