.class public final Lio/appmetrica/analytics/location/internal/LocationClientImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/locationapi/internal/LocationClient;


# instance fields
.field private a:Lio/appmetrica/analytics/location/impl/k;

.field private final b:Lio/appmetrica/analytics/location/impl/g;

.field private final c:Lio/appmetrica/analytics/location/impl/o;

.field private d:Lio/appmetrica/analytics/location/impl/i;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/location/impl/q;

    invoke-direct {v0}, Lio/appmetrica/analytics/location/impl/q;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/location/impl/g;

    invoke-direct {v1, v0}, Lio/appmetrica/analytics/location/impl/g;-><init>(Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProvider;)V

    iput-object v1, p0, Lio/appmetrica/analytics/location/internal/LocationClientImpl;->b:Lio/appmetrica/analytics/location/impl/g;

    new-instance v1, Lio/appmetrica/analytics/location/impl/o;

    invoke-direct {v1, v0}, Lio/appmetrica/analytics/location/impl/o;-><init>(Lio/appmetrica/analytics/location/impl/q;)V

    iput-object v1, p0, Lio/appmetrica/analytics/location/internal/LocationClientImpl;->c:Lio/appmetrica/analytics/location/impl/o;

    new-instance v0, Lio/appmetrica/analytics/location/impl/i;

    invoke-direct {v0}, Lio/appmetrica/analytics/location/impl/i;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/location/internal/LocationClientImpl;->d:Lio/appmetrica/analytics/location/impl/i;

    return-void
.end method


# virtual methods
.method public getLastKnownExtractorProviderFactory()Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProviderFactory;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/location/internal/LocationClientImpl;->b:Lio/appmetrica/analytics/location/impl/g;

    return-object p0
.end method

.method public getLocationReceiverProviderFactory()Lio/appmetrica/analytics/locationapi/internal/LocationReceiverProviderFactory;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/location/internal/LocationClientImpl;->c:Lio/appmetrica/analytics/location/impl/o;

    return-object p0
.end method

.method public declared-synchronized getSystemLocation()Landroid/location/Location;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/location/internal/LocationClientImpl;->a:Lio/appmetrica/analytics/location/impl/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/appmetrica/analytics/location/impl/k;->a()Landroid/location/Location;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getUserLocation()Landroid/location/Location;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/location/internal/LocationClientImpl;->a:Lio/appmetrica/analytics/location/impl/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/appmetrica/analytics/location/impl/k;->b()Landroid/location/Location;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized init(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/system/PermissionExtractor;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/appmetrica/analytics/coreapi/internal/system/PermissionExtractor;",
            "Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;",
            "Ljava/util/List<",
            "+",
            "Lio/appmetrica/analytics/coreapi/internal/backport/Consumer<",
            "Landroid/location/Location;",
            ">;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/location/internal/LocationClientImpl;->a:Lio/appmetrica/analytics/location/impl/k;

    if-nez v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/location/impl/k;

    new-instance v1, Lio/appmetrica/analytics/location/impl/p;

    iget-object v2, p0, Lio/appmetrica/analytics/location/internal/LocationClientImpl;->d:Lio/appmetrica/analytics/location/impl/i;

    invoke-direct {v1, p4, v2}, Lio/appmetrica/analytics/location/impl/p;-><init>(Ljava/util/List;Lio/appmetrica/analytics/location/impl/i;)V

    invoke-direct {v0, p1, p2, p3, v1}, Lio/appmetrica/analytics/location/impl/k;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/system/PermissionExtractor;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;Lio/appmetrica/analytics/location/impl/p;)V

    iput-object v0, p0, Lio/appmetrica/analytics/location/internal/LocationClientImpl;->a:Lio/appmetrica/analytics/location/impl/k;
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

