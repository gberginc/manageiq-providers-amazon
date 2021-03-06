class ManageIQ::Providers::Amazon::Inventory::Collector::StorageManager::S3 <
  ManageIQ::Providers::Amazon::Inventory::Collector

  def cloud_object_store_containers
    hash_collection.new(aws_s3.client.list_buckets.buckets)
  end

  def cloud_object_store_objects
    hash_collection.new([])
  end
end
