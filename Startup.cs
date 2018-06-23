using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Inscripcion.Startup))]
namespace Inscripcion
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
