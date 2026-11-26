.class public final Lio/appmetrica/analytics/billing/internal/BillingServiceModuleEntryPoint;
.super Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint<",
        "Lio/appmetrica/analytics/billing/internal/ServiceSideBillingConfigWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lio/appmetrica/analytics/billing/impl/m;

.field private final b:Lio/appmetrica/analytics/billing/impl/A;

.field private final c:Lio/appmetrica/analytics/billing/impl/z;

.field private final d:Lio/appmetrica/analytics/billing/internal/BillingServiceModuleEntryPoint$configUpdateListener$1;

.field private final e:Ljava/lang/String;

.field private final f:Lio/appmetrica/analytics/billing/internal/BillingServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/billing/impl/A;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v2}, Lio/appmetrica/analytics/billing/impl/A;-><init>(Lio/appmetrica/analytics/billing/impl/g;Lio/appmetrica/analytics/billing/impl/f;ILjh2;)V

    iput-object v0, p0, Lio/appmetrica/analytics/billing/internal/BillingServiceModuleEntryPoint;->b:Lio/appmetrica/analytics/billing/impl/A;

    new-instance v0, Lio/appmetrica/analytics/billing/impl/z;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1, v2}, Lio/appmetrica/analytics/billing/impl/z;-><init>(Lio/appmetrica/analytics/billing/impl/p;ILjh2;)V

    iput-object v0, p0, Lio/appmetrica/analytics/billing/internal/BillingServiceModuleEntryPoint;->c:Lio/appmetrica/analytics/billing/impl/z;

    new-instance v0, Lio/appmetrica/analytics/billing/internal/BillingServiceModuleEntryPoint$configUpdateListener$1;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/billing/internal/BillingServiceModuleEntryPoint$configUpdateListener$1;-><init>(Lio/appmetrica/analytics/billing/internal/BillingServiceModuleEntryPoint;)V

    iput-object v0, p0, Lio/appmetrica/analytics/billing/internal/BillingServiceModuleEntryPoint;->d:Lio/appmetrica/analytics/billing/internal/BillingServiceModuleEntryPoint$configUpdateListener$1;

    const-string v0, "billing"

    iput-object v0, p0, Lio/appmetrica/analytics/billing/internal/BillingServiceModuleEntryPoint;->e:Ljava/lang/String;

    new-instance v0, Lio/appmetrica/analytics/billing/internal/BillingServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/billing/internal/BillingServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1;-><init>(Lio/appmetrica/analytics/billing/internal/BillingServiceModuleEntryPoint;)V

    iput-object v0, p0, Lio/appmetrica/analytics/billing/internal/BillingServiceModuleEntryPoint;->f:Lio/appmetrica/analytics/billing/internal/BillingServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1;

    return-void
.end method

.method public static final synthetic access$getBillingMonitorWrapper$p(Lio/appmetrica/analytics/billing/internal/BillingServiceModuleEntryPoint;)Lio/appmetrica/analytics/billing/impl/m;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/billing/internal/BillingServiceModuleEntryPoint;->a:Lio/appmetrica/analytics/billing/impl/m;

    return-object p0
.end method

.method public static final synthetic access$getConfigConverter$p(Lio/appmetrica/analytics/billing/internal/BillingServiceModuleEntryPoint;)Lio/appmetrica/analytics/billing/impl/z;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/billing/internal/BillingServiceModuleEntryPoint;->c:Lio/appmetrica/analytics/billing/impl/z;

    return-object p0
.end method

.method public static final synthetic access$getConfigParser$p(Lio/appmetrica/analytics/billing/internal/BillingServiceModuleEntryPoint;)Lio/appmetrica/analytics/billing/impl/A;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/billing/internal/BillingServiceModuleEntryPoint;->b:Lio/appmetrica/analytics/billing/impl/A;

    return-object p0
.end method

.method public static final synthetic access$getConfigUpdateListener$p(Lio/appmetrica/analytics/billing/internal/BillingServiceModuleEntryPoint;)Lio/appmetrica/analytics/billing/internal/BillingServiceModuleEntryPoint$configUpdateListener$1;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/billing/internal/BillingServiceModuleEntryPoint;->d:Lio/appmetrica/analytics/billing/internal/BillingServiceModuleEntryPoint$configUpdateListener$1;

    return-object p0
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/billing/internal/BillingServiceModuleEntryPoint;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getRemoteConfigExtensionConfiguration()Lio/appmetrica/analytics/modulesapi/internal/service/RemoteConfigExtensionConfiguration;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/modulesapi/internal/service/RemoteConfigExtensionConfiguration<",
            "Lio/appmetrica/analytics/billing/internal/ServiceSideBillingConfigWrapper;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/billing/internal/BillingServiceModuleEntryPoint;->f:Lio/appmetrica/analytics/billing/internal/BillingServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1;

    return-object p0
.end method

.method public initServiceSide(Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;Lio/appmetrica/analytics/modulesapi/internal/service/ModuleRemoteConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;",
            "Lio/appmetrica/analytics/modulesapi/internal/service/ModuleRemoteConfig<",
            "Lio/appmetrica/analytics/billing/internal/ServiceSideBillingConfigWrapper;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lio/appmetrica/analytics/billing/impl/m;

    invoke-interface {p2}, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleRemoteConfig;->getFeaturesConfig()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/appmetrica/analytics/billing/internal/ServiceSideBillingConfigWrapper;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lio/appmetrica/analytics/billing/internal/ServiceSideBillingConfigWrapper;->getConfig$billing_release()Lio/appmetrica/analytics/billing/impl/B;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {v0, p1, p2}, Lio/appmetrica/analytics/billing/impl/m;-><init>(Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;Lio/appmetrica/analytics/billing/impl/B;)V

    invoke-interface {p1}, Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;->getServiceModuleReporterComponentLifecycle()Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleReporterComponentLifecycle;

    move-result-object p1

    invoke-interface {p1, v0}, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleReporterComponentLifecycle;->subscribe(Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleReporterComponentLifecycleListener;)V

    iput-object v0, p0, Lio/appmetrica/analytics/billing/internal/BillingServiceModuleEntryPoint;->a:Lio/appmetrica/analytics/billing/impl/m;

    return-void
.end method
