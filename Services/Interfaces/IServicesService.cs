﻿using EgyptTouristWebSite.Models;
using EgyptTouristWebSite.ViewModel;

namespace EgyptTouristWebSite.Services.Interfaces
{
    public interface IServicesService
    {
        ServicesViewModel GetServiceVM();
        //List<Accommodation> Filter(string[] types, string[] prices, string[] ratings);
    }
}
