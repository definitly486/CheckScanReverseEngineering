.class public final Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint;
.super Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint<",
        "Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/ServiceApplovinConfigWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/l;

.field private final b:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/o;

.field private final c:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/n;

.field private final d:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/m;

.field private final e:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint$configUpdateListener$1;

.field private final f:Ljava/lang/String;

.field private final g:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1;

.field private final h:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint$clientConfigProvider$1;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/o;

    invoke-direct {v0}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/o;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint;->b:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/o;

    new-instance v0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/n;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v2}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/n;-><init>(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/h;Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/g;ILjh2;)V

    iput-object v0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint;->c:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/n;

    new-instance v0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/m;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1, v2}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/m;-><init>(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/h;ILjh2;)V

    iput-object v0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint;->d:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/m;

    new-instance v0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint$configUpdateListener$1;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint$configUpdateListener$1;-><init>(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint;)V

    iput-object v0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint;->e:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint$configUpdateListener$1;

    const-string v0, "ad-revenue-applovin-v12-auto"

    iput-object v0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint;->f:Ljava/lang/String;

    new-instance v0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1;-><init>(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint;)V

    iput-object v0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint;->g:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1;

    new-instance v0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint$clientConfigProvider$1;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint$clientConfigProvider$1;-><init>(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint;)V

    iput-object v0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint;->h:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint$clientConfigProvider$1;

    return-void
.end method

.method public static final synthetic access$getBundleConverter$p(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint;)Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/o;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint;->b:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/o;

    return-object p0
.end method

.method public static final synthetic access$getConfig$p(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint;)Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/l;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint;->a:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/l;

    return-object p0
.end method

.method public static final synthetic access$getConfigConverter$p(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint;)Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/m;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint;->d:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/m;

    return-object p0
.end method

.method public static final synthetic access$getConfigParser$p(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint;)Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/n;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint;->c:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/n;

    return-object p0
.end method

.method public static final synthetic access$getConfigUpdateListener$p(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint;)Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint$configUpdateListener$1;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint;->e:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint$configUpdateListener$1;

    return-object p0
.end method

.method public static final synthetic access$setConfig$p(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint;Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/l;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint;->a:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/l;

    return-void
.end method


# virtual methods
.method public getClientConfigProvider()Lio/appmetrica/analytics/modulesapi/internal/service/ClientConfigProvider;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint;->h:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint$clientConfigProvider$1;

    return-object p0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint;->f:Ljava/lang/String;

    return-object p0
.end method

.method public getRemoteConfigExtensionConfiguration()Lio/appmetrica/analytics/modulesapi/internal/service/RemoteConfigExtensionConfiguration;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/modulesapi/internal/service/RemoteConfigExtensionConfiguration<",
            "Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/ServiceApplovinConfigWrapper;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint;->g:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1;

    return-object p0
.end method

.method public initServiceSide(Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;Lio/appmetrica/analytics/modulesapi/internal/service/ModuleRemoteConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;",
            "Lio/appmetrica/analytics/modulesapi/internal/service/ModuleRemoteConfig<",
            "Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/ServiceApplovinConfigWrapper;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleRemoteConfig;->getFeaturesConfig()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/ServiceApplovinConfigWrapper;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/ServiceApplovinConfigWrapper;->getConfig$ad_revenue_applovin_v12_auto_release()Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/l;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint;->a:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/l;

    return-void
.end method
