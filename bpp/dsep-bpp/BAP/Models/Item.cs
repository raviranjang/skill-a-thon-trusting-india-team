/*
 *  
 *
 *  
 *
 * OpenAPI spec version: 1.0.0-dsep-draft
 * 
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 */
using System;
using System.Linq;
using System.IO;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel.DataAnnotations;
using System.Runtime.Serialization;
using Newtonsoft.Json;
using System.Diagnostics.CodeAnalysis;

namespace BAP.Models
{
    /// <summary>
    /// Describes a product or a service offered to the end consumer by the provider.
    /// </summary>
    [DataContract]
    public partial class Item : IEquatable<Item>
    {
        /// <summary>
        /// ID of the item.
        /// </summary>
        /// <value>ID of the item.</value>

        [DataMember(Name = "id")]
        public string Id { get; set; }

        /// <summary>
        /// ID of the item, this item is a variant of
        /// </summary>
        /// <value>ID of the item, this item is a variant of</value>

        [DataMember(Name = "parent_item_id")]
        public string ParentItemId { get; set; }

        /// <summary>
        /// The number of units of the parent item, this item is a multiple of
        /// </summary>
        /// <value>The number of units of the parent item, this item is a multiple of</value>

        [DataMember(Name = "parent_item_quantity")]
        public ItemQuantity ParentItemQuantity { get; set; }

        /// <summary>
        /// Physical description of the item
        /// </summary>
        /// <value>Physical description of the item</value>

        [DataMember(Name = "descriptor")]
        public Descriptor Descriptor { get; set; }

        /// <summary>
        /// The manufacturer of this item. Relevant only for retail use cases
        /// </summary>
        /// <value>The manufacturer of this item. Relevant only for retail use cases</value>

        [DataMember(Name = "manufacturer")]
        public Organization Manufacturer { get; set; }

        /// <summary>
        /// The selling price of this item
        /// </summary>
        /// <value>The selling price of this item</value>

        [DataMember(Name = "price")]
        public Price Price { get; set; }

        /// <summary>
        /// The selling quantity of the item
        /// </summary>
        /// <value>The selling quantity of the item</value>

        [DataMember(Name = "quantity")]
        public ItemQuantity Quantity { get; set; }

        /// <summary>
        /// Categories this item can be listed under
        /// </summary>
        /// <value>Categories this item can be listed under</value>

        [DataMember(Name = "category_ids")]
        public List<string> CategoryIds { get; set; }

        /// <summary>
        /// Fulfillment modes through which this item can be ordered
        /// </summary>
        /// <value>Fulfillment modes through which this item can be ordered</value>

        [DataMember(Name = "fulfillment_ids")]
        public List<string> FulfillmentIds { get; set; }

        /// <summary>
        /// Provider Locations this item is available in
        /// </summary>
        /// <value>Provider Locations this item is available in</value>

        [DataMember(Name = "location_ids")]
        public List<string> LocationIds { get; set; }

        /// <summary>
        /// Payment modes through which this item can be ordered
        /// </summary>
        /// <value>Payment modes through which this item can be ordered</value>

        [DataMember(Name = "payment_ids")]
        public List<string> PaymentIds { get; set; }

        /// <summary>
        /// Gets or Sets AddOns
        /// </summary>

        [DataMember(Name = "add_ons")]
        public List<AddOn> AddOns { get; set; }

        /// <summary>
        /// Cancellation terms of this item
        /// </summary>
        /// <value>Cancellation terms of this item</value>

        [DataMember(Name = "cancellation_terms")]
        public List<CancellationTerm> CancellationTerms { get; set; }

        /// <summary>
        /// Replacement terms of this item
        /// </summary>
        /// <value>Replacement terms of this item</value>

        [DataMember(Name = "replacement_terms")]
        public List<ReplacementTerm> ReplacementTerms { get; set; }

        /// <summary>
        /// Additional input required from the customer to purchase / avail this item
        /// </summary>
        /// <value>Additional input required from the customer to purchase / avail this item</value>

        [DataMember(Name = "xinput_required")]
        public XInput XinputRequired { get; set; }

        /// <summary>
        /// Gets or Sets XinputResponse
        /// </summary>

        [DataMember(Name = "xinput_response")]
        public XInputResponse XinputResponse { get; set; }

        /// <summary>
        /// Temporal attributes of this item. This property is used when the item exists on the catalog only for a limited period of time.
        /// </summary>
        /// <value>Temporal attributes of this item. This property is used when the item exists on the catalog only for a limited period of time.</value>

        [DataMember(Name = "time")]
        public Time Time { get; set; }

        /// <summary>
        /// Whether this item can be rated
        /// </summary>
        /// <value>Whether this item can be rated</value>

        [DataMember(Name = "rateable")]
        public bool? Rateable { get; set; }

        /// <summary>
        /// The rating of the item
        /// </summary>
        /// <value>The rating of the item</value>

        [DataMember(Name = "rating")]
        public string Rating { get; set; }

        /// <summary>
        /// Whether this item is an exact match of the request
        /// </summary>
        /// <value>Whether this item is an exact match of the request</value>

        [DataMember(Name = "matched")]
        public bool? Matched { get; set; }

        /// <summary>
        /// Whether this item is a related item to the exactly matched item
        /// </summary>
        /// <value>Whether this item is a related item to the exactly matched item</value>

        [DataMember(Name = "related")]
        public bool? Related { get; set; }

        /// <summary>
        /// Whether this item is a recommended item to a response
        /// </summary>
        /// <value>Whether this item is a recommended item to a response</value>

        [DataMember(Name = "recommended")]
        public bool? Recommended { get; set; }

        /// <summary>
        /// Time to live in seconds for an instance of this schema
        /// </summary>
        /// <value>Time to live in seconds for an instance of this schema</value>

        [DataMember(Name = "ttl")]
        public string Ttl { get; set; }

        /// <summary>
        /// Gets or Sets Tags
        /// </summary>

        [DataMember(Name = "tags")]
        public List<TagGroup> Tags { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        //public override string ToString()
        //{
        //    var sb = new StringBuilder();
        //    sb.Append("class Item {\n");
        //    sb.Append("  Id: ").Append(Id).Append("\n");
        //    sb.Append("  ParentItemId: ").Append(ParentItemId).Append("\n");
        //    sb.Append("  ParentItemQuantity: ").Append(ParentItemQuantity).Append("\n");
        //    sb.Append("  Descriptor: ").Append(Descriptor).Append("\n");
        //    sb.Append("  Manufacturer: ").Append(Manufacturer).Append("\n");
        //    sb.Append("  Price: ").Append(Price).Append("\n");
        //    sb.Append("  Quantity: ").Append(Quantity).Append("\n");
        //    sb.Append("  CategoryIds: ").Append(CategoryIds).Append("\n");
        //    sb.Append("  FulfillmentIds: ").Append(FulfillmentIds).Append("\n");
        //    sb.Append("  LocationIds: ").Append(LocationIds).Append("\n");
        //    sb.Append("  PaymentIds: ").Append(PaymentIds).Append("\n");
        //    sb.Append("  AddOns: ").Append(AddOns).Append("\n");
        //    sb.Append("  CancellationTerms: ").Append(CancellationTerms).Append("\n");
        //    sb.Append("  ReplacementTerms: ").Append(ReplacementTerms).Append("\n");
        //    sb.Append("  XinputRequired: ").Append(XinputRequired).Append("\n");
        //    sb.Append("  XinputResponse: ").Append(XinputResponse).Append("\n");
        //    sb.Append("  Time: ").Append(Time).Append("\n");
        //    sb.Append("  Rateable: ").Append(Rateable).Append("\n");
        //    sb.Append("  Rating: ").Append(Rating).Append("\n");
        //    sb.Append("  Matched: ").Append(Matched).Append("\n");
        //    sb.Append("  Related: ").Append(Related).Append("\n");
        //    sb.Append("  Recommended: ").Append(Recommended).Append("\n");
        //    sb.Append("  Ttl: ").Append(Ttl).Append("\n");
        //    sb.Append("  Tags: ").Append(Tags).Append("\n");
        //    sb.Append("}\n");
        //    return sb.ToString();
        //}

        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public string ToJson()
        {
            return JsonConvert.SerializeObject(this, Formatting.Indented);
        }

        /// <summary>
        /// Returns true if objects are equal
        /// </summary>
        /// <param name="obj">Object to be compared</param>
        /// <returns>Boolean</returns>
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            return obj.GetType() == GetType() && Equals((Item)obj);
        }

