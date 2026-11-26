.class public final Lio/appmetrica/analytics/remotepermissions/internal/RemotePermissionsModuleEntryPoint;
.super Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/modulesapi/internal/common/AskForPermissionStrategyModuleProvider;
.implements Lio/appmetrica/analytics/modulesapi/internal/service/RemoteConfigUpdateListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint<",
        "Lio/appmetrica/analytics/remotepermissions/internal/ServiceSideRemotePermissionsConfigWrapper;",
        ">;",
        "Lio/appmetrica/analytics/modulesapi/internal/common/AskForPermissionStrategyModuleProvider;",
        "Lio/appmetrica/analytics/modulesapi/internal/service/RemoteConfigUpdateListener<",
        "Lio/appmetrica/analytics/remotepermissions/internal/ServiceSideRemotePermissionsConfigWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lio/appmetrica/analytics/remotepermissions/impl/g;

.field private final b:Lio/appmetrica/analytics/remotepermissions/impl/f;

.field private final c:Lio/appmetrica/analytics/remotepermissions/internal/RemotePermissionsModuleEntryPoint;

.field private final d:Lio/appmetrica/analytics/remotepermissions/impl/a;

.field private final e:Ljava/lang/String;

.field private final f:Lio/appmetrica/analytics/remotepermissions/internal/RemotePermissionsModuleEntryPoint$remoteConfigExtensionConfiguration$1;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/remotepermissions/impl/g;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v2}, Lio/appmetrica/analytics/remotepermissions/impl/g;-><init>(Lio/appmetrica/analytics/remotepermissions/impl/c;Lio/appmetrica/analytics/remotepermissions/impl/b;ILjh2;)V

    iput-object v0, p0, Lio/appmetrica/analytics/remotepermissions/internal/RemotePermissionsModuleEntryPoint;->a:Lio/appmetrica/analytics/remotepermissions/impl/g;

    new-instance v0, Lio/appmetrica/analytics/remotepermissions/impl/f;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1, v2}, Lio/appmetrica/analytics/remotepermissions/impl/f;-><init>(Lio/appmetrica/analytics/remotepermissions/impl/c;ILjh2;)V

    iput-object v0, p0, Lio/appmetrica/analytics/remotepermissions/internal/RemotePermissionsModuleEntryPoint;->b:Lio/appmetrica/analytics/remotepermissions/impl/f;

    iput-object p0, p0, Lio/appmetrica/analytics/remotepermissions/internal/RemotePermissionsModuleEntryPoint;->c:Lio/appmetrica/analytics/remotepermissions/internal/RemotePermissionsModuleEntryPoint;

    new-instance v0, Lio/appmetrica/analytics/remotepermissions/impl/a;

    invoke-direct {v0}, Lio/appmetrica/analytics/remotepermissions/impl/a;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/remotepermissions/internal/RemotePermissionsModuleEntryPoint;->d:Lio/appmetrica/analytics/remotepermissions/impl/a;

    const-string v0, "rp"

    iput-object v0, p0, Lio/appmetrica/analytics/remotepermissions/internal/RemotePermissionsModuleEntryPoint;->e:Ljava/lang/String;

    new-instance v0, Lio/appmetrica/analytics/remotepermissions/internal/RemotePermissionsModuleEntryPoint$remoteConfigExtensionConfiguration$1;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/remotepermissions/internal/RemotePermissionsModuleEntryPoint$remoteConfigExtensionConfiguration$1;-><init>(Lio/appmetrica/analytics/remotepermissions/internal/RemotePermissionsModuleEntryPoint;)V

    iput-object v0, p0, Lio/appmetrica/analytics/remotepermissions/internal/RemotePermissionsModuleEntryPoint;->f:Lio/appmetrica/analytics/remotepermissions/internal/RemotePermissionsModuleEntryPoint$remoteConfigExtensionConfiguration$1;

    return-void
.end method

.method public static final synthetic access$getConverter$p(Lio/appmetrica/analytics/remotepermissions/internal/RemotePermissionsModuleEntryPoint;)Lio/appmetrica/analytics/remotepermissions/impl/f;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/remotepermissions/internal/RemotePermissionsModuleEntryPoint;->b:Lio/appmetrica/analytics/remotepermissions/impl/f;

    return-object p0
