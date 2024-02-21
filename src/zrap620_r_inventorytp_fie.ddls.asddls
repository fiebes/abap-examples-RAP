@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: '##GENERATED ZRAP620_INVENFIE'
define root view entity ZRAP620_R_INVENTORYTP_FIE
  as select from zrap620_invenfie as Inventory
{
  key uuid as UUID,
  inventory_id as InventoryID,
  product_id as ProductID,
  @Semantics.quantity.unitOfMeasure: 'QuantityUnit'
  quantity as Quantity,
  quantity_unit as QuantityUnit,
  @Semantics.amount.currencyCode: 'CurrencyCode'
  price as Price,
  currency_code as CurrencyCode,
  description as Description,
  overall_status as OverallStatus,
  @Semantics.user.createdBy: true
  created_by as CreatedBy,
  @Semantics.systemDateTime.createdAt: true
  created_at as CreatedAt,
  @Semantics.user.localInstanceLastChangedBy: true
  last_changed_by as LastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  last_changed_at as LastChangedAt,
  @Semantics.systemDateTime.lastChangedAt: true
  local_last_changed_at as LocalLastChangedAt
  
}
