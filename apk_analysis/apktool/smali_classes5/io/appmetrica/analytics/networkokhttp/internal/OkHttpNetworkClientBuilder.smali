.class public final Lio/appmetrica/analytics/networkokhttp/internal/OkHttpNetworkClientBuilder;
.super Lio/appmetrica/analytics/networkapi/NetworkClient$Builder;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/appmetrica/analytics/networkapi/NetworkClient$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/appmetrica/analytics/networkapi/NetworkClient;
    .locals 3

    new-instance v0, Lio/appmetrica/analytics/networkokhttp/impl/f;

    invoke-virtual {p0}, Lio/appmetrica/analytics/networkapi/NetworkClient$Builder;->getSettings()Lio/appmetrica/analytics/networkapi/NetworkClientSettings;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2, v1}, Lio/appmetrica/analytics/networkokhttp/impl/f;-><init>(Lio/appmetrica/analytics/networkapi/NetworkClientSettings;Lokhttp3/OkHttpClient;ILjh2;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "OkHttp Network Client Builder"

    return-object p0
.end method
