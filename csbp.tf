resource "prismacloud_compliance_standard" "csbp_standard" {
    name = "ABBA Cloud Security Standards"
    description = "Cloud Security Standards for ABBA Organization"
}

########################################################################################
# Storage Requirements
########################################################################################
resource "prismacloud_compliance_standard_requirement" "storage_reqs" {
    cs_id = prismacloud_compliance_standard.csbp_standard.cs_id
    name = "Storage"
    description = "Storage Governance Controls"
    requirement_id = "1.0"
}

    resource "prismacloud_compliance_standard_requirement_section" "s_access" {
        csr_id = prismacloud_compliance_standard_requirement.storage_reqs.csr_id
        section_id = "Access"
        description = "Public and Private Storage Access Controls"
    }

    resource "prismacloud_compliance_standard_requirement_section" "s_encryption" {
        csr_id = prismacloud_compliance_standard_requirement.storage_reqs.csr_id
        section_id = "Encryption"
        description = "Encryption Controls"
    }

########################################################################################
# Network Security Requirements
########################################################################################

resource "prismacloud_compliance_standard_requirement" "network_reqs" {
    cs_id = prismacloud_compliance_standard.csbp_standard.cs_id
    name = "Network"
    description = "Network Governance Controls"
    requirement_id = "2.0"
}

    resource "prismacloud_compliance_standard_requirement_section" "n_access" {
        csr_id = prismacloud_compliance_standard_requirement.network_reqs.csr_id
        section_id = "Access"
        description = "Access Controls"
    }

    resource "prismacloud_compliance_standard_requirement_section" "n_encryption" {
        csr_id = prismacloud_compliance_standard_requirement.network_reqs.csr_id
        section_id = "Encryption"
        description = "Network Encryption Controls"
    }