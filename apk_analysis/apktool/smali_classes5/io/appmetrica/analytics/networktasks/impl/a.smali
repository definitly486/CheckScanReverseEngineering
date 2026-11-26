.class public final Lio/appmetrica/analytics/networktasks/impl/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLSocketFactory;)Lio/appmetrica/analytics/networkapi/Response;
    .locals 2

    new-instance v0, Lio/appmetrica/analytics/networkapi/Request$Builder;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/networkapi/Request$Builder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lio/appmetrica/analytics/networkapi/Request$Method;->GET:Lio/appmetrica/analytics/networkapi/Request$Method;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/networkapi/Request$Builder;->withMethod(Lio/appmetrica/analytics/networkapi/Request$Method;)Lio/appmetrica/analytics/networkapi/Request$Builder;

    move-result-object p1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "If-None-Match"

    invoke-virtual {p1, v0, p0}, Lio/appmetrica/analytics/networkapi/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/networkapi/Request$Builder;

    :cond_0
    new-instance p0, Lio/appmetrica/analytics/network/internal/NetworkClientBuilder;

    invoke-direct {p0}, Lio/appmetrica/analytics/network/internal/NetworkClientBuilder;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/networkapi/NetworkClientSettings$Builder;

    invoke-direct {v0}, Lio/appmetrica/analytics/networkapi/NetworkClientSettings$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/networkapi/NetworkClientSettings$Builder;->withInstanceFollowRedirects(Z)Lio/appmetrica/analytics/networkapi/NetworkClientSettings$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/appmetrica/analytics/networkapi/NetworkClientSettings$Builder;->withSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lio/appmetrica/analytics/networkapi/NetworkClientSettings$Builder;

    move-result-object p2

    sget v0, Lio/appmetrica/analytics/networktasks/impl/b;->a:I

    invoke-virtual {p2, v0}, Lio/appmetrica/analytics/networkapi/NetworkClientSettings$Builder;->withConnectTimeout(I)Lio/appmetrica/analytics/networkapi/NetworkClientSettings$Builder;

    move-result-object p2

    invoke-virtual {p2, v0}, Lio/appmetrica/analytics/networkapi/NetworkClientSettings$Builder;->withReadTimeout(I)Lio/appmetrica/analytics/networkapi/NetworkClientSettings$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lio/appmetrica/analytics/networkapi/NetworkClientSettings$Builder;->build()Lio/appmetrica/analytics/networkapi/NetworkClientSettings;

    move-result-object p2

    invoke-virtual {p0, p2}, Lio/appmetrica/analytics/networkapi/NetworkClient$Builder;->withSettings(Lio/appmetrica/analytics/networkapi/NetworkClientSettings;)Lio/appmetrica/analytics/networkapi/NetworkClient$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/networkapi/NetworkClient$Builder;->build()Lio/appmetrica/analytics/networkapi/NetworkClient;

    move-result-object p0

    invoke-virtual {p1}, Lio/appmetrica/analytics/networkapi/Request$Builder;->build()Lio/appmetrica/analytics/networkapi/Request;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/networkapi/NetworkClient;->newCall(Lio/appmetrica/analytics/networkapi/Request;)Lio/appmetrica/analytics/networkapi/Call;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/networkapi/Call;->execute()Lio/appmetrica/analytics/networkapi/Response;

    move-result-object p0

    return-object p0
.end method
