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
    public partial class GetFeedbackFormMessage : IEquatable<GetFeedbackFormMessage>
    { 
        /// <summary>
        /// Gets or Sets RatingValue
        /// </summary>

        [DataMember(Name="rating_value")]
        public string RatingValue { get; set; }

        /// <summary>
        /// Gets or Sets RatingCategory
        /// </summary>

        [DataMember(Name="rating_category")]
        public RatingCategoriesBody RatingCategory { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class GetFeedbackFormMessage {\n");
            sb.Append("  RatingValue: ").Append(RatingValue).Append("\n");
            sb.Append("  RatingCategory: ").Append(RatingCategory).Append("\n");
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
            return obj.GetType() == GetType() && Equals((GetFeedbackFormMessage)obj);
        }

        /// <summary>
        /// Returns true if GetFeedbackFormMessage instances are equal
        /// </summary>
        /// <param name="other">Instance of GetFeedbackFormMessage to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(GetFeedbackFormMessage other)
        {
            if (ReferenceEquals(null, other)) return false;
            if (ReferenceEquals(this, other)) return true;

            return 
                (
                    RatingValue == other.RatingValue ||
                    RatingValue != null &&
                    RatingValue.Equals(other.RatingValue)
                ) && 
                (
                    RatingCategory == other.RatingCategory ||
                    RatingCategory != null &&
                    RatingCategory.Equals(other.RatingCategory)
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
                    if (RatingValue != null)
                    hashCode = hashCode * 59 + RatingValue.GetHashCode();
                    if (RatingCategory != null)
                    hashCode = hashCode * 59 + RatingCategory.GetHashCode();
                return hashCode;
            }
        }

        #region Operators
        #pragma warning disable 1591

        public static bool operator ==(GetFeedbackFormMessage left, GetFeedbackFormMessage right)
        {
            return Equals(left, right);
        }

        public static bool operator !=(GetFeedbackFormMessage left, GetFeedbackFormMessage right)
        {
            return !Equals(left, right);
        }

        #pragma warning restore 1591
        #endregion Operators
    }
}
