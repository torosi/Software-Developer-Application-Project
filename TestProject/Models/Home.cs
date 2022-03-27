namespace TestProject.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Home")]
    public partial class Home
    {
        [Required]
        public int Id { get; set; }

        public string Key { get; set; }

        public string Content { get; set; }
    }
}
