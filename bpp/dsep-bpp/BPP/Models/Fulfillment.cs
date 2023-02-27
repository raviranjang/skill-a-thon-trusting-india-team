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
    /// Describes how a single product/service will be rendered/fulfilled to the end customer
    /// </summary>
    [DataContract]
    public partial class Fulfillment : IEquatable<Fulfillment>
    { 
        /// <summary>
        /// Unique reference ID to the fulfillment of an order
        /// </summary>
        /// <value>Unique reference ID to the fulfillment of an order</value>

        [DataMember(Name="id")]
        public string Id { get; set; }

        /// <summary>
        /// This describes the type of fulfillment
        /// </summary>
        /// <value>This describes the type of fulfillment</value>

        [DataMember(Name="type")]
        public string Type { get; set; }

        /// <summary>
        /// Gets or Sets ProviderId
        /// </summary>

        [DataMember(Name="provider_id")]
        public string ProviderId { get; set; }

        /// <summary>
        /// Gets or Sets Rating
        /// </summary>

        [DataMember(Name="rating")]
        public string Rating { get; set; }

        /// <summary>
        /// Gets or Sets State
        /// </summary>

        [DataMember(Name="state")]
        public State State { get; set; }

        /// <summary>
        /// Indicates whether the fulfillment allows tracking
        /// </summary>
        /// <value>Indicates whether the fulfillment allows tracking</value>

        [DataMember(Name="tracking")]
        public bool? Tracking { get; set; }

        /// <summary>
        /// Gets or Sets Customer
        /// </summary>

        [DataMember(Name="customer")]
        public FulfillmentCustomer Customer { get; set; }

        /// <summary>
        /// Gets or Sets Agent
        /// </summary>

        [DataMember(Name="agent")]
        public Agent Agent { get; set; }

        /// <summary>
        /// Gets or Sets Person
        /// </summary>

        [DataMember(Name="person")]
        public Person Person { get; set; }

        /// <summary>
        /// Gets or Sets Contact
        /// </summary>

        [DataMember(Name="contact")]
        public Contact Contact { get; set; }

        /// <summary>
        /// Gets or Sets Vehicle
        /// </summary>

        [DataMember(Name="vehicle")]
        public Vehicle Vehicle { get; set; }

        /// <summary>
        /// Gets or Sets Start
        /// </summary>

        [DataMember(Name="start")]
        public FulfillmentStart Start { get; set; }

        /// <summary>
        /// Gets or Sets End
        /// </summary>

        [DataMember(Name="end")]
        public FulfillmentEnd End { get; set; }

        /// <summary>
        /// Gets or Sets Rateable
        /// </summary>

        [DataMember(Name="rateable")]
        public bool? Rateable { get; set; }

        /// <summary>
        /// Gets or Sets Tags
        /// </summary>

        [DataMember(Name = "tags")]
        public List<TagGroup> Tags { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class Fulfillment {\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Type: ").Append(Type).Append("\n");
            sb.Append("  ProviderId: ").Append(ProviderId).Append("\n");
            sb.Append("  Rating: ").Append(Rating).Append("\n");
            sb.Append("  State: ").Append(State).Append("\n");
            sb.Append("  Tracking: ").Append(Tracking).Append("\n");
            sb.Append("  Customer: ").Append(Customer).Append("\n");
            sb.Append("  Agent: ").Append(Agent).Append("\n");
            sb.Append("  Person: ").Append(Person).Append("\n");
            sb.Append("  Contact: ").Append(Contact).Append("\n");
            sb.Append("  Vehicle: ").Append(Vehicle).Append("\n");
            sb.Append("  Start: ").Append(Start).Append("\n");
            sb.Append("  End: ").Append(End).Append("\n");
            sb.Append("  Rateable: ").Append(Rateable).Append("\n");
            sb.Append("  Tags: ").Append(Tags).Append("\n");
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
            return obj.GetType() == GetType() && Equals((Fulfillment)obj);
        }

        /// <summary>
        /// Returns true if Fulfillment instances are equal
        /// </summary>
        /// <param name="other">Instance of Fulfillment to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(Fulfillment other)
        {
            if (ReferenceEquals(null, other)) return false;
            if (ReferenceEquals(this, other)) return true;

            return 
                (
                    Id == other.Id ||
                    Id != null &&
                    Id.Equals(other.Id)
                ) && 
                (
                    Type == other.Type ||
                    Type != null &&
                    Type.Equals(other.Type)
                ) && 
                (
                    ProviderId == other.ProviderId ||
                    ProviderId != null &&
                    ProviderId.Equals(other.ProviderId)
                ) && 
                (
                    Rating == other.Rating ||
                    Rating != null &&
                    Rating.Equals(other.Rating)
                ) && 
                (
                    State == other.State ||
                    State != null &&
                    State.Equals(other.State)
                ) && 
                (
                    Tracking == other.Tracking ||
                    Tracking != null &&
                    Tracking.Equals(other.Tracking)
                ) && 
                (
                    Customer == other.Customer ||
                    Customer != null &&
                    Customer.Equals(other.Customer)
                ) && 
                (
                    Agent == other.Agent ||
                    Agent != null &&
                    Agent.Equals(other.Agent)
                ) && 
                (
                    Person == other.Person ||
                    Person != null &&
                    Person.Equals(other.Person)
                ) && 
                (
                    Contact == other.Contact ||
                    Contact != null &&
                    Contact.Equals(other.Contact)
                ) && 
                (
                    Vehicle == other.Vehicle ||
                    Vehicle != null &&
                    Vehicle.Equals(other.Vehicle)
                ) && 
                (
                    Start == other.Start ||
                    Start != null &&
                    Start.Equals(other.Start)
                ) && 
                (
                    End == other.End ||
                    End != null &&
                    End.Equals(other.End)
                ) && 
                (
                    Rateable == other.Rateable ||
                    Rateable != null &&
                    Rateable.Equals(other.Rateable)
                ) && 
                (
                    Tags == other.Tags ||
                    Tags != null &&
                    Tags.Equals(other.Tags)
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
                    if (Id != null)
                    hashCode = hashCode * 59 + Id.GetHashCode();
                    if (Type != null)
                    hashCode = hashCode * 59 + Type.GetHashCode();
                    if (ProviderId != null)
                    hashCode = hashCode * 59 + ProviderId.GetHashCode();
                    if (Rating != null)
                    hashCode = hashCode * 59 + Rating.GetHashCode();
                    if (State != null)
                    hashCode = hashCode * 59 + State.GetHashCode();
                    if (Tracking != null)
                    hashCode = hashCode * 59 + Tracking.GetHashCode();
                    if (Customer != null)
                    hashCode = hashCode * 59 + Customer.GetHashCode();
                    if (Agent != null)
                    hashCode = hashCode * 59 + Agent.GetHashCode();
                    if (Person != null)
                    hashCode = hashCode * 59 + Person.GetHashCode();
                    if (Contact != null)
                    hashCode = hashCode * 59 + Contact.GetHashCode();
                    if (Vehicle != null)
                    hashCode = hashCode * 59 + Vehicle.GetHashCode();
                    if (Start != null)
                    hashCode = hashCode * 59 + Start.GetHashCode();
                    if (End != null)
                    hashCode = hashCode * 59 + End.GetHashCode();
                    if (Rateable != null)
                    hashCode = hashCode * 59 + Rateable.GetHashCode();
                    if (Tags != null)
                    hashCode = hashCode * 59 + Tags.GetHashCode();
                return hashCode;
            }
        }

        #region Operators
        #pragma warning disable 1591

        public static bool operator ==(Fulfillment left, Fulfillment right)
        {
            return Equals(left, right);
        }

        public static bool operator !=(Fulfillment left, Fulfillment right)
        {
            return !Equals(left, right);
        }

        #pragma warning restore 1591
        #endregion Operators
    }
}
