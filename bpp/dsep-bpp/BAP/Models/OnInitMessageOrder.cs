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

namespace BAP.Models
{ 
    /// <summary>
    /// 
    /// </summary>
    [DataContract]
    public partial class OnInitMessageOrder : IEquatable<OnInitMessageOrder>
    { 
        /// <summary>
        /// Gets or Sets Provider
        /// </summary>

        [DataMember(Name="provider")]
        public OnInitMessageOrderProvider Provider { get; set; }

        /// <summary>
        /// Gets or Sets ProviderLocation
        /// </summary>

        [DataMember(Name="provider_location")]
        public OnInitMessageOrderProviderLocation ProviderLocation { get; set; }

        /// <summary>
        /// Gets or Sets Items
        /// </summary>

        [DataMember(Name="items")]
        public List<OnInitMessageOrderItems> Items { get; set; }

        /// <summary>
        /// Gets or Sets AddOns
        /// </summary>

        [DataMember(Name="add_ons")]
        public List<OnInitMessageOrderAddOns> AddOns { get; set; }

        /// <summary>
        /// Gets or Sets Offers
        /// </summary>

        [DataMember(Name="offers")]
        public List<OnInitMessageOrderOffers> Offers { get; set; }

        /// <summary>
        /// Gets or Sets Billing
        /// </summary>

        [DataMember(Name="billing")]
        public Billing Billing { get; set; }

        /// <summary>
        /// Gets or Sets Fulfillment
        /// </summary>

        [DataMember(Name="fulfillment")]
        public Fulfillment Fulfillment { get; set; }

        /// <summary>
        /// Gets or Sets Quote
        /// </summary>

        [DataMember(Name="quote")]
        public Quotation Quote { get; set; }

        /// <summary>
        /// Gets or Sets Payment
        /// </summary>

        [DataMember(Name="payment")]
        public Payment Payment { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class OnInitMessageOrder {\n");
            sb.Append("  Provider: ").Append(Provider).Append("\n");
            sb.Append("  ProviderLocation: ").Append(ProviderLocation).Append("\n");
            sb.Append("  Items: ").Append(Items).Append("\n");
            sb.Append("  AddOns: ").Append(AddOns).Append("\n");
            sb.Append("  Offers: ").Append(Offers).Append("\n");
            sb.Append("  Billing: ").Append(Billing).Append("\n");
            sb.Append("  Fulfillment: ").Append(Fulfillment).Append("\n");
            sb.Append("  Quote: ").Append(Quote).Append("\n");
            sb.Append("  Payment: ").Append(Payment).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }

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
            return obj.GetType() == GetType() && Equals((OnInitMessageOrder)obj);
        }

        /// <summary>
        /// Returns true if OnInitMessageOrder instances are equal
        /// </summary>
        /// <param name="other">Instance of OnInitMessageOrder to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(OnInitMessageOrder other)
        {
            if (ReferenceEquals(null, other)) return false;
            if (ReferenceEquals(this, other)) return true;

            return 
                (
                    Provider == other.Provider ||
                    Provider != null &&
                    Provider.Equals(other.Provider)
                ) && 
                (
                    ProviderLocation == other.ProviderLocation ||
                    ProviderLocation != null &&
                    ProviderLocation.Equals(other.ProviderLocation)
                ) && 
                (
                    Items == other.Items ||
                    Items != null &&
                    Items.SequenceEqual(other.Items)
                ) && 
                (
                    AddOns == other.AddOns ||
                    AddOns != null &&
                    AddOns.SequenceEqual(other.AddOns)
                ) && 
                (
                    Offers == other.Offers ||
                    Offers != null &&
                    Offers.SequenceEqual(other.Offers)
                ) && 
                (
                    Billing == other.Billing ||
                    Billing != null &&
                    Billing.Equals(other.Billing)
                ) && 
                (
                    Fulfillment == other.Fulfillment ||
                    Fulfillment != null &&
                    Fulfillment.Equals(other.Fulfillment)
                ) && 
                (
                    Quote == other.Quote ||
                    Quote != null &&
                    Quote.Equals(other.Quote)
                ) && 
                (
                    Payment == other.Payment ||
                    Payment != null &&
                    Payment.Equals(other.Payment)
                );
        }

        /// <summary>
        /// Gets the hash code
        /// </summary>
        /// <returns>Hash code</returns>
        public override int GetHashCode()
        {
            unchecked // Overflow is fine, just wrap
            {
                var hashCode = 41;
                // Suitable nullity checks etc, of course :)
                    if (Provider != null)
                    hashCode = hashCode * 59 + Provider.GetHashCode();
                    if (ProviderLocation != null)
                    hashCode = hashCode * 59 + ProviderLocation.GetHashCode();
                    if (Items != null)
                    hashCode = hashCode * 59 + Items.GetHashCode();
                    if (AddOns != null)
                    hashCode = hashCode * 59 + AddOns.GetHashCode();
                    if (Offers != null)
                    hashCode = hashCode * 59 + Offers.GetHashCode();
                    if (Billing != null)
                    hashCode = hashCode * 59 + Billing.GetHashCode();
                    if (Fulfillment != null)
                    hashCode = hashCode * 59 + Fulfillment.GetHashCode();
                    if (Quote != null)
                    hashCode = hashCode * 59 + Quote.GetHashCode();
                    if (Payment != null)
                    hashCode = hashCode * 59 + Payment.GetHashCode();
                return hashCode;
            }
        }

        #region Operators
        #pragma warning disable 1591

        public static bool operator ==(OnInitMessageOrder left, OnInitMessageOrder right)
        {
            return Equals(left, right);
        }

        public static bool operator !=(OnInitMessageOrder left, OnInitMessageOrder right)
        {
            return !Equals(left, right);
        }

        #pragma warning restore 1591
        #endregion Operators
    }
}