        public bool Equals([AllowNull] Item other)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Returns true if Item instances are equal
        /// </summary>
        /// <param name="other">Instance of Item to be compared</param>
        /// <returns>Boolean</returns>
        //public bool Equals(Item other)
        //{
        //    if (ReferenceEquals(null, other)) return false;
        //    if (ReferenceEquals(this, other)) return true;

        //    return
        //        (
        //            Id == other.Id ||
        //            Id != null &&
        //            Id.Equals(other.Id)
        //        ) &&
        //        (
        //            ParentItemId == other.ParentItemId ||
        //            ParentItemId != null &&
        //            ParentItemId.Equals(other.ParentItemId)
        //        ) &&
        //        (
        //            ParentItemQuantity == other.ParentItemQuantity ||
        //            ParentItemQuantity != null &&
        //            ParentItemQuantity.Equals(other.ParentItemQuantity)
        //        ) &&
        //        (
        //            Descriptor == other.Descriptor ||
        //            Descriptor != null &&
        //            Descriptor.Equals(other.Descriptor)
        //        ) &&
        //        (
        //            Manufacturer == other.Manufacturer ||
        //            Manufacturer != null &&
        //            Manufacturer.Equals(other.Manufacturer)
        //        ) &&
        //        (
        //            Price == other.Price ||
        //            Price != null &&
        //            Price.Equals(other.Price)
        //        ) &&
        //        (
        //            Quantity == other.Quantity ||
        //            Quantity != null &&
        //            Quantity.Equals(other.Quantity)
        //        ) &&
        //        (
        //            CategoryIds == other.CategoryIds ||
        //            CategoryIds != null &&
        //            CategoryIds.SequenceEqual(other.CategoryIds)
        //        ) &&
        //        (
        //            FulfillmentIds == other.FulfillmentIds ||
        //            FulfillmentIds != null &&
        //            FulfillmentIds.SequenceEqual(other.FulfillmentIds)
        //        ) &&
        //        (
        //            LocationIds == other.LocationIds ||
        //            LocationIds != null &&
        //            LocationIds.SequenceEqual(other.LocationIds)
        //        ) &&
        //        (
        //            PaymentIds == other.PaymentIds ||
        //            PaymentIds != null &&
        //            PaymentIds.SequenceEqual(other.PaymentIds)
        //        ) &&
        //        (
        //            AddOns == other.AddOns ||
        //            AddOns != null &&
        //            AddOns.SequenceEqual(other.AddOns)
        //        ) &&
        //        (
        //            CancellationTerms == other.CancellationTerms ||
        //            CancellationTerms != null &&
        //            CancellationTerms.SequenceEqual(other.CancellationTerms)
        //        ) &&
        //        (
        //            ReplacementTerms == other.ReplacementTerms ||
        //            ReplacementTerms != null &&
        //            ReplacementTerms.SequenceEqual(other.ReplacementTerms)
        //        ) &&
        //        (
        //            XinputRequired == other.XinputRequired ||
        //            XinputRequired != null &&
        //            XinputRequired.Equals(other.XinputRequired)
        //        ) &&
        //        (
        //            XinputResponse == other.XinputResponse ||
        //            XinputResponse != null &&
        //            XinputResponse.Equals(other.XinputResponse)
        //        ) &&
        //        (
        //            Time == other.Time ||
        //            Time != null &&
        //            Time.Equals(other.Time)
        //        ) &&
        //        (
        //            Rateable == other.Rateable ||
        //            Rateable != null &&
        //            Rateable.Equals(other.Rateable)
        //        ) &&
        //        (
        //            Rating == other.Rating ||
        //            Rating != null &&
        //            Rating.Equals(other.Rating)
        //        ) &&
        //        (
        //            Matched == other.Matched ||
        //            Matched != null &&
        //            Matched.Equals(other.Matched)
        //        ) &&
        //        (
        //            Related == other.Related ||
        //            Related != null &&
        //            Related.Equals(other.Related)
        //        ) &&
        //        (
        //            Recommended == other.Recommended ||
        //            Recommended != null &&
        //            Recommended.Equals(other.Recommended)
        //        ) &&
        //        (
        //            Ttl == other.Ttl ||
        //            Ttl != null &&
        //            Ttl.Equals(other.Ttl)
        //        ) &&
        //        (
        //            Tags == other.Tags ||
        //            Tags != null &&
        //            Tags.SequenceEqual(other.Tags)
        //        );
        //}

