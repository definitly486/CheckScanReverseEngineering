.class public final Lio/appmetrica/analytics/push/impl/X0;
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

    iput-object p1, p0, Lio/appmetrica/analytics/push/impl/X0;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getLocation(Ljava/lang/String;JLio/appmetrica/analytics/push/location/LocationVerifier;)Lio/appmetrica/analytics/push/location/DetailedLocation;
    .locals 5

    new-instance v0, Lio/appmetrica/analytics/push/impl/L;

    invoke-direct {v0}, Lio/appmetrica/analytics/push/impl/L;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/push/impl/W0;

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/X0;->a:Landroid/content/Context;

    invoke-direct {v1, p0}, Lio/appmetrica/analytics/push/impl/W0;-><init>(Landroid/content/Context;)V

    new-instance v2, Lio/appmetrica/analytics/push/impl/L0;

    invoke-direct {v2, p0}, Lio/appmetrica/analytics/push/impl/L0;-><init>(Landroid/content/Context;)V

    new-instance v3, Lio/appmetrica/analytics/push/impl/W0;

    invoke-direct {v3, p0}, Lio/appmetrica/analytics/push/impl/W0;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x4

    new-array p0, p0, [Lio/appmetrica/analytics/push/location/LocationProvider;

    const/4 v4, 0x0

    aput-object v0, p0, v4

    const/4 v0, 0x1

    aput-object v1, p0, v0

    const/4 v0, 0x2

    aput-object v2, p0, v0

    const/4 v0, 0x3

    aput-object v3, p0, v0

    invoke-static {p0}, Lyr;->G([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/push/location/LocationProvider;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/appmetrica/analytics/push/location/LocationProvider;->getLocation(Ljava/lang/String;JLio/appmetrica/analytics/push/location/LocationVerifier;)Lio/appmetrica/analytics/push/location/DetailedLocation;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/push/location/DetailedLocation;->getLocation()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    new-instance p0, Lio/appmetrica/analytics/push/location/DetailedLocation;

    new-instance p1, Lio/appmetrica/analytics/push/location/LocationStatus$LocationProviderReturnedNull;

    const-string p2, "LazyPushLocationProvider"

    invoke-direct {p1, p2}, Lio/appmetrica/analytics/push/location/LocationStatus$LocationProviderReturnedNull;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lio/appmetrica/analytics/push/location/DetailedLocation;-><init>(Landroid/location/Location;Lio/appmetrica/analytics/push/location/LocationStatus;)V

    return-object p0
.end method
