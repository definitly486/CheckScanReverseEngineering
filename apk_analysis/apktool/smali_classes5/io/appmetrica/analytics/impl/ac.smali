.class public final Lio/appmetrica/analytics/impl/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Zb;
.implements Lio/appmetrica/analytics/impl/Am;
.implements Lio/appmetrica/analytics/locationapi/internal/LocationProvider;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/impl/ec;

.field public final c:Lio/appmetrica/analytics/locationapi/internal/LocationClient;

.field public final d:Lio/appmetrica/analytics/impl/Ml;

.field public final e:Lio/appmetrica/analytics/impl/Nk;

.field public final f:Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProviderFactory;

.field public final g:Lio/appmetrica/analytics/locationapi/internal/LocationReceiverProviderFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/ec;Lio/appmetrica/analytics/locationapi/internal/LocationClient;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/ac;->a:Landroid/content/Context;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/ac;->b:Lio/appmetrica/analytics/impl/ec;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/ac;->c:Lio/appmetrica/analytics/locationapi/internal/LocationClient;

    new-instance p1, Lio/appmetrica/analytics/impl/jc;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/jc;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/Ml;

    new-instance v1, Lio/appmetrica/analytics/impl/u5;

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object v2

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/Fa;->p()Lio/appmetrica/analytics/impl/Nk;

    move-result-object v2

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/Nk;->getAskForPermissionStrategy()Lio/appmetrica/analytics/coreapi/internal/permission/PermissionStrategy;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lio/appmetrica/analytics/coreapi/internal/permission/PermissionStrategy;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-direct {v1, v3}, Lio/appmetrica/analytics/impl/u5;-><init>([Lio/appmetrica/analytics/coreapi/internal/permission/PermissionStrategy;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Ml;-><init>(Lio/appmetrica/analytics/coreapi/internal/permission/PermissionStrategy;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/ac;->d:Lio/appmetrica/analytics/impl/Ml;

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Fa;->p()Lio/appmetrica/analytics/impl/Nk;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/ac;->e:Lio/appmetrica/analytics/impl/Nk;

    invoke-static {p2, p1}, Lio/appmetrica/analytics/impl/dc;->a(Lio/appmetrica/analytics/impl/ec;Lio/appmetrica/analytics/locationapi/internal/LocationControllerObserver;)V

    invoke-static {p2, p3}, Lio/appmetrica/analytics/impl/dc;->a(Lio/appmetrica/analytics/impl/ec;Lio/appmetrica/analytics/locationapi/internal/LocationControllerObserver;)V

    invoke-interface {p3}, Lio/appmetrica/analytics/locationapi/internal/LocationClient;->getLastKnownExtractorProviderFactory()Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProviderFactory;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/ac;->f:Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProviderFactory;

    invoke-interface {p3}, Lio/appmetrica/analytics/locationapi/internal/LocationClient;->getLocationReceiverProviderFactory()Lio/appmetrica/analytics/locationapi/internal/LocationReceiverProviderFactory;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/ac;->g:Lio/appmetrica/analytics/locationapi/internal/LocationReceiverProviderFactory;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/Ml;
    .locals 0

    .line 20
    iget-object p0, p0, Lio/appmetrica/analytics/impl/ac;->d:Lio/appmetrica/analytics/impl/Ml;

    return-object p0
.end method

.method public final a(Landroid/location/Location;)V
    .locals 0

    .line 23
    iget-object p0, p0, Lio/appmetrica/analytics/impl/ac;->c:Lio/appmetrica/analytics/locationapi/internal/LocationClient;

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/locationapi/internal/LocationClient;->updateUserLocation(Landroid/location/Location;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/vm;)V
    .locals 4

    iget-object p1, p1, Lio/appmetrica/analytics/impl/vm;->x:Lio/appmetrica/analytics/impl/q3;

    if-eqz p1, :cond_0

    iget-wide v0, p1, Lio/appmetrica/analytics/impl/q3;->a:J

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ac;->c:Lio/appmetrica/analytics/locationapi/internal/LocationClient;

    new-instance p1, Lio/appmetrica/analytics/locationapi/internal/CacheArguments;

    const-wide/16 v2, 0x2

    mul-long/2addr v2, v0

    invoke-direct {p1, v0, v1, v2, v3}, Lio/appmetrica/analytics/locationapi/internal/CacheArguments;-><init>(JJ)V

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/locationapi/internal/LocationClient;->updateCacheArguments(Lio/appmetrica/analytics/locationapi/internal/CacheArguments;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    .line 21
    iget-object p0, p0, Lio/appmetrica/analytics/impl/ac;->b:Lio/appmetrica/analytics/impl/ec;

    check-cast p0, Lio/appmetrica/analytics/impl/hc;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/hc;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 22
    iget-object p0, p0, Lio/appmetrica/analytics/impl/ac;->b:Lio/appmetrica/analytics/impl/ec;

    check-cast p0, Lio/appmetrica/analytics/impl/hc;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/hc;->a(Z)V

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ac;->b:Lio/appmetrica/analytics/impl/ec;

    check-cast p0, Lio/appmetrica/analytics/impl/hc;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/hc;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final getLastKnownExtractorProviderFactory()Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProviderFactory;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ac;->f:Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProviderFactory;

    return-object p0
.end method

.method public final getLocationReceiverProviderFactory()Lio/appmetrica/analytics/locationapi/internal/LocationReceiverProviderFactory;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ac;->g:Lio/appmetrica/analytics/locationapi/internal/LocationReceiverProviderFactory;

    return-object p0
.end method

.method public final getPermissionExtractor()Lio/appmetrica/analytics/coreapi/internal/system/PermissionExtractor;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ac;->d:Lio/appmetrica/analytics/impl/Ml;

    return-object p0
.end method

.method public final getSystemLocation()Landroid/location/Location;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ac;->c:Lio/appmetrica/analytics/locationapi/internal/LocationClient;

    invoke-interface {p0}, Lio/appmetrica/analytics/locationapi/internal/LocationProvider;->getSystemLocation()Landroid/location/Location;

    move-result-object p0

    return-object p0
.end method

.method public final getUserLocation()Landroid/location/Location;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ac;->c:Lio/appmetrica/analytics/locationapi/internal/LocationClient;

    invoke-interface {p0}, Lio/appmetrica/analytics/locationapi/internal/LocationProvider;->getUserLocation()Landroid/location/Location;

    move-result-object p0

    return-object p0
.end method

.method public final init()V
    .locals 5

    iget-object v0, p0, Lio/appmetrica/analytics/impl/ac;->c:Lio/appmetrica/analytics/locationapi/internal/LocationClient;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/ac;->a:Landroid/content/Context;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/ac;->d:Lio/appmetrica/analytics/impl/Ml;

    sget-object v3, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    iget-object v3, v3, Lio/appmetrica/analytics/impl/Fa;->d:Lio/appmetrica/analytics/impl/Ak;

    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/Ak;->c()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v3

    iget-object v4, p0, Lio/appmetrica/analytics/impl/ac;->e:Lio/appmetrica/analytics/impl/Nk;

    invoke-virtual {v4}, Lio/appmetrica/analytics/impl/Nk;->d()Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lio/appmetrica/analytics/locationapi/internal/LocationClient;->init(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/system/PermissionExtractor;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;Ljava/util/List;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/ac;->e:Lio/appmetrica/analytics/impl/Nk;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Nk;->e()Lio/appmetrica/analytics/modulesapi/internal/service/ModuleLocationSourcesServiceController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleLocationSourcesServiceController;->init()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ac;->c:Lio/appmetrica/analytics/locationapi/internal/LocationClient;

    invoke-interface {v0}, Lio/appmetrica/analytics/locationapi/internal/LocationClient;->getLastKnownExtractorProviderFactory()Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProviderFactory;

    move-result-object v1

    invoke-interface {v1}, Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProviderFactory;->getGplLastKnownLocationExtractorProvider()Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProvider;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/locationapi/internal/LocationClient;->registerSystemLocationSource(Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProvider;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/ac;->c:Lio/appmetrica/analytics/locationapi/internal/LocationClient;

    invoke-interface {v0}, Lio/appmetrica/analytics/locationapi/internal/LocationClient;->getLastKnownExtractorProviderFactory()Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProviderFactory;

    move-result-object v1

    invoke-interface {v1}, Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProviderFactory;->getNetworkLastKnownLocationExtractorProvider()Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProvider;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/locationapi/internal/LocationClient;->registerSystemLocationSource(Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProvider;)V

    :goto_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ac;->b:Lio/appmetrica/analytics/impl/ec;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/ac;->e:Lio/appmetrica/analytics/impl/Nk;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Nk;->f()Lio/appmetrica/analytics/coreapi/internal/control/Toggle;

    move-result-object v1

    check-cast v0, Lio/appmetrica/analytics/impl/hc;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/hc;->a(Lio/appmetrica/analytics/coreapi/internal/control/Toggle;)V

    sget-object v0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Fa;->u:Lio/appmetrica/analytics/impl/xm;

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/impl/xm;->a(Lio/appmetrica/analytics/impl/Am;)V

    return-void
.end method

.method public final registerControllerObserver(Lio/appmetrica/analytics/locationapi/internal/LocationControllerObserver;)V
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ac;->b:Lio/appmetrica/analytics/impl/ec;

    check-cast p0, Lio/appmetrica/analytics/impl/hc;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/impl/hc;->a(Lio/appmetrica/analytics/locationapi/internal/LocationControllerObserver;Z)V

    return-void
.end method

.method public final registerSource(Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProvider;)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ac;->c:Lio/appmetrica/analytics/locationapi/internal/LocationClient;

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/locationapi/internal/LocationClient;->registerSystemLocationSource(Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProvider;)V

    return-void
.end method

.method public final registerSource(Lio/appmetrica/analytics/locationapi/internal/LocationReceiverProvider;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lio/appmetrica/analytics/impl/ac;->c:Lio/appmetrica/analytics/locationapi/internal/LocationClient;

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/locationapi/internal/LocationClient;->registerSystemLocationSource(Lio/appmetrica/analytics/locationapi/internal/LocationReceiverProvider;)V

    return-void
.end method

.method public final unregisterSource(Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProvider;)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ac;->c:Lio/appmetrica/analytics/locationapi/internal/LocationClient;

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/locationapi/internal/LocationClient;->unregisterSystemLocationSource(Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProvider;)V

    return-void
.end method

.method public final unregisterSource(Lio/appmetrica/analytics/locationapi/internal/LocationReceiverProvider;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lio/appmetrica/analytics/impl/ac;->c:Lio/appmetrica/analytics/locationapi/internal/LocationClient;

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/locationapi/internal/LocationClient;->unregisterSystemLocationSource(Lio/appmetrica/analytics/locationapi/internal/LocationReceiverProvider;)V

    return-void
.end method

.method public final updateLocationFilter(Lio/appmetrica/analytics/locationapi/internal/LocationFilter;)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ac;->c:Lio/appmetrica/analytics/locationapi/internal/LocationClient;

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/locationapi/internal/LocationClient;->updateLocationFilter(Lio/appmetrica/analytics/locationapi/internal/LocationFilter;)V

    return-void
.end method
