.class public final Lio/appmetrica/analytics/push/impl/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/push/location/LocationProvider;


# instance fields
.field public volatile a:Lio/appmetrica/analytics/push/location/DetailedLocation;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLocation(Ljava/lang/String;JLio/appmetrica/analytics/push/location/LocationVerifier;)Lio/appmetrica/analytics/push/location/DetailedLocation;
    .locals 9

    sget-object v2, Lio/appmetrica/analytics/push/impl/c1;->a:Lio/appmetrica/analytics/push/location/LocationProvider;

    const/4 v7, 0x0

    if-nez v2, :cond_0

    new-instance p0, Lio/appmetrica/analytics/push/location/DetailedLocation;

    new-instance p1, Lio/appmetrica/analytics/push/location/LocationStatus$CustomLocationProviderIsNull;

    invoke-direct {p1}, Lio/appmetrica/analytics/push/location/LocationStatus$CustomLocationProviderIsNull;-><init>()V

    invoke-direct {p0, v7, p1}, Lio/appmetrica/analytics/push/location/DetailedLocation;-><init>(Landroid/location/Location;Lio/appmetrica/analytics/push/location/LocationStatus;)V

    return-object p0

    :cond_0
    new-instance v8, Lio/appmetrica/analytics/push/impl/m2;

    new-instance v0, Lio/appmetrica/analytics/push/impl/K;

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lio/appmetrica/analytics/push/impl/K;-><init>(Lio/appmetrica/analytics/push/impl/L;Lio/appmetrica/analytics/push/location/LocationProvider;Ljava/lang/String;JLio/appmetrica/analytics/push/location/LocationVerifier;)V

    invoke-static {}, Lio/appmetrica/analytics/push/impl/F0;->b()Lio/appmetrica/analytics/push/impl/F0;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/push/impl/F0;->a()Lio/appmetrica/analytics/push/impl/E0;

    move-result-object p0

    invoke-direct {v8, v0, p0}, Lio/appmetrica/analytics/push/impl/m2;-><init>(Lio/appmetrica/analytics/push/impl/l2;Lio/appmetrica/analytics/push/impl/E0;)V

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v4, v5, p0}, Lio/appmetrica/analytics/push/impl/m2;->a(JLjava/util/concurrent/TimeUnit;)V

    iget-object p0, v1, Lio/appmetrica/analytics/push/impl/L;->a:Lio/appmetrica/analytics/push/location/DetailedLocation;

    if-nez p0, :cond_1

    new-instance p0, Lio/appmetrica/analytics/push/location/DetailedLocation;

    new-instance p1, Lio/appmetrica/analytics/push/location/LocationStatus$ExpiredByTimeout;

    invoke-direct {p1}, Lio/appmetrica/analytics/push/location/LocationStatus$ExpiredByTimeout;-><init>()V

    invoke-direct {p0, v7, p1}, Lio/appmetrica/analytics/push/location/DetailedLocation;-><init>(Landroid/location/Location;Lio/appmetrica/analytics/push/location/LocationStatus;)V

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lio/appmetrica/analytics/push/location/DetailedLocation;->getLocationStatus()Lio/appmetrica/analytics/push/location/LocationStatus;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/location/LocationStatus;->isSuccess()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lio/appmetrica/analytics/push/location/DetailedLocation;->getLocation()Landroid/location/Location;

    move-result-object p1

    if-nez p1, :cond_3

    new-instance p0, Lio/appmetrica/analytics/push/location/DetailedLocation;

    new-instance p1, Lio/appmetrica/analytics/push/location/LocationStatus$LocationProviderReturnedNull;

    const-string p2, "CustomLocationProvider"

    invoke-direct {p1, p2}, Lio/appmetrica/analytics/push/location/LocationStatus$LocationProviderReturnedNull;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v7, p1}, Lio/appmetrica/analytics/push/location/DetailedLocation;-><init>(Landroid/location/Location;Lio/appmetrica/analytics/push/location/LocationStatus;)V

    return-object p0

    :cond_3
    invoke-interface {v6, p1}, Lio/appmetrica/analytics/push/location/LocationVerifier;->verifyLocation(Landroid/location/Location;)Lio/appmetrica/analytics/push/location/LocationStatus;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/location/LocationStatus;->isSuccess()Z

    move-result p2

    if-nez p2, :cond_4

    new-instance p0, Lio/appmetrica/analytics/push/location/DetailedLocation;

    invoke-direct {p0, v7, p1}, Lio/appmetrica/analytics/push/location/DetailedLocation;-><init>(Landroid/location/Location;Lio/appmetrica/analytics/push/location/LocationStatus;)V

    :cond_4
    :goto_0
    return-object p0
.end method
