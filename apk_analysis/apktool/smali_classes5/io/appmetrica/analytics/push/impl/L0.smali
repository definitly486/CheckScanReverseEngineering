.class public final Lio/appmetrica/analytics/push/impl/L0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/push/location/LocationProvider;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lio/appmetrica/analytics/push/impl/K0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/appmetrica/analytics/push/impl/L0;->b:Lio/appmetrica/analytics/push/impl/K0;

    iput-object p1, p0, Lio/appmetrica/analytics/push/impl/L0;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getLocation(Ljava/lang/String;JLio/appmetrica/analytics/push/location/LocationVerifier;)Lio/appmetrica/analytics/push/location/DetailedLocation;
    .locals 7

    sget-object v0, Lio/appmetrica/analytics/push/logger/internal/PublicLogger;->INSTANCE:Lio/appmetrica/analytics/push/logger/internal/PublicLogger;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Trying request new location from %s provider"

    invoke-virtual {v0, v2, v1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lio/appmetrica/analytics/push/impl/L0;->a:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    sget-object v4, Lio/appmetrica/analytics/push/impl/I1;->a:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_0
    sget-object v4, Lio/appmetrica/analytics/push/impl/I1;->a:Ljava/util/List;

    :cond_1
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    :goto_0
    iget-object v1, p0, Lio/appmetrica/analytics/push/impl/L0;->a:Landroid/content/Context;

    const/4 v2, 0x0

    :try_start_0
    const-string v4, "location"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    sget-object v4, Lio/appmetrica/analytics/push/logger/internal/PublicLogger;->INSTANCE:Lio/appmetrica/analytics/push/logger/internal/PublicLogger;

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "Failed to get location manager"

    invoke-virtual {v4, v1, v6, v5}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v3

    :goto_1
    if-nez v1, :cond_3

    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "LocationManager is null"

    invoke-virtual {v0, p1, p0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Lio/appmetrica/analytics/push/location/DetailedLocation;

    new-instance p1, Lio/appmetrica/analytics/push/location/LocationStatus$LocationManagerIsNull;

    invoke-direct {p1}, Lio/appmetrica/analytics/push/location/LocationStatus$LocationManagerIsNull;-><init>()V

    invoke-direct {p0, v3, p1}, Lio/appmetrica/analytics/push/location/DetailedLocation;-><init>(Landroid/location/Location;Lio/appmetrica/analytics/push/location/LocationStatus;)V

    return-object p0

    :cond_3
    new-instance v0, Lio/appmetrica/analytics/push/impl/m2;

    new-instance v2, Lio/appmetrica/analytics/push/impl/J0;

    invoke-direct {v2, p0, v1, p4, p1}, Lio/appmetrica/analytics/push/impl/J0;-><init>(Lio/appmetrica/analytics/push/impl/L0;Landroid/location/LocationManager;Lio/appmetrica/analytics/push/location/LocationVerifier;Ljava/lang/String;)V

    invoke-static {}, Lio/appmetrica/analytics/push/impl/F0;->b()Lio/appmetrica/analytics/push/impl/F0;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/impl/F0;->a()Lio/appmetrica/analytics/push/impl/E0;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Lio/appmetrica/analytics/push/impl/m2;-><init>(Lio/appmetrica/analytics/push/impl/l2;Lio/appmetrica/analytics/push/impl/E0;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p2, p3, p1}, Lio/appmetrica/analytics/push/impl/m2;->a(JLjava/util/concurrent/TimeUnit;)V

    iget-object p1, p0, Lio/appmetrica/analytics/push/impl/L0;->b:Lio/appmetrica/analytics/push/impl/K0;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lio/appmetrica/analytics/push/impl/K0;->c:Landroid/location/Location;

    goto :goto_2

    :cond_4
    move-object p1, v3

    :goto_2
    iget-object p2, p0, Lio/appmetrica/analytics/push/impl/L0;->b:Lio/appmetrica/analytics/push/impl/K0;

    if-eqz p2, :cond_5

    invoke-virtual {v1, p2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_5
    iput-object v3, p0, Lio/appmetrica/analytics/push/impl/L0;->b:Lio/appmetrica/analytics/push/impl/K0;

    if-eqz p1, :cond_6

    new-instance p0, Lio/appmetrica/analytics/push/location/DetailedLocation;

    new-instance p2, Lio/appmetrica/analytics/push/location/LocationStatus$Success;

    invoke-direct {p2}, Lio/appmetrica/analytics/push/location/LocationStatus$Success;-><init>()V

    invoke-direct {p0, p1, p2}, Lio/appmetrica/analytics/push/location/DetailedLocation;-><init>(Landroid/location/Location;Lio/appmetrica/analytics/push/location/LocationStatus;)V

    return-object p0

    :cond_6
    new-instance p0, Lio/appmetrica/analytics/push/location/DetailedLocation;

    new-instance p1, Lio/appmetrica/analytics/push/location/LocationStatus$LocationProviderReturnedNull;

    const-string p2, "ForceScanLocationProvider"

    invoke-direct {p1, p2}, Lio/appmetrica/analytics/push/location/LocationStatus$LocationProviderReturnedNull;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3, p1}, Lio/appmetrica/analytics/push/location/DetailedLocation;-><init>(Landroid/location/Location;Lio/appmetrica/analytics/push/location/LocationStatus;)V

    return-object p0

    :cond_7
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "Location permissions is not granted for %s"

    invoke-virtual {v0, p2, p0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Lio/appmetrica/analytics/push/location/DetailedLocation;

    new-instance p2, Lio/appmetrica/analytics/push/location/LocationStatus$PermissionIsNotGranted;

    invoke-direct {p2, p1}, Lio/appmetrica/analytics/push/location/LocationStatus$PermissionIsNotGranted;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3, p2}, Lio/appmetrica/analytics/push/location/DetailedLocation;-><init>(Landroid/location/Location;Lio/appmetrica/analytics/push/location/LocationStatus;)V

    return-object p0
.end method
