using AgriEnergyConnect.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Linq;

namespace AgriEnergyConnect.Data
{
    public static class SeedData
    {
        public static void Initialize(IServiceProvider serviceProvider)
        {
            using (var context = new ApplicationDbContext(
                serviceProvider.GetRequiredService<DbContextOptions<ApplicationDbContext>>()))
            {
                // Check if there are any existing products
                if (context.Products.Any())
                {
                    return;   // DB has been seeded
                }

                context.Products.AddRange(
                    new Product { Name = "Organic Oranges", Category = "Fruit", ProductionDate = new DateTime(2024, 5, 5) },
                    new Product { Name = "Grass-fed Beef", Category = "Meat", ProductionDate = new DateTime(2024, 5, 6) },
                    new Product { Name = "Organic Strawberries", Category = "Fruit", ProductionDate = new DateTime(2024, 5, 7) },
                    new Product { Name = "Free-range Pork", Category = "Meat", ProductionDate = new DateTime(2024, 5, 8) }
                );

                context.SaveChanges();
            }
        }
    }
}
