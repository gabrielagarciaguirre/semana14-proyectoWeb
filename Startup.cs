using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(semana14_proyectoWeb.Startup))]
namespace semana14_proyectoWeb
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
