.class public final Lio/appmetrica/analytics/idsync/impl/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/idsync/impl/x;->a:Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lio/appmetrica/analytics/networkapi/Request$Builder;

    invoke-direct {v1, p1}, Lio/appmetrica/analytics/networkapi/Request$Builder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lio/appmetrica/analytics/networkapi/Request$Method;->POST:Lio/appmetrica/analytics/networkapi/Request$Method;

    invoke-virtual {v1, p1}, Lio/appmetrica/analytics/networkapi/Request$Builder;->withMethod(Lio/appmetrica/analytics/networkapi/Request$Method;)Lio/appmetrica/analytics/networkapi/Request$Builder;

    move-result-object p1

    sget-object v1, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/appmetrica/analytics/networkapi/Request$Builder;->withBody([B)Lio/appmetrica/analytics/networkapi/Request$Builder;

    move-result-object p1

    const-string p2, "Content-Type"

    const-string v1, "application/json"

    invoke-virtual {p1, p2, v1}, Lio/appmetrica/analytics/networkapi/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/networkapi/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/networkapi/Request$Builder;->build()Lio/appmetrica/analytics/networkapi/Request;

    move-result-object p1

    new-instance p2, Lio/appmetrica/analytics/network/internal/NetworkClientBuilder;

    invoke-direct {p2}, Lio/appmetrica/analytics/network/internal/NetworkClientBuilder;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/networkapi/NetworkClientSettings$Builder;

    invoke-direct {v1}, Lio/appmetrica/analytics/networkapi/NetworkClientSettings$Builder;-><init>()V

    iget-object p0, p0, Lio/appmetrica/analytics/idsync/impl/x;->a:Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;

    invoke-interface {p0}, Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;->getNetworkContext()Lio/appmetrica/analytics/modulesapi/internal/service/ServiceNetworkContext;

    move-result-object p0

    invoke-interface {p0}, Lio/appmetrica/analytics/modulesapi/internal/service/ServiceNetworkContext;->getSslSocketFactoryProvider()Lio/appmetrica/analytics/coreapi/internal/io/SslSocketFactoryProvider;

    move-result-object p0

    invoke-interface {p0}, Lio/appmetrica/analytics/coreapi/internal/io/SslSocketFactoryProvider;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0

    invoke-virtual {v1, p0}, Lio/appmetrica/analytics/networkapi/NetworkClientSettings$Builder;->withSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lio/appmetrica/analytics/networkapi/NetworkClientSettings$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/networkapi/NetworkClientSettings$Builder;->withUseCaches(Z)Lio/appmetrica/analytics/networkapi/NetworkClientSettings$Builder;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lio/appmetrica/analytics/networkapi/NetworkClientSettings$Builder;->withInstanceFollowRedirects(Z)Lio/appmetrica/analytics/networkapi/NetworkClientSettings$Builder;

    move-result-object p0

    const/16 v2, 0x2800

    invoke-virtual {p0, v2}, Lio/appmetrica/analytics/networkapi/NetworkClientSettings$Builder;->withMaxResponseSize(I)Lio/appmetrica/analytics/networkapi/NetworkClientSettings$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/networkapi/NetworkClientSettings$Builder;->build()Lio/appmetrica/analytics/networkapi/NetworkClientSettings;

    move-result-object p0

    invoke-virtual {p2, p0}, Lio/appmetrica/analytics/networkapi/NetworkClient$Builder;->withSettings(Lio/appmetrica/analytics/networkapi/NetworkClientSettings;)Lio/appmetrica/analytics/networkapi/NetworkClient$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/networkapi/NetworkClient$Builder;->build()Lio/appmetrica/analytics/networkapi/NetworkClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/networkapi/NetworkClient;->newCall(Lio/appmetrica/analytics/networkapi/Request;)Lio/appmetrica/analytics/networkapi/Call;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/networkapi/Call;->execute()Lio/appmetrica/analytics/networkapi/Response;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/networkapi/Response;->isCompleted()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lio/appmetrica/analytics/networkapi/Response;->getCode()I

    move-result p1

    const/16 p2, 0xc8

    if-eq p1, p2, :cond_0

    invoke-virtual {p0}, Lio/appmetrica/analytics/networkapi/Response;->getCode()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p1, 0x190

    if-gt p1, p0, :cond_1

    const/16 p1, 0x1f4

    if-ge p0, p1, :cond_1

    :cond_0
    return v1

    :catch_0
    :cond_1
    return v0
.end method
