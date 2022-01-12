locals {
  //vpc_cidr = "10.0.0.0/24"
  vpc_cidr = "192.168.0.0/16"
}
locals {
  /* private_subnet_1 = "10.0.1.0/24"
   private_subnet_2 = "10.0.2.0/24"
   private_subnet_3 = "10.0.3.0/24"*/
  private_subnet_1 = "192.168.1.0/24"
  private_subnet_2 = "192.168.2.0/24"
  private_subnet_3 = "192.168.3.0/24"
}

locals {
  /*public_subnet_1 = "10.0.4.0/24"
  public_subnet_2 = "10.0.5.0/24"
  public_subnet_3 = "10.0.6.0/24"*/
  public_subnet_1 = "192.168.4.0/24"
  public_subnet_2 = "192.168.5.0/24"
  public_subnet_3 = "192.168.6.0/24"
}

locals {
  cluster_name = "${var.environment_name}-cr-eks"
  nexus_blob_store_bucket_name = "${var.environment_name}-nexus-blob-store-cr"
  nexus_blob_store_replica_bucket_name = "${var.environment_name}-nexus-blob-store-cr-replica"
}
