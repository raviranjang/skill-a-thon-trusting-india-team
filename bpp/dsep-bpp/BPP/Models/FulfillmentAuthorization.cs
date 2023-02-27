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
    /// Describes the mechanism that is used to authorize the start or end of a fulfillment. If set, the BAP must show the authorization code to the BAP user in a specified format. The BAP user must provide this authorization code to the fulfillment agent before the start and/or end of the fulfillment.
    /// </summary>
    [DataContract]
    public partial class FulfillmentAuthorization : IEquatable<FulfillmentAuthorization>
    { 
        /// <summary>
        /// Type of authorization mechanism used. If this value is equal to IMAGE, then the BAP must render this image as-is. If this value is a STING, then the BAP must clearly display the string to the user. It is recommended that the string be displayed in a way that it can be copied to the clipboard.
        /// </summary>
        /// <value>Type of authorization mechanism used. If this value is equal to IMAGE, then the BAP must render this image as-is. If this value is a STING, then the BAP must clearly display the string to the user. It is recommended that the string be displayed in a way that it can be copied to the clipboard.</value>
        [JsonConverter(typeof(Newtonsoft.Json.Converters.StringEnumConverter))]
        public enum TypeEnum
        {
            /// <summary>
            /// Enum IMAGEEnum for IMAGE
            /// </summary>
            [EnumMember(Value = "IMAGE")]
            IMAGEEnum = 0,
            /// <summary>
            /// Enum STRINGEnum for STRING
            /// </summary>
            [EnumMember(Value = "STRING")]
            STRINGEnum = 1        }

        /// <summary>
        /// Type of authorization mechanism used. If this value is equal to IMAGE, then the BAP must render this image as-is. If this value is a STING, then the BAP must clearly display the string to the user. It is recommended that the string be displayed in a way that it can be copied to the clipboard.
        /// </summary>
        /// <value>Type of authorization mechanism used. If this value is equal to IMAGE, then the BAP must render this image as-is. If this value is a STING, then the BAP must clearly display the string to the user. It is recommended that the string be displayed in a way that it can be copied to the clipboard.</value>

        [DataMember(Name="type")]
        public TypeEnum? Type { get; set; }

        /// <summary>
        /// The code displayed to the user for authorizing the start or end of fulfillment. This code must be provided to the fufillment agent before the start and/or end of the fulfillment.
        /// </summary>
        /// <value>The code displayed to the user for authorizing the start or end of fulfillment. This code must be provided to the fufillment agent before the start and/or end of the fulfillment.</value>

        [DataMember(Name="token")]
        public string Token { get; set; }

        /// <summary>
        /// Date and time from which token is valid. This token must be shown to the BAP user only after this time.
        /// </summary>
        /// <value>Date and time from which token is valid. This token must be shown to the BAP user only after this time.</value>

        [DataMember(Name="valid_from")]
        public DateTime? ValidFrom { get; set; }

        /// <summary>
        /// Date and time till which token is valid. This token must NOT be shown to the BAP user after this time.
        /// </summary>
        /// <value>Date and time till which token is valid. This token must NOT be shown to the BAP user after this time.</value>

        [DataMember(Name="valid_to")]
        public DateTime? ValidTo { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class FulfillmentAuthorization {\n");
            sb.Append("  Type: ").Append(Type).Append("\n");
            sb.Append("  Token: ").Append(Token).Append("\n");
            sb.Append("  ValidFrom: ").Append(ValidFrom).Append("\n");
            sb.Append("  ValidTo: ").Append(ValidTo).Append("\n");
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
            return obj.GetType() == GetType() && Equals((FulfillmentAuthorization)obj);
        }

        /// <summary>
        /// Returns true if FulfillmentAuthorization instances are equal
        /// </summary>
        /// <param name="other">Instance of FulfillmentAuthorization to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(FulfillmentAuthorization other)
        {
            if (ReferenceEquals(null, other)) return false;
            if (ReferenceEquals(this, other)) return true;

            return 
                (
                    Type == other.Type ||
                    Type != null &&
                    Type.Equals(other.Type)
                ) && 
                (
                    Token == other.Token ||
                    Token != null &&
                    Token.Equals(other.Token)
                ) && 
                (
                    ValidFrom == other.ValidFrom ||
                    ValidFrom != null &&
                    ValidFrom.Equals(other.ValidFrom)
                ) && 
                (
                    ValidTo == other.ValidTo ||
                    ValidTo != null &&
                    ValidTo.Equals(other.ValidTo)
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
                    if (Type != null)
                    hashCode = hashCode * 59 + Type.GetHashCode();
                    if (Token != null)
                    hashCode = hashCode * 59 + Token.GetHashCode();
                    if (ValidFrom != null)
                    hashCode = hashCode * 59 + ValidFrom.GetHashCode();
                    if (ValidTo != null)
                    hashCode = hashCode * 59 + ValidTo.GetHashCode();
                return hashCode;
            }
        }

        #region Operators
        #pragma warning disable 1591

        public static bool operator ==(FulfillmentAuthorization left, FulfillmentAuthorization right)
        {
            return Equals(left, right);
        }

        public static bool operator !=(FulfillmentAuthorization left, FulfillmentAuthorization right)
        {
            return !Equals(left, right);
        }

        #pragma warning restore 1591
        #endregion Operators
    }
}
