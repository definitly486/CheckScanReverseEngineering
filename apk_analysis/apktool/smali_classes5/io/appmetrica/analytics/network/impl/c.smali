.class public final Lio/appmetrica/analytics/network/impl/c;
.super Lio/appmetrica/analytics/networkapi/NetworkClient$Builder;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/appmetrica/analytics/networkapi/NetworkClient$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/network/impl/b;
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/network/impl/b;

    invoke-virtual {p0}, Lio/appmetrica/analytics/networkapi/NetworkClient$Builder;->getSettings()Lio/appmetrica/analytics/networkapi/NetworkClientSettings;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/network/impl/b;-><init>(Lio/appmetrica/analytics/networkapi/NetworkClientSettings;)V

    return-object v0
.end method

.method public final build()Lio/appmetrica/analytics/networkapi/NetworkClient;
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/network/impl/b;

    invoke-virtual {p0}, Lio/appmetrica/analytics/networkapi/NetworkClient$Builder;->getSettings()Lio/appmetrica/analytics/networkapi/NetworkClientSettings;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/network/impl/b;-><init>(Lio/appmetrica/analytics/networkapi/NetworkClientSettings;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Dummy Network Client Builder"

    return-object p0
.end method
