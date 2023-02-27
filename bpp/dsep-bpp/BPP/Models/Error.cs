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
    /// Describes an error object
    /// </summary>
    [DataContract]
    public partial class Error : IEquatable<Error>
    { 
        /// <summary>
        /// Gets or Sets Type
        /// </summary>
        [JsonConverter(typeof(Newtonsoft.Json.Converters.StringEnumConverter))]
        public enum TypeEnum
        {
            /// <summary>
            /// Enum CONTEXTERROREnum for CONTEXT-ERROR
            /// </summary>
            [EnumMember(Value = "CONTEXT-ERROR")]
            CONTEXTERROREnum = 0,
            /// <summary>
            /// Enum COREERROREnum for CORE-ERROR
            /// </summary>
            [EnumMember(Value = "CORE-ERROR")]
            COREERROREnum = 1,
            /// <summary>
            /// Enum DOMAINERROREnum for DOMAIN-ERROR
            /// </summary>
            [EnumMember(Value = "DOMAIN-ERROR")]
            DOMAINERROREnum = 2,
            /// <summary>
            /// Enum POLICYERROREnum for POLICY-ERROR
            /// </summary>
            [EnumMember(Value = "POLICY-ERROR")]
            POLICYERROREnum = 3,
            /// <summary>
            /// Enum JSONSCHEMAERROREnum for JSON-SCHEMA-ERROR
            /// </summary>
            [EnumMember(Value = "JSON-SCHEMA-ERROR")]
            JSONSCHEMAERROREnum = 4        }

        /// <summary>
        /// Gets or Sets Type
        /// </summary>
        [Required]

        [DataMember(Name="type")]
        public TypeEnum? Type { get; set; }

        /// <summary>
        /// Beckn specific error code. For full list of error codes, refer to docs/protocol-drafts/BECKN-RFC-005-ERROR-CODES-DRAFT-01.md of this repo
        /// </summary>
        /// <value>Beckn specific error code. For full list of error codes, refer to docs/protocol-drafts/BECKN-RFC-005-ERROR-CODES-DRAFT-01.md of this repo</value>
        [Required]

        [DataMember(Name="code")]
        public string Code { get; set; }

        /// <summary>
        /// Path to json schema generating the error. Used only during json schema validation errors
        /// </summary>
        /// <value>Path to json schema generating the error. Used only during json schema validation errors</value>

        [DataMember(Name="path")]
        public string Path { get; set; }

        /// <summary>
        /// Human readable message describing the error
        /// </summary>
        /// <value>Human readable message describing the error</value>

        [DataMember(Name="message")]
        public string Message { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class Error {\n");
            sb.Append("  Type: ").Append(Type).Append("\n");
            sb.Append("  Code: ").Append(Code).Append("\n");
            sb.Append("  Path: ").Append(Path).Append("\n");
            sb.Append("  Message: ").Append(Message).Append("\n");
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
            return obj.GetType() == GetType() && Equals((Error)obj);
        }

        /// <summary>
        /// Returns true if Error instances are equal
        /// </summary>
        /// <param name="other">Instance of Error to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(Error other)
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
                    Code == other.Code ||
                    Code != null &&
                    Code.Equals(other.Code)
                ) && 
                (
                    Path == other.Path ||
                    Path != null &&
                    Path.Equals(other.Path)
                ) && 
                (
                    Message == other.Message ||
                    Message != null &&
                    Message.Equals(other.Message)
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
                    if (Code != null)
                    hashCode = hashCode * 59 + Code.GetHashCode();
                    if (Path != null)
                    hashCode = hashCode * 59 + Path.GetHashCode();
                    if (Message != null)
                    hashCode = hashCode * 59 + Message.GetHashCode();
                return hashCode;
            }
        }

        #region Operators
        #pragma warning disable 1591

        public static bool operator ==(Error left, Error right)
        {
            return Equals(left, right);
        }

        public static bool operator !=(Error left, Error right)
        {
            return !Equals(left, right);
        }

        #pragma warning restore 1591
        #endregion Operators
    }
}
