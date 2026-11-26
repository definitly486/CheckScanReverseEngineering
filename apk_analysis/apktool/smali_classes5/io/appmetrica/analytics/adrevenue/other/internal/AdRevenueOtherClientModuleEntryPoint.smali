.class public final Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint;
.super Lio/appmetrica/analytics/modulesapi/internal/client/ModuleClientEntryPoint;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/appmetrica/analytics/modulesapi/internal/client/ModuleClientEntryPoint<",
        "Lio/appmetrica/analytics/adrevenue/other/internal/ClientSideAdRevenueOtherConfigWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

.field private b:Lio/appmetrica/analytics/adrevenue/other/impl/e;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final d:Lio/appmetrica/analytics/adrevenue/other/impl/g;

.field private final e:Lio/appmetrica/analytics/adrevenue/other/impl/d;

.field private final f:Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint$configUpdateListener$1;

.field private final g:Ljava/lang/String;

.field private final h:Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint$serviceConfigExtensionConfiguration$1;

.field private final i:Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint$adRevenueCollector$1;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lio/appmetrica/analytics/modulesapi/internal/client/ModuleClientEntryPoint;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lio/appmetrica/analytics/adrevenue/other/impl/g;

    invoke-direct {v0}, Lio/appmetrica/analytics/adrevenue/other/impl/g;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint;->d:Lio/appmetrica/analytics/adrevenue/other/impl/g;

    new-instance v0, Lio/appmetrica/analytics/adrevenue/other/impl/d;

    invoke-direct {v0}, Lio/appmetrica/analytics/adrevenue/other/impl/d;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint;->e:Lio/appmetrica/analytics/adrevenue/other/impl/d;

    new-instance v0, Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint$configUpdateListener$1;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint$configUpdateListener$1;-><init>(Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint;)V

    iput-object v0, p0, Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint;->f:Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint$configUpdateListener$1;

    const-string v0, "ad-revenue-other"

    iput-object v0, p0, Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint;->g:Ljava/lang/String;

    new-instance v0, Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint$serviceConfigExtensionConfiguration$1;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint$serviceConfigExtensionConfiguration$1;-><init>(Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint;)V

    iput-object v0, p0, Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint;->h:Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint$serviceConfigExtensionConfiguration$1;

    new-instance v0, Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint$adRevenueCollector$1;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint$adRevenueCollector$1;-><init>(Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint;)V

    iput-object v0, p0, Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint;->i:Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint$adRevenueCollector$1;

    return-void
.end method

.method private final a()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint;->a:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint;->b:Lio/appmetrica/analytics/adrevenue/other/impl/e;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-boolean v1, v1, Lio/appmetrica/analytics/adrevenue/other/impl/e;->a:Z

    if-ne v1, v3, :cond_1

    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    move v1, v2

    :goto_0
    const-string v4, "com.facebook.ads.AdSDKNotificationManager"

    invoke-static {v4}, Lio/appmetrica/analytics/coreutils/internal/reflection/ReflectionUtils;->detectClassExists(Ljava/lang/String;)Z

    move-result v4

    if-eqz v1, :cond_3

    if-eqz v4, :cond_3

    iget-object v1, p0, Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint;->d:Lio/appmetrica/analytics/adrevenue/other/impl/g;

    iget-object v2, v1, Lio/appmetrica/analytics/adrevenue/other/impl/g;->a:Lio/appmetrica/analytics/adrevenue/other/impl/i;

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Lio/appmetrica/analytics/adrevenue/other/impl/i;

    new-instance v4, Lio/appmetrica/analytics/adrevenue/other/impl/h;

    invoke-direct {v4}, Lio/appmetrica/analytics/adrevenue/other/impl/h;-><init>()V

    invoke-direct {v2, v0, v4}, Lio/appmetrica/analytics/adrevenue/other/impl/i;-><init>(Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;Lio/appmetrica/analytics/adrevenue/other/impl/h;)V

    invoke-static {v2}, Lcom/facebook/ads/AdSDKNotificationManager;->addSDKNotificationListener(Lcom/facebook/ads/AdSDKNotificationListener;)V

    iput-object v2, v1, Lio/appmetrica/analytics/adrevenue/other/impl/g;->a:Lio/appmetrica/analytics/adrevenue/other/impl/i;

    :goto_1
    iget-object v0, p0, Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint;->d:Lio/appmetrica/analytics/adrevenue/other/impl/g;

    iget-object v1, v0, Lio/appmetrica/analytics/adrevenue/other/impl/g;->a:Lio/appmetrica/analytics/adrevenue/other/impl/i;

    if-eqz v1, :cond_4

    invoke-static {v1}, Lcom/facebook/ads/AdSDKNotificationManager;->removeSDKNotificationListener(Lcom/facebook/ads/AdSDKNotificationListener;)V

    :cond_4
    const/4 v1, 0x0

    iput-object v1, v0, Lio/appmetrica/analytics/adrevenue/other/impl/g;->a:Lio/appmetrica/analytics/adrevenue/other/impl/i;

    iget-object v0, p0, Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_2
    sget-object v0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0

    throw v0
.end method

.method public static final synthetic access$getBundleConverter$p(Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint;)Lio/appmetrica/analytics/adrevenue/other/impl/d;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint;->e:Lio/appmetrica/analytics/adrevenue/other/impl/d;

    return-object p0
.end method

.method public static final synthetic access$getClientConfig$p(Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint;)Lio/appmetrica/analytics/adrevenue/other/impl/e;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint;->b:Lio/appmetrica/analytics/adrevenue/other/impl/e;

    return-object p0
.end method

.method public static final synthetic access$getConfigUpdateListener$p(Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint;)Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint$configUpdateListener$1;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint;->f:Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint$configUpdateListener$1;

    return-object p0
.end method

.method public static final synthetic access$getLibraryAvailable$p(Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$setClientConfig$p(Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint;Lio/appmetrica/analytics/adrevenue/other/impl/e;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint;->b:Lio/appmetrica/analytics/adrevenue/other/impl/e;

    return-void
.end method

.method public static final synthetic access$updateListenerState(Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint;)V
    .locals 0

    invoke-direct {p0}, Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint;->a()V

    return-void
.end method


# virtual methods
.method public getAdRevenueCollector()Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/AdRevenueCollector;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint;->i:Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint$adRevenueCollector$1;

    return-object p0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint;->g:Ljava/lang/String;

    return-object p0
.end method

.method public getServiceConfigExtensionConfiguration()Lio/appmetrica/analytics/modulesapi/internal/client/ServiceConfigExtensionConfiguration;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/modulesapi/internal/client/ServiceConfigExtensionConfiguration<",
            "Lio/appmetrica/analytics/adrevenue/other/internal/ClientSideAdRevenueOtherConfigWrapper;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint;->h:Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint$serviceConfigExtensionConfiguration$1;

    return-object p0
.end method

.method public initClientSide(Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint;->a:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

    return-void
.end method

.method public onActivated()V
    .locals 0

    invoke-direct {p0}, Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherClientModuleEntryPoint;->a()V

    return-void
.end method
