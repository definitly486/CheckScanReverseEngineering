.class public final Lio/appmetrica/analytics/push/impl/W0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/push/location/LocationProvider;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/push/impl/W0;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getLocation(Ljava/lang/String;JLio/appmetrica/analytics/push/location/LocationVerifier;)Lio/appmetrica/analytics/push/location/DetailedLocation;
    .locals 5

    sget-object p1, Lio/appmetrica/analytics/push/logger/internal/PublicLogger;->INSTANCE:Lio/appmetrica/analytics/push/logger/internal/PublicLogger;

    const/4 p2, 0x0

    new-array p3, p2, [Ljava/lang/Object;

    const-string v0, "Trying get last known location"

    invoke-virtual {p1, v0, p3}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p3, p0, Lio/appmetrica/analytics/push/impl/W0;->a:Landroid/content/Context;

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "location"

    invoke-virtual {p3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/location/LocationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p3

    sget-object v1, Lio/appmetrica/analytics/push/logger/internal/PublicLogger;->INSTANCE:Lio/appmetrica/analytics/push/logger/internal/PublicLogger;

    new-array v2, p2, [Ljava/lang/Object;

    const-string v3, "Failed to get location manager"

    invoke-virtual {v1, p3, v3, v2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p3, v0

    :goto_0
    if-nez p3, :cond_0

    new-array p0, p2, [Ljava/lang/Object;

    const-string p2, "LocationManager is null"

    invoke-virtual {p1, p2, p0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Lio/appmetrica/analytics/push/location/DetailedLocation;

    new-instance p1, Lio/appmetrica/analytics/push/location/LocationStatus$LocationManagerIsNull;

    invoke-direct {p1}, Lio/appmetrica/analytics/push/location/LocationStatus$LocationManagerIsNull;-><init>()V

    invoke-direct {p0, v0, p1}, Lio/appmetrica/analytics/push/location/DetailedLocation;-><init>(Landroid/location/Location;Lio/appmetrica/analytics/push/location/LocationStatus;)V

    return-object p0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_1
    iget-object v2, p0, Lio/appmetrica/analytics/push/impl/W0;->a:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    if-eqz v1, :cond_2

    :try_start_2
    sget-object v4, Lio/appmetrica/analytics/push/impl/I1;->a:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_2

    :cond_2
    sget-object v4, Lio/appmetrica/analytics/push/impl/I1;->a:Ljava/util/List;

    :cond_3
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    :goto_1
    invoke-virtual {p3, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :goto_2
    sget-object v2, Lio/appmetrica/analytics/push/logger/internal/PublicLogger;->INSTANCE:Lio/appmetrica/analytics/push/logger/internal/PublicLogger;

    new-array v3, p2, [Ljava/lang/Object;

    const-string v4, "Failed to get last known location"

    invoke-virtual {v2, v1, v4, v3}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    move-object v1, v0

    :goto_3
    if-eqz v1, :cond_1

    invoke-interface {p4, v1}, Lio/appmetrica/analytics/push/location/LocationVerifier;->verifyLocation(Landroid/location/Location;)Lio/appmetrica/analytics/push/location/LocationStatus;

    move-result-object v2

    invoke-virtual {v2}, Lio/appmetrica/analytics/push/location/LocationStatus;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p0, Lio/appmetrica/analytics/push/location/DetailedLocation;

    new-instance p1, Lio/appmetrica/analytics/push/location/LocationStatus$Success;

    invoke-direct {p1}, Lio/appmetrica/analytics/push/location/LocationStatus$Success;-><init>()V

    invoke-direct {p0, v1, p1}, Lio/appmetrica/analytics/push/location/DetailedLocation;-><init>(Landroid/location/Location;Lio/appmetrica/analytics/push/location/LocationStatus;)V

    return-object p0

    :cond_6
    new-instance p0, Lio/appmetrica/analytics/push/location/DetailedLocation;

    new-instance p1, Lio/appmetrica/analytics/push/location/LocationStatus$LocationProviderReturnedNull;

    const-string p2, "LastKnownLocationProvider"

    invoke-direct {p1, p2}, Lio/appmetrica/analytics/push/location/LocationStatus$LocationProviderReturnedNull;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lio/appmetrica/analytics/push/location/DetailedLocation;-><init>(Landroid/location/Location;Lio/appmetrica/analytics/push/location/LocationStatus;)V

    return-object p0
.end method
