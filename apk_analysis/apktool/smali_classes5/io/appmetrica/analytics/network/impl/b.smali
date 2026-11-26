.class public final Lio/appmetrica/analytics/network/impl/b;
.super Lio/appmetrica/analytics/networkapi/NetworkClient;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/networkapi/NetworkClientSettings;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/networkapi/NetworkClient;-><init>(Lio/appmetrica/analytics/networkapi/NetworkClientSettings;)V

    return-void
.end method


# virtual methods
.method public final newCall(Lio/appmetrica/analytics/networkapi/Request;)Lio/appmetrica/analytics/networkapi/Call;
    .locals 0

    new-instance p0, Lio/appmetrica/analytics/network/impl/a;

    invoke-direct {p0}, Lio/appmetrica/analytics/network/impl/a;-><init>()V

    return-object p0
.end method
