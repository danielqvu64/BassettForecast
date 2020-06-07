using System;
using System.Collections.Specialized;
using System.Data.SqlTypes;
using System.Text;
using DVu.Library.PersistenceInterface;
using DVu.Library.BusinessObject;

namespace PWC.BusinessObject
{
    public class ItemKey : CompanyKey
    {
        public SqlString ItemNumber;

        public ItemKey()
        {
        }

        public ItemKey(SqlString companyCode, SqlString itemNumber)
        {
            CompanyCode = companyCode;
            ItemNumber = itemNumber;
        }

        public override string ToString()
        {
            return new StringBuilder(base.ToString()).Append("|").Append(ItemNumber.ToString()).ToString();
        }
    }

    /// <summary>
    /// Summary description for Item.
    /// </summary>
    [Serializable]
    public class Item : APersistenceObject, IRowVersion
    {
        private SqlString _companyCode;
        private SqlString _itemNumber;
        private SqlString _itemDescription;
        private SqlString _productGroupCode;

        public Item() { }

        public Item(SqlString itemNumber)
        {
            ItemNumber = itemNumber;
        }

        [NotMapped]
        public override Type ObjectKeyType
        {
            get { return typeof(ItemKey); }
        }

        #region Mappped Members
        public SqlString CompanyCode
        {
            get { return _companyCode; }
            set
            {
                // use CompareTo for proper null value comparision
                if (_companyCode.CompareTo(value) != 0)
                {
                    _companyCode = value;
                    FieldDataChange("CompanyCode", value);
                }
            }
        }

        public SqlString ItemNumber
        {
            get { return _itemNumber; }
            set
            {
                // use CompareTo for proper null value comparision
                if (_itemNumber.CompareTo(value) != 0)
                {
                    _itemNumber = value;
                    FieldDataChange("ItemNumber", value);
                }
            }
        }

        public SqlString ItemDescription
        {
            get { return _itemDescription; }
            set
            {
                // use CompareTo for proper null value comparision
                if (_itemDescription.CompareTo(value) != 0)
                {
                    _itemDescription = value;
                    FieldDataChange("ItemDescription", value);
                }
            }
        }

        public SqlString ProductGroupCode
        {
            get { return _productGroupCode; }
            set
            {
                // use CompareTo for proper null value comparision
                if (_productGroupCode.CompareTo(value) != 0)
                {
                    _productGroupCode = value;
                    FieldDataChange("ProductGroupCode", value);
                }
            }
        }

        public SqlBytes RowVersion { get; set; }
        #endregion

        [NotMapped]
        public string ProductGroupCodeBinding
        {
            get { return _productGroupCode.IsNull ? string.Empty : _productGroupCode.Value; }
            set
            {
                // use CompareTo for proper null value comparision
                if (_productGroupCode.CompareTo(value) != 0)
                {
                    _productGroupCode = value == string.Empty ? SqlString.Null : value;
                    FieldDataChange("ProductGroupCode", value);
                }
            }
        }

        public override bool Validate()
        {
            return (ObjectKey != null && !_companyCode.IsNull && !_itemNumber.IsNull);
        }

        [Serializable]
        public class ParameteredCollection : APersistenceObjectCollection<ItemKey, Item>
        {
            public ParameteredCollection() { }

            public ParameteredCollection(SqlString companyCode, SqlString itemNumber, SqlString itemDescription, SqlString productGroupCode, SqlString brandCode, SqlString productCategoryCode)
            {
                ParameterCollection = new HybridDictionary
                                           {
                                               {"CompanyCode", companyCode},
                                               {"ItemNumber", itemNumber},
                                               {"ItemDescription", itemDescription},
                                               {"ProductGroupCode", productGroupCode},
                                               {"BrandCode", brandCode},
                                               {"ProductCategoryCode", productCategoryCode}
                                           };
            }
        }
    }
}