        /// <summary>
        /// Gets the hash code
        /// </summary>
        /// <returns>Hash code</returns>
        //public override int GetHashCode()
        //{
        //    unchecked // Overflow is fine, just wrap
        //    {
        //        var hashCode = 41;
        //        // Suitable nullity checks etc, of course :)
        //        if (Id != null)
        //            hashCode = hashCode * 59 + Id.GetHashCode();
        //        if (ParentItemId != null)
        //            hashCode = hashCode * 59 + ParentItemId.GetHashCode();
        //        if (ParentItemQuantity != null)
        //            hashCode = hashCode * 59 + ParentItemQuantity.GetHashCode();
        //        if (Descriptor != null)
        //            hashCode = hashCode * 59 + Descriptor.GetHashCode();
        //        if (Manufacturer != null)
        //            hashCode = hashCode * 59 + Manufacturer.GetHashCode();
        //        if (Price != null)
        //            hashCode = hashCode * 59 + Price.GetHashCode();
        //        if (Quantity != null)
        //            hashCode = hashCode * 59 + Quantity.GetHashCode();
        //        if (CategoryIds != null)
        //            hashCode = hashCode * 59 + CategoryIds.GetHashCode();
        //        if (FulfillmentIds != null)
        //            hashCode = hashCode * 59 + FulfillmentIds.GetHashCode();
        //        if (LocationIds != null)
        //            hashCode = hashCode * 59 + LocationIds.GetHashCode();
        //        if (PaymentIds != null)
        //            hashCode = hashCode * 59 + PaymentIds.GetHashCode();
        //        if (AddOns != null)
        //            hashCode = hashCode * 59 + AddOns.GetHashCode();
        //        if (CancellationTerms != null)
        //            hashCode = hashCode * 59 + CancellationTerms.GetHashCode();
        //        if (ReplacementTerms != null)
        //            hashCode = hashCode * 59 + ReplacementTerms.GetHashCode();
        //        if (XinputRequired != null)
        //            hashCode = hashCode * 59 + XinputRequired.GetHashCode();
        //        if (XinputResponse != null)
        //            hashCode = hashCode * 59 + XinputResponse.GetHashCode();
        //        if (Time != null)
        //            hashCode = hashCode * 59 + Time.GetHashCode();
        //        if (Rateable != null)
        //            hashCode = hashCode * 59 + Rateable.GetHashCode();
        //        if (Rating != null)
        //            hashCode = hashCode * 59 + Rating.GetHashCode();
        //        if (Matched != null)
        //            hashCode = hashCode * 59 + Matched.GetHashCode();
        //        if (Related != null)
        //            hashCode = hashCode * 59 + Related.GetHashCode();
        //        if (Recommended != null)
        //            hashCode = hashCode * 59 + Recommended.GetHashCode();
        //        if (Ttl != null)
        //            hashCode = hashCode * 59 + Ttl.GetHashCode();
        //        if (Tags != null)
        //            hashCode = hashCode * 59 + Tags.GetHashCode();
        //        return hashCode;
        //    }
        //}

        #region Operators
#pragma warning disable 1591

        public static bool operator ==(Item left, Item right)
        {
            return Equals(left, right);
        }

        public static bool operator !=(Item left, Item right)
        {
            return !Equals(left, right);
        }

#pragma warning restore 1591
        #endregion Operators
    }
}
