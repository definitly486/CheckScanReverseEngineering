.class public final Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;
.super Lio/appmetrica/analytics/modulesapi/internal/client/ModuleClientEntryPoint;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/appmetrica/analytics/modulesapi/internal/client/ModuleClientEntryPoint<",
        "Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/ClientApplovinConfigWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/j;

.field private c:Z

.field private d:Ljava/lang/Boolean;

.field private e:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/c;

.field private final f:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/i;

.field private final g:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint$configUpdateListener$1;

.field private final h:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint$serviceConfigExtensionConfiguration$1;

.field private final i:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint$adRevenueCollector$1;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lio/appmetrica/analytics/modulesapi/internal/client/ModuleClientEntryPoint;-><init>()V

    const-string v0, "ad-revenue-applovin-v12-auto"

    iput-object v0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;->a:Ljava/lang/String;

    new-instance v0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/i;

    invoke-direct {v0}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/i;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;->f:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/i;

    new-instance v0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint$configUpdateListener$1;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint$configUpdateListener$1;-><init>(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;)V

    iput-object v0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;->g:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint$configUpdateListener$1;

    new-instance v0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint$serviceConfigExtensionConfiguration$1;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint$serviceConfigExtensionConfiguration$1;-><init>(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;)V

    iput-object v0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;->h:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint$serviceConfigExtensionConfiguration$1;

    new-instance v0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint$adRevenueCollector$1;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint$adRevenueCollector$1;-><init>(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;)V

    iput-object v0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;->i:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint$adRevenueCollector$1;

    return-void
.end method

.method private final a()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;->e:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;->b:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/j;

    if-eqz v1, :cond_1

    iget-boolean v1, v1, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/j;->a:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_1
    sget-boolean v1, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/k;->a:Z

    :goto_0
    iget-object v2, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;->d:Ljava/lang/Boolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_2

    :cond_2
    const-string v2, "com.applovin.communicator.AppLovinCommunicator"

    invoke-static {v2}, Lio/appmetrica/analytics/coreutils/internal/reflection/ReflectionUtils;->detectClassExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "com.applovin.communicator.AppLovinCommunicatorMessage"

    invoke-static {v2}, Lio/appmetrica/analytics/coreutils/internal/reflection/ReflectionUtils;->detectClassExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;->d:Ljava/lang/Boolean;

    :goto_2
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    move v1, v4

    goto :goto_3

    :cond_4
    move v1, v3

    :goto_3
    iget-boolean v2, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v1, v2, :cond_5

    monitor-exit p0

    return-void

    :cond_5
    if-eqz v1, :cond_6

    :try_start_2
    invoke-virtual {v0}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/c;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    iput-boolean v4, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;->c:Z

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/c;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    iput-boolean v3, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;->c:Z

    :cond_7
    :goto_4
    sget-object v0, Lj59;->a:Lj59;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_5
    monitor-exit p0

    throw v0
.end method

.method public static final synthetic access$getBundleConverter$p(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;)Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/i;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;->f:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/i;

    return-object p0
.end method

.method public static final synthetic access$getClientConfig$p(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;)Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/j;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;->b:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/j;

    return-object p0
.end method

.method public static final synthetic access$getConfigUpdateListener$p(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;)Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint$configUpdateListener$1;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;->g:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint$configUpdateListener$1;

    return-object p0
.end method

.method public static final synthetic access$getLibraryAvailable$p(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;)Z
    .locals 0

    iget-boolean p0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;->c:Z

    return p0
.end method

.method public static final synthetic access$setClientConfig$p(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/j;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;->b:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/j;

    return-void
.end method

.method public static final synthetic access$updateListenerState(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;)V
    .locals 0

    invoke-direct {p0}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;->a()V

    return-void
.end method


# virtual methods
.method public getAdRevenueCollector()Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/AdRevenueCollector;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;->i:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint$adRevenueCollector$1;

    return-object p0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getServiceConfigExtensionConfiguration()Lio/appmetrica/analytics/modulesapi/internal/client/ServiceConfigExtensionConfiguration;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/modulesapi/internal/client/ServiceConfigExtensionConfiguration<",
            "Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/ClientApplovinConfigWrapper;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;->h:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint$serviceConfigExtensionConfiguration$1;

    return-object p0
.end method

.method public initClientSide(Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/c;

    invoke-interface {p1}, Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/e;

    new-instance v3, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/d;

    invoke-direct {v3}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/d;-><init>()V

    invoke-direct {v2, p1, v3}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/e;-><init>(Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/d;)V

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/c;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/e;)V

    iput-object v0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;->e:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/c;

    sget-object p1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onActivated()V
    .locals 0

    invoke-direct {p0}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;->a()V

    return-void
.end method