.end method

.method public static final synthetic access$getListener$p(Lio/appmetrica/analytics/remotepermissions/internal/RemotePermissionsModuleEntryPoint;)Lio/appmetrica/analytics/modulesapi/internal/service/RemoteConfigUpdateListener;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/remotepermissions/internal/RemotePermissionsModuleEntryPoint;->c:Lio/appmetrica/analytics/remotepermissions/internal/RemotePermissionsModuleEntryPoint;

    return-object p0
.end method

.method public static final synthetic access$getParser$p(Lio/appmetrica/analytics/remotepermissions/internal/RemotePermissionsModuleEntryPoint;)Lio/appmetrica/analytics/remotepermissions/impl/g;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/remotepermissions/internal/RemotePermissionsModuleEntryPoint;->a:Lio/appmetrica/analytics/remotepermissions/impl/g;

    return-object p0
.end method


# virtual methods
.method public getAskForPermissionStrategy()Lio/appmetrica/analytics/coreapi/internal/permission/PermissionStrategy;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/remotepermissions/internal/RemotePermissionsModuleEntryPoint;->d:Lio/appmetrica/analytics/remotepermissions/impl/a;

    return-object p0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/remotepermissions/internal/RemotePermissionsModuleEntryPoint;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getRemoteConfigExtensionConfiguration()Lio/appmetrica/analytics/modulesapi/internal/service/RemoteConfigExtensionConfiguration;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/modulesapi/internal/service/RemoteConfigExtensionConfiguration<",
            "Lio/appmetrica/analytics/remotepermissions/internal/ServiceSideRemotePermissionsConfigWrapper;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/remotepermissions/internal/RemotePermissionsModuleEntryPoint;->f:Lio/appmetrica/analytics/remotepermissions/internal/RemotePermissionsModuleEntryPoint$remoteConfigExtensionConfiguration$1;

    return-object p0
.end method

.method public initServiceSide(Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;Lio/appmetrica/analytics/modulesapi/internal/service/ModuleRemoteConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;",
            "Lio/appmetrica/analytics/modulesapi/internal/service/ModuleRemoteConfig<",
            "Lio/appmetrica/analytics/remotepermissions/internal/ServiceSideRemotePermissionsConfigWrapper;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/remotepermissions/internal/RemotePermissionsModuleEntryPoint;->d:Lio/appmetrica/analytics/remotepermissions/impl/a;

    invoke-interface {p2}, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleRemoteConfig;->getFeaturesConfig()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/appmetrica/analytics/remotepermissions/internal/ServiceSideRemotePermissionsConfigWrapper;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/appmetrica/analytics/remotepermissions/internal/ServiceSideRemotePermissionsConfigWrapper;->getConfig$remote_permissions_release()Lio/appmetrica/analytics/remotepermissions/impl/e;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lio/appmetrica/analytics/remotepermissions/impl/e;->a:Ljava/util/Set;

    if-nez p1, :cond_1

    :cond_0
    sget-object p1, Lox2;->b:Lox2;

    :cond_1
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lio/appmetrica/analytics/remotepermissions/impl/a;->a:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onRemoteConfigUpdated(Lio/appmetrica/analytics/modulesapi/internal/service/ModuleRemoteConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/modulesapi/internal/service/ModuleRemoteConfig<",
            "Lio/appmetrica/analytics/remotepermissions/internal/ServiceSideRemotePermissionsConfigWrapper;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/remotepermissions/internal/RemotePermissionsModuleEntryPoint;->d:Lio/appmetrica/analytics/remotepermissions/impl/a;

    invoke-interface {p1}, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleRemoteConfig;->getFeaturesConfig()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/appmetrica/analytics/remotepermissions/internal/ServiceSideRemotePermissionsConfigWrapper;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/appmetrica/analytics/remotepermissions/internal/ServiceSideRemotePermissionsConfigWrapper;->getConfig$remote_permissions_release()Lio/appmetrica/analytics/remotepermissions/impl/e;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lio/appmetrica/analytics/remotepermissions/impl/e;->a:Ljava/util/Set;

    if-nez p1, :cond_1

    :cond_0
    sget-object p1, Lox2;->b:Lox2;

    :cond_1
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lio/appmetrica/analytics/remotepermissions/impl/a;->a:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
