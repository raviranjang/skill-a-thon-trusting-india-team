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
    public partial class FeedbackCategoriesBody : IEquatable<FeedbackCategoriesBody>
    { 
        /// <summary>
        /// Gets or Sets Context
        /// </summary>

        [DataMember(Name="context")]
        public Context Context { get; set; }

        /// <summary>
        /// Gets or Sets FeedbackCategories
        /// </summary>

        [DataMember(Name="feedback_categories")]
        public List<string> FeedbackCategories { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class FeedbackCategoriesBody {\n");
            sb.Append("  Context: ").Append(Context).Append("\n");
            sb.Append("  FeedbackCategories: ").Append(FeedbackCategories).Append("\n");
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
            return obj.GetType() == GetType() && Equals((FeedbackCategoriesBody)obj);
        }

        /// <summary>
        /// Returns true if FeedbackCategoriesBody instances are equal
        /// </summary>
        /// <param name="other">Instance of FeedbackCategoriesBody to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(FeedbackCategoriesBody other)
        {
            if (ReferenceEquals(null, other)) return false;
            if (ReferenceEquals(this, other)) return true;

            return 
                (
                    Context == other.Context ||
                    Context != null &&
                    Context.Equals(other.Context)
                ) && 
                (
                    FeedbackCategories == other.FeedbackCategories ||
                    FeedbackCategories != null &&
                    FeedbackCategories.SequenceEqual(other.FeedbackCategories)
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
                    if (Context != null)
                    hashCode = hashCode * 59 + Context.GetHashCode();
                    if (FeedbackCategories != null)
                    hashCode = hashCode * 59 + FeedbackCategories.GetHashCode();
                return hashCode;
            }
        }

        #region Operators
        #pragma warning disable 1591

        public static bool operator ==(FeedbackCategoriesBody left, FeedbackCategoriesBody right)
        {
            return Equals(left, right);
        }

        public static bool operator !=(FeedbackCategoriesBody left, FeedbackCategoriesBody right)
        {
            return !Equals(left, right);
        }

        #pragma warning restore 1591
        #endregion Operators
    }
}
