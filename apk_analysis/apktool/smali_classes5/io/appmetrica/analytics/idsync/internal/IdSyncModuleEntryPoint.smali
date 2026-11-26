.class public final Lio/appmetrica/analytics/idsync/internal/IdSyncModuleEntryPoint;
.super Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/modulesapi/internal/service/RemoteConfigUpdateListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint<",
        "Lio/appmetrica/analytics/idsync/internal/IdSyncConfigWrapper;",
        ">;",
        "Lio/appmetrica/analytics/modulesapi/internal/service/RemoteConfigUpdateListener<",
        "Lio/appmetrica/analytics/idsync/internal/IdSyncConfigWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lio/appmetrica/analytics/idsync/impl/k;

.field private final b:Lio/appmetrica/analytics/idsync/impl/g;

.field private final c:Lio/appmetrica/analytics/idsync/impl/h;

.field private final d:Ljava/lang/String;

.field private final e:Lio/appmetrica/analytics/idsync/internal/IdSyncModuleEntryPoint$remoteConfigExtensionConfiguration$1;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/idsync/impl/f;

    invoke-direct {v0}, Lio/appmetrica/analytics/idsync/impl/f;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/idsync/impl/e;

    invoke-direct {v1, v0}, Lio/appmetrica/analytics/idsync/impl/e;-><init>(Lio/appmetrica/analytics/idsync/impl/f;)V

    new-instance v2, Lio/appmetrica/analytics/idsync/impl/d;

    invoke-direct {v2, v0}, Lio/appmetrica/analytics/idsync/impl/d;-><init>(Lio/appmetrica/analytics/idsync/impl/f;)V

    new-instance v0, Lio/appmetrica/analytics/idsync/impl/g;

    invoke-direct {v0, v2}, Lio/appmetrica/analytics/idsync/impl/g;-><init>(Lio/appmetrica/analytics/idsync/impl/d;)V

    iput-object v0, p0, Lio/appmetrica/analytics/idsync/internal/IdSyncModuleEntryPoint;->b:Lio/appmetrica/analytics/idsync/impl/g;

    new-instance v0, Lio/appmetrica/analytics/idsync/impl/h;

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/idsync/impl/h;-><init>(Lio/appmetrica/analytics/idsync/impl/e;)V

    iput-object v0, p0, Lio/appmetrica/analytics/idsync/internal/IdSyncModuleEntryPoint;->c:Lio/appmetrica/analytics/idsync/impl/h;

    const-string v0, "id-sync"

    iput-object v0, p0, Lio/appmetrica/analytics/idsync/internal/IdSyncModuleEntryPoint;->d:Ljava/lang/String;

    new-instance v0, Lio/appmetrica/analytics/idsync/internal/IdSyncModuleEntryPoint$remoteConfigExtensionConfiguration$1;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/idsync/internal/IdSyncModuleEntryPoint$remoteConfigExtensionConfiguration$1;-><init>(Lio/appmetrica/analytics/idsync/internal/IdSyncModuleEntryPoint;)V

    iput-object v0, p0, Lio/appmetrica/analytics/idsync/internal/IdSyncModuleEntryPoint;->e:Lio/appmetrica/analytics/idsync/internal/IdSyncModuleEntryPoint$remoteConfigExtensionConfiguration$1;

    return-void
.end method

.method public static final synthetic access$getWrapperJsonParser$p(Lio/appmetrica/analytics/idsync/internal/IdSyncModuleEntryPoint;)Lio/appmetrica/analytics/idsync/impl/g;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/idsync/internal/IdSyncModuleEntryPoint;->b:Lio/appmetrica/analytics/idsync/impl/g;

    return-object p0
.end method

.method public static final synthetic access$getWrapperProtobufConverter$p(Lio/appmetrica/analytics/idsync/internal/IdSyncModuleEntryPoint;)Lio/appmetrica/analytics/idsync/impl/h;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/idsync/internal/IdSyncModuleEntryPoint;->c:Lio/appmetrica/analytics/idsync/impl/h;

    return-object p0
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/idsync/internal/IdSyncModuleEntryPoint;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getRemoteConfigExtensionConfiguration()Lio/appmetrica/analytics/modulesapi/internal/service/RemoteConfigExtensionConfiguration;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/modulesapi/internal/service/RemoteConfigExtensionConfiguration<",
            "Lio/appmetrica/analytics/idsync/internal/IdSyncConfigWrapper;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/idsync/internal/IdSyncModuleEntryPoint;->e:Lio/appmetrica/analytics/idsync/internal/IdSyncModuleEntryPoint$remoteConfigExtensionConfiguration$1;

    return-object p0
.end method

.method public initServiceSide(Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;Lio/appmetrica/analytics/modulesapi/internal/service/ModuleRemoteConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;",
            "Lio/appmetrica/analytics/modulesapi/internal/service/ModuleRemoteConfig<",
            "Lio/appmetrica/analytics/idsync/internal/IdSyncConfigWrapper;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/idsync/internal/IdSyncModuleEntryPoint;->a:Lio/appmetrica/analytics/idsync/impl/k;

    if-nez v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/idsync/impl/k;

    invoke-interface {p2}, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleRemoteConfig;->getIdentifiers()Lio/appmetrica/analytics/coreapi/internal/identifiers/SdkIdentifiers;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lio/appmetrica/analytics/idsync/impl/k;-><init>(Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;Lio/appmetrica/analytics/coreapi/internal/identifiers/SdkIdentifiers;)V

    iput-object v0, p0, Lio/appmetrica/analytics/idsync/internal/IdSyncModuleEntryPoint;->a:Lio/appmetrica/analytics/idsync/impl/k;

    invoke-interface {p2}, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleRemoteConfig;->getFeaturesConfig()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/appmetrica/analytics/idsync/internal/IdSyncConfigWrapper;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/appmetrica/analytics/idsync/internal/IdSyncConfigWrapper;->getConfig$id_sync_release()Lio/appmetrica/analytics/idsync/impl/c;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p2}, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleRemoteConfig;->getIdentifiers()Lio/appmetrica/analytics/coreapi/internal/identifiers/SdkIdentifiers;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lio/appmetrica/analytics/idsync/impl/k;->a(Lio/appmetrica/analytics/idsync/impl/c;Lio/appmetrica/analytics/coreapi/internal/identifiers/SdkIdentifiers;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onRemoteConfigUpdated(Lio/appmetrica/analytics/modulesapi/internal/service/ModuleRemoteConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/modulesapi/internal/service/ModuleRemoteConfig<",
            "Lio/appmetrica/analytics/idsync/internal/IdSyncConfigWrapper;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleRemoteConfig;->getFeaturesConfig()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/idsync/internal/IdSyncConfigWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/appmetrica/analytics/idsync/internal/IdSyncConfigWrapper;->getConfig$id_sync_release()Lio/appmetrica/analytics/idsync/impl/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/appmetrica/analytics/idsync/internal/IdSyncModuleEntryPoint;->a:Lio/appmetrica/analytics/idsync/impl/k;

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleRemoteConfig;->getIdentifiers()Lio/appmetrica/analytics/coreapi/internal/identifiers/SdkIdentifiers;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lio/appmetrica/analytics/idsync/impl/k;->a(Lio/appmetrica/analytics/idsync/impl/c;Lio/appmetrica/analytics/coreapi/internal/identifiers/SdkIdentifiers;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