.method public declared-synchronized registerSystemLocationSource(Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProvider;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/location/internal/LocationClientImpl;->a:Lio/appmetrica/analytics/location/impl/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/location/impl/k;->a(Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProvider;)V
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

.method public declared-synchronized registerSystemLocationSource(Lio/appmetrica/analytics/locationapi/internal/LocationReceiverProvider;)V
    .locals 1

    monitor-enter p0

    .line 15
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/location/internal/LocationClientImpl;->a:Lio/appmetrica/analytics/location/impl/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/location/impl/k;->a(Lio/appmetrica/analytics/locationapi/internal/LocationReceiverProvider;)V
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

.method public declared-synchronized startLocationTracking()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/location/internal/LocationClientImpl;->a:Lio/appmetrica/analytics/location/impl/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/appmetrica/analytics/location/impl/k;->startLocationTracking()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

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

    throw v0
.end method

.method public declared-synchronized stopLocationTracking()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/location/internal/LocationClientImpl;->a:Lio/appmetrica/analytics/location/impl/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/appmetrica/analytics/location/impl/k;->stopLocationTracking()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

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

    throw v0
.end method

.method public declared-synchronized unregisterSystemLocationSource(Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProvider;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/location/internal/LocationClientImpl;->a:Lio/appmetrica/analytics/location/impl/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/location/impl/k;->b(Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProvider;)V
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

.method public declared-synchronized unregisterSystemLocationSource(Lio/appmetrica/analytics/locationapi/internal/LocationReceiverProvider;)V
    .locals 1

    monitor-enter p0

    .line 15
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/location/internal/LocationClientImpl;->a:Lio/appmetrica/analytics/location/impl/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/location/impl/k;->b(Lio/appmetrica/analytics/locationapi/internal/LocationReceiverProvider;)V
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

.method public declared-synchronized updateCacheArguments(Lio/appmetrica/analytics/locationapi/internal/CacheArguments;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/location/internal/LocationClientImpl;->d:Lio/appmetrica/analytics/location/impl/i;

    new-instance v1, Lio/appmetrica/analytics/location/impl/i;

    iget-object v0, v0, Lio/appmetrica/analytics/location/impl/i;->a:Lio/appmetrica/analytics/locationapi/internal/LocationFilter;

    invoke-direct {v1, v0, p1}, Lio/appmetrica/analytics/location/impl/i;-><init>(Lio/appmetrica/analytics/locationapi/internal/LocationFilter;Lio/appmetrica/analytics/locationapi/internal/CacheArguments;)V

    iput-object v1, p0, Lio/appmetrica/analytics/location/internal/LocationClientImpl;->d:Lio/appmetrica/analytics/location/impl/i;

    iget-object p1, p0, Lio/appmetrica/analytics/location/internal/LocationClientImpl;->a:Lio/appmetrica/analytics/location/impl/k;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lio/appmetrica/analytics/location/impl/k;->d:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v2, Lio/appmetrica/analytics/location/impl/j;

    invoke-direct {v2, p1, v1}, Lio/appmetrica/analytics/location/impl/j;-><init>(Lio/appmetrica/analytics/location/impl/k;Lio/appmetrica/analytics/location/impl/i;)V

    invoke-interface {v0, v2}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V
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

.method public declared-synchronized updateLocationFilter(Lio/appmetrica/analytics/locationapi/internal/LocationFilter;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/location/internal/LocationClientImpl;->d:Lio/appmetrica/analytics/location/impl/i;

    new-instance v1, Lio/appmetrica/analytics/location/impl/i;

    iget-object v0, v0, Lio/appmetrica/analytics/location/impl/i;->b:Lio/appmetrica/analytics/locationapi/internal/CacheArguments;

    invoke-direct {v1, p1, v0}, Lio/appmetrica/analytics/location/impl/i;-><init>(Lio/appmetrica/analytics/locationapi/internal/LocationFilter;Lio/appmetrica/analytics/locationapi/internal/CacheArguments;)V

    iput-object v1, p0, Lio/appmetrica/analytics/location/internal/LocationClientImpl;->d:Lio/appmetrica/analytics/location/impl/i;

    iget-object p1, p0, Lio/appmetrica/analytics/location/internal/LocationClientImpl;->a:Lio/appmetrica/analytics/location/impl/k;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lio/appmetrica/analytics/location/impl/k;->d:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v2, Lio/appmetrica/analytics/location/impl/j;

    invoke-direct {v2, p1, v1}, Lio/appmetrica/analytics/location/impl/j;-><init>(Lio/appmetrica/analytics/location/impl/k;Lio/appmetrica/analytics/location/impl/i;)V

    invoke-interface {v0, v2}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V
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

.method public declared-synchronized updateUserLocation(Landroid/location/Location;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/location/internal/LocationClientImpl;->a:Lio/appmetrica/analytics/location/impl/k;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/location/impl/k;->a(Landroid/location/Location;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
