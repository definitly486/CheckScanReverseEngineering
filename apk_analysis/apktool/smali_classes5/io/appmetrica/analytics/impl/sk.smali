.class public final Lio/appmetrica/analytics/impl/sk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;


# instance fields
.field public final a:Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceLifecycleController;

.field public final b:Lio/appmetrica/analytics/impl/fe;

.field public final c:Lio/appmetrica/analytics/impl/ld;

.field public final d:Lio/appmetrica/analytics/impl/Sk;

.field public final e:Lio/appmetrica/analytics/impl/Pk;

.field public final f:Lio/appmetrica/analytics/impl/K9;

.field public final g:Lio/appmetrica/analytics/impl/C6;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceLifecycleController;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/sk;->a:Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceLifecycleController;

    new-instance p1, Lio/appmetrica/analytics/impl/fe;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/sk;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/fe;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/sk;->b:Lio/appmetrica/analytics/impl/fe;

    new-instance p1, Lio/appmetrica/analytics/impl/ld;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/ld;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/sk;->c:Lio/appmetrica/analytics/impl/ld;

    new-instance p1, Lio/appmetrica/analytics/impl/Sk;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/sk;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lio/appmetrica/analytics/impl/Rk;

    new-instance v2, Lio/appmetrica/analytics/impl/b2;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/b2;-><init>()V

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/Rk;-><init>(Lio/appmetrica/analytics/impl/b2;)V

    invoke-direct {p1, v0, v1}, Lio/appmetrica/analytics/impl/Sk;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Rk;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/sk;->d:Lio/appmetrica/analytics/impl/Sk;

    new-instance p1, Lio/appmetrica/analytics/impl/Pk;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/sk;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Fa;->y()Lio/appmetrica/analytics/impl/mf;

    move-result-object v1

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object v2

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/Fa;->B()Lio/appmetrica/analytics/impl/Ok;

    move-result-object v2

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/sk;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/appmetrica/analytics/impl/Ok;->f(Landroid/content/Context;)Lio/appmetrica/analytics/impl/l7;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lio/appmetrica/analytics/impl/Pk;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Nl;Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/sk;->e:Lio/appmetrica/analytics/impl/Pk;

    new-instance p1, Lio/appmetrica/analytics/impl/K9;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/K9;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/sk;->f:Lio/appmetrica/analytics/impl/K9;

    new-instance p1, Lio/appmetrica/analytics/impl/C6;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/C6;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/sk;->g:Lio/appmetrica/analytics/impl/C6;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/fe;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/sk;->b:Lio/appmetrica/analytics/impl/fe;

    return-object p0
.end method

.method public final b()Lio/appmetrica/analytics/impl/ld;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/sk;->c:Lio/appmetrica/analytics/impl/ld;

    return-object p0
.end method

.method public final c()Lio/appmetrica/analytics/impl/Pk;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/sk;->e:Lio/appmetrica/analytics/impl/Pk;

    return-object p0
.end method

.method public final d()Lio/appmetrica/analytics/impl/Sk;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/sk;->d:Lio/appmetrica/analytics/impl/Sk;

    return-object p0
.end method

.method public final getActivationBarrier()Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ActivationBarrier;
    .locals 0

    sget-object p0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Fa;->B:Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceProvider;

    invoke-virtual {p0}, Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceProvider;->getActivationBarrier()Lio/appmetrica/analytics/coreutils/internal/services/WaitForActivationDelayBarrier;

    move-result-object p0

    return-object p0
.end method

.method public final getActiveNetworkTypeProvider()Lio/appmetrica/analytics/coreapi/internal/system/ActiveNetworkTypeProvider;
    .locals 0

    sget-object p0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Fa;->G:Lio/appmetrica/analytics/impl/j;

    return-object p0
.end method

.method public final getApplicationStateProvider()Lio/appmetrica/analytics/coreapi/internal/servicecomponents/applicationstate/ApplicationStateProvider;
    .locals 0

    sget-object p0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Fa;->l()Lio/appmetrica/analytics/impl/Ub;

    move-result-object p0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ub;->b:Lio/appmetrica/analytics/impl/v2;

    return-object p0
.end method

