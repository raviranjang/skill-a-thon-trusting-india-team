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

namespace bpp.Models
{ 
    /// <summary>
    /// Describes the refund policy of an Item when removed from an order
    /// </summary>
    [DataContract]
    public partial class ItemRefundPolicy : IEquatable<ItemRefundPolicy>
    { 
        /// <summary>
        /// Gets or Sets Refundable
        /// </summary>

        [DataMember(Name="refundable")]
        public bool? Refundable { get; set; }

        /// <summary>
        /// Gets or Sets RefundApplicableTill
        /// </summary>

        [DataMember(Name="refund_applicable_till")]
        public DateTime? RefundApplicableTill { get; set; }

        /// <summary>
        /// Gets or Sets RefundType
        /// </summary>
        [JsonConverter(typeof(Newtonsoft.Json.Converters.StringEnumConverter))]
        public enum RefundTypeEnum
        {
            /// <summary>
            /// Enum FULLYREFUNDABLEEnum for FULLY-REFUNDABLE
            /// </summary>
            [EnumMember(Value = "FULLY-REFUNDABLE")]
            FULLYREFUNDABLEEnum = 0,
            /// <summary>
            /// Enum PARTLYREFUNDABLEEnum for PARTLY-REFUNDABLE
            /// </summary>
            [EnumMember(Value = "PARTLY-REFUNDABLE")]
            PARTLYREFUNDABLEEnum = 1,
            /// <summary>
            /// Enum VARIABLEREFUNDEnum for VARIABLE-REFUND
            /// </summary>
            [EnumMember(Value = "VARIABLE-REFUND")]
            VARIABLEREFUNDEnum = 2        }

        /// <summary>
        /// Gets or Sets RefundType
        /// </summary>

        [DataMember(Name="refund_type")]
        public RefundTypeEnum? RefundType { get; set; }

        /// <summary>
        /// Gets or Sets RefundAmountType
        /// </summary>
        [JsonConverter(typeof(Newtonsoft.Json.Converters.StringEnumConverter))]
        public enum RefundAmountTypeEnum
        {
            /// <summary>
            /// Enum CONSTANTAMOUNTEnum for CONSTANT-AMOUNT
            /// </summary>
            [EnumMember(Value = "CONSTANT-AMOUNT")]
            CONSTANTAMOUNTEnum = 0,
            /// <summary>
            /// Enum CONSTANTPERCENTAGEEnum for CONSTANT-PERCENTAGE
            /// </summary>
            [EnumMember(Value = "CONSTANT-PERCENTAGE")]
            CONSTANTPERCENTAGEEnum = 1,
            /// <summary>
            /// Enum VARIABLEAMOUNTEnum for VARIABLE-AMOUNT
            /// </summary>
            [EnumMember(Value = "VARIABLE-AMOUNT")]
            VARIABLEAMOUNTEnum = 2,
            /// <summary>
            /// Enum VARIABLEPERCENTAGEEnum for VARIABLE-PERCENTAGE
            /// </summary>
            [EnumMember(Value = "VARIABLE-PERCENTAGE")]
            VARIABLEPERCENTAGEEnum = 3        }

        /// <summary>
        /// Gets or Sets RefundAmountType
        /// </summary>

        [DataMember(Name="refund_amount_type")]
        public RefundAmountTypeEnum? RefundAmountType { get; set; }

        /// <summary>
        /// Gets or Sets RefundAmountValue
        /// </summary>

        [DataMember(Name="refund_amount_value")]
        public decimal? RefundAmountValue { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class ItemRefundPolicy {\n");
            sb.Append("  Refundable: ").Append(Refundable).Append("\n");
            sb.Append("  RefundApplicableTill: ").Append(RefundApplicableTill).Append("\n");
            sb.Append("  RefundType: ").Append(RefundType).Append("\n");
            sb.Append("  RefundAmountType: ").Append(RefundAmountType).Append("\n");
            sb.Append("  RefundAmountValue: ").Append(RefundAmountValue).Append("\n");
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
            return obj.GetType() == GetType() && Equals((ItemRefundPolicy)obj);
        }

        /// <summary>
        /// Returns true if ItemRefundPolicy instances are equal
        /// </summary>
        /// <param name="other">Instance of ItemRefundPolicy to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(ItemRefundPolicy other)
        {
            if (ReferenceEquals(null, other)) return false;
            if (ReferenceEquals(this, other)) return true;

            return 
                (
                    Refundable == other.Refundable ||
                    Refundable != null &&
                    Refundable.Equals(other.Refundable)
                ) && 
                (
                    RefundApplicableTill == other.RefundApplicableTill ||
                    RefundApplicableTill != null &&
                    RefundApplicableTill.Equals(other.RefundApplicableTill)
                ) && 
                (
                    RefundType == other.RefundType ||
                    RefundType != null &&
                    RefundType.Equals(other.RefundType)
                ) && 
                (
                    RefundAmountType == other.RefundAmountType ||
                    RefundAmountType != null &&
                    RefundAmountType.Equals(other.RefundAmountType)
                ) && 
                (
                    RefundAmountValue == other.RefundAmountValue ||
                    RefundAmountValue != null &&
                    RefundAmountValue.Equals(other.RefundAmountValue)
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
                    if (Refundable != null)
                    hashCode = hashCode * 59 + Refundable.GetHashCode();
                    if (RefundApplicableTill != null)
                    hashCode = hashCode * 59 + RefundApplicableTill.GetHashCode();
                    if (RefundType != null)
                    hashCode = hashCode * 59 + RefundType.GetHashCode();
                    if (RefundAmountType != null)
                    hashCode = hashCode * 59 + RefundAmountType.GetHashCode();
                    if (RefundAmountValue != null)
                    hashCode = hashCode * 59 + RefundAmountValue.GetHashCode();
                return hashCode;
            }
        }

        #region Operators
        #pragma warning disable 1591

        public static bool operator ==(ItemRefundPolicy left, ItemRefundPolicy right)
        {
            return Equals(left, right);
        }

        public static bool operator !=(ItemRefundPolicy left, ItemRefundPolicy right)
        {
            return !Equals(left, right);
        }

        #pragma warning restore 1591
        #endregion Operators
    }
}