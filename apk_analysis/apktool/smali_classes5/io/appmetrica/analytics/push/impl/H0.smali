.class public final Lio/appmetrica/analytics/push/impl/H0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/push/location/LocationProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLocation(Ljava/lang/String;JLio/appmetrica/analytics/push/location/LocationVerifier;)Lio/appmetrica/analytics/push/location/DetailedLocation;
    .locals 0

    new-instance p0, Lio/appmetrica/analytics/push/impl/L;

    invoke-direct {p0}, Lio/appmetrica/analytics/push/impl/L;-><init>()V

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/appmetrica/analytics/push/impl/L;->getLocation(Ljava/lang/String;JLio/appmetrica/analytics/push/location/LocationVerifier;)Lio/appmetrica/analytics/push/location/DetailedLocation;

    move-result-object p0

    return-object p0
.end method