.method public final getChargeTypeProvider()Lio/appmetrica/analytics/coreapi/internal/servicecomponents/batteryinfo/ChargeTypeProvider;
    .locals 3

    sget-object p0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->e:Lio/appmetrica/analytics/impl/e3;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->e:Lio/appmetrica/analytics/impl/e3;

    if-nez v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/impl/e3;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Fa;->d:Lio/appmetrica/analytics/impl/Ak;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Ak;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v1

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Fa;->l()Lio/appmetrica/analytics/impl/Ub;

    move-result-object v2

    iget-object v2, v2, Lio/appmetrica/analytics/impl/Ub;->a:Lio/appmetrica/analytics/impl/b3;

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/e3;-><init>(Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;Lio/appmetrica/analytics/impl/b3;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->e:Lio/appmetrica/analytics/impl/e3;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    sget-object p0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Fa;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final getCryptoProvider()Lio/appmetrica/analytics/coreapi/internal/crypto/CryptoProvider;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/sk;->g:Lio/appmetrica/analytics/impl/C6;

    return-object p0
.end method

.method public final getDataSendingRestrictionController()Lio/appmetrica/analytics/coreapi/internal/control/DataSendingRestrictionController;
    .locals 0

    sget-object p0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Fa;->h()Lio/appmetrica/analytics/impl/S6;

    move-result-object p0

    return-object p0
.end method

.method public final getExecutorProvider()Lio/appmetrica/analytics/modulesapi/internal/common/ExecutorProvider;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/sk;->f:Lio/appmetrica/analytics/impl/K9;

    return-object p0
.end method

.method public final getFirstExecutionConditionService()Lio/appmetrica/analytics/coreapi/internal/servicecomponents/FirstExecutionConditionService;
    .locals 0

    sget-object p0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Fa;->B:Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceProvider;

    invoke-virtual {p0}, Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceProvider;->getFirstExecutionService()Lio/appmetrica/analytics/coreutils/internal/services/FirstExecutionConditionServiceImpl;

    move-result-object p0

    return-object p0
.end method

.method public final getLocationServiceApi()Lio/appmetrica/analytics/modulesapi/internal/service/LocationServiceApi;
    .locals 0

    sget-object p0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Fa;->m()Lio/appmetrica/analytics/impl/Zb;

    move-result-object p0

    return-object p0
.end method

.method public final getModuleServiceLifecycleController()Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceLifecycleController;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/sk;->a:Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceLifecycleController;

    return-object p0
.end method

.method public final getNetworkContext()Lio/appmetrica/analytics/modulesapi/internal/service/ServiceNetworkContext;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/sk;->b:Lio/appmetrica/analytics/impl/fe;

    return-object p0
.end method

.method public final getPermissionExtractor()Lio/appmetrica/analytics/coreapi/internal/system/PermissionExtractor;
    .locals 0

    sget-object p0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Fa;->j()Lio/appmetrica/analytics/coreapi/internal/system/PermissionExtractor;

    move-result-object p0

    return-object p0
.end method

.method public final getPlatformIdentifiers()Lio/appmetrica/analytics/coreapi/internal/identifiers/PlatformIdentifiers;
    .locals 0

    sget-object p0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Fa;->s()Lio/appmetrica/analytics/coreapi/internal/identifiers/PlatformIdentifiers;

    move-result-object p0

    return-object p0
.end method

.method public final getSdkEnvironmentProvider()Lio/appmetrica/analytics/coreapi/internal/servicecomponents/SdkEnvironmentProvider;
    .locals 0

    sget-object p0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Fa;->v()Lio/appmetrica/analytics/impl/sj;

    move-result-object p0

    return-object p0
.end method

.method public final getSelfReporter()Lio/appmetrica/analytics/modulesapi/internal/common/ModuleSelfReporter;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/sk;->c:Lio/appmetrica/analytics/impl/ld;

    return-object p0
.end method

.method public final getServiceModuleReporterComponentLifecycle()Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleReporterComponentLifecycle;
    .locals 0

    sget-object p0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Fa;->F:Lio/appmetrica/analytics/impl/Mk;

    return-object p0
.end method

.method public final getServiceStorageProvider()Lio/appmetrica/analytics/modulesapi/internal/service/ServiceStorageProvider;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/sk;->e:Lio/appmetrica/analytics/impl/Pk;

    return-object p0
.end method

.method public final getServiceWakeLock()Lio/appmetrica/analytics/modulesapi/internal/service/ServiceWakeLock;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/sk;->d:Lio/appmetrica/analytics/impl/Sk;

    return-object p0
.end method
