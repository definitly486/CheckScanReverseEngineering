.class public final Lio/appmetrica/analytics/idsync/impl/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;

.field public final b:Lio/appmetrica/analytics/idsync/impl/M;

.field public c:Lio/appmetrica/analytics/coreapi/internal/identifiers/SdkIdentifiers;

.field public final d:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

.field public final e:Lio/appmetrica/analytics/idsync/impl/r;

.field public final f:Lio/appmetrica/analytics/idsync/impl/B;

.field public final g:Lio/appmetrica/analytics/idsync/impl/t;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;Lio/appmetrica/analytics/idsync/impl/M;Lio/appmetrica/analytics/coreapi/internal/identifiers/SdkIdentifiers;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/idsync/impl/q;->a:Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;

    iput-object p2, p0, Lio/appmetrica/analytics/idsync/impl/q;->b:Lio/appmetrica/analytics/idsync/impl/M;

    iput-object p3, p0, Lio/appmetrica/analytics/idsync/impl/q;->c:Lio/appmetrica/analytics/coreapi/internal/identifiers/SdkIdentifiers;

    new-instance p2, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-direct {p2}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;-><init>()V

    iput-object p2, p0, Lio/appmetrica/analytics/idsync/impl/q;->d:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    new-instance p2, Lio/appmetrica/analytics/idsync/impl/r;

    invoke-interface {p1}, Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;->getNetworkContext()Lio/appmetrica/analytics/modulesapi/internal/service/ServiceNetworkContext;

    move-result-object p3

    invoke-interface {p3}, Lio/appmetrica/analytics/modulesapi/internal/service/ServiceNetworkContext;->getSslSocketFactoryProvider()Lio/appmetrica/analytics/coreapi/internal/io/SslSocketFactoryProvider;

    move-result-object p3

    invoke-direct {p2, p3, p0}, Lio/appmetrica/analytics/idsync/impl/r;-><init>(Lio/appmetrica/analytics/coreapi/internal/io/SslSocketFactoryProvider;Lio/appmetrica/analytics/idsync/impl/q;)V

    iput-object p2, p0, Lio/appmetrica/analytics/idsync/impl/q;->e:Lio/appmetrica/analytics/idsync/impl/r;

    new-instance p2, Lio/appmetrica/analytics/idsync/impl/B;

    invoke-direct {p2, p1}, Lio/appmetrica/analytics/idsync/impl/B;-><init>(Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;)V

    iput-object p2, p0, Lio/appmetrica/analytics/idsync/impl/q;->f:Lio/appmetrica/analytics/idsync/impl/B;

    new-instance p2, Lio/appmetrica/analytics/idsync/impl/t;

    invoke-direct {p2, p1}, Lio/appmetrica/analytics/idsync/impl/t;-><init>(Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;)V

    iput-object p2, p0, Lio/appmetrica/analytics/idsync/impl/q;->g:Lio/appmetrica/analytics/idsync/impl/t;

    return-void
.end method

.method public static final a(Lio/appmetrica/analytics/idsync/impl/J;Lio/appmetrica/analytics/idsync/impl/q;Lio/appmetrica/analytics/idsync/impl/G;)V
    .locals 6

    .line 209
    iget-boolean v0, p0, Lio/appmetrica/analytics/idsync/impl/J;->b:Z

    if-eqz v0, :cond_4

    .line 210
    iget-object v0, p1, Lio/appmetrica/analytics/idsync/impl/q;->b:Lio/appmetrica/analytics/idsync/impl/M;

    .line 211
    new-instance v1, Lio/appmetrica/analytics/idsync/impl/K;

    .line 212
    iget-object v2, p0, Lio/appmetrica/analytics/idsync/impl/J;->a:Ljava/lang/String;

    .line 213
    iget-object v3, p1, Lio/appmetrica/analytics/idsync/impl/q;->d:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-virtual {v3}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;->currentTimeMillis()J

    move-result-wide v3

    .line 214
    iget-boolean v5, p0, Lio/appmetrica/analytics/idsync/impl/J;->d:Z

    if-eqz v5, :cond_0

    .line 215
    sget-object v5, Lio/appmetrica/analytics/idsync/impl/F;->d:Lio/appmetrica/analytics/idsync/impl/F;

    goto :goto_0

    :cond_0
    sget-object v5, Lio/appmetrica/analytics/idsync/impl/F;->e:Lio/appmetrica/analytics/idsync/impl/F;

    .line 216
    :goto_0
    invoke-direct {v1, v2, v3, v4, v5}, Lio/appmetrica/analytics/idsync/impl/K;-><init>(Ljava/lang/String;JLio/appmetrica/analytics/idsync/impl/F;)V

    .line 217
    iget-object v3, v0, Lio/appmetrica/analytics/idsync/impl/M;->d:Ljava/util/Map;

    .line 218
    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v1, v0, Lio/appmetrica/analytics/idsync/impl/M;->d:Ljava/util/Map;

    .line 220
    iget-object v2, v0, Lio/appmetrica/analytics/idsync/impl/M;->a:Lio/appmetrica/analytics/modulesapi/internal/common/ModulePreferences;

    iget-object v3, v0, Lio/appmetrica/analytics/idsync/impl/M;->c:Ljava/lang/String;

    iget-object v0, v0, Lio/appmetrica/analytics/idsync/impl/M;->b:Lio/appmetrica/analytics/idsync/impl/L;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/idsync/impl/L;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lio/appmetrica/analytics/modulesapi/internal/common/ModulePreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p1, Lio/appmetrica/analytics/idsync/impl/q;->g:Lio/appmetrica/analytics/idsync/impl/t;

    iget-object p1, p1, Lio/appmetrica/analytics/idsync/impl/q;->c:Lio/appmetrica/analytics/coreapi/internal/identifiers/SdkIdentifiers;

    .line 222
    iget-object v1, v0, Lio/appmetrica/analytics/idsync/impl/t;->a:Lio/appmetrica/analytics/idsync/impl/y;

    .line 223
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lio/appmetrica/analytics/idsync/impl/y;->a(Lio/appmetrica/analytics/idsync/impl/J;)Ljava/lang/String;

    move-result-object p0

    .line 224
    iget-object v0, v0, Lio/appmetrica/analytics/idsync/impl/t;->b:Lio/appmetrica/analytics/idsync/impl/w;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 226
    iget-boolean v2, p2, Lio/appmetrica/analytics/idsync/impl/G;->h:Z

    if-eqz v2, :cond_1

    .line 227
    new-instance v2, Lio/appmetrica/analytics/idsync/impl/s;

    iget-object v3, v0, Lio/appmetrica/analytics/idsync/impl/w;->a:Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;

    invoke-direct {v2, v3}, Lio/appmetrica/analytics/idsync/impl/s;-><init>(Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_1
    iget-object v2, p2, Lio/appmetrica/analytics/idsync/impl/G;->i:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 229
    invoke-static {v2}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 230
    :cond_2
    new-instance v2, Lio/appmetrica/analytics/idsync/impl/u;

    iget-object v0, v0, Lio/appmetrica/analytics/idsync/impl/w;->a:Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;

    .line 231
    iget-object p2, p2, Lio/appmetrica/analytics/idsync/impl/G;->i:Ljava/lang/String;

    .line 232
    invoke-direct {v2, v0, p2}, Lio/appmetrica/analytics/idsync/impl/u;-><init>(Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/idsync/impl/v;

    .line 234
    invoke-interface {v0, p0, p1}, Lio/appmetrica/analytics/idsync/impl/v;->a(Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/identifiers/SdkIdentifiers;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public static final a(Lio/appmetrica/analytics/idsync/impl/q;Lio/appmetrica/analytics/idsync/impl/G;)V
    .locals 12

    iget-object v0, p0, Lio/appmetrica/analytics/idsync/impl/q;->f:Lio/appmetrica/analytics/idsync/impl/B;

    iget-object v1, p1, Lio/appmetrica/analytics/idsync/impl/G;->c:Lio/appmetrica/analytics/idsync/impl/D;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lio/appmetrica/analytics/idsync/impl/D;->a:Lio/appmetrica/analytics/idsync/impl/z;

    sget-object v2, Lio/appmetrica/analytics/idsync/impl/A;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    new-instance v1, Lio/appmetrica/analytics/idsync/impl/b;

    iget-object v0, v0, Lio/appmetrica/analytics/idsync/impl/B;->a:Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;

    invoke-direct {v1, v0}, Lio/appmetrica/analytics/idsync/impl/b;-><init>(Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lio/appmetrica/analytics/idsync/impl/a;

    invoke-direct {v1}, Lio/appmetrica/analytics/idsync/impl/a;-><init>()V

    :goto_0
    invoke-interface {v1}, Lio/appmetrica/analytics/idsync/impl/C;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lio/appmetrica/analytics/idsync/impl/q;->e:Lio/appmetrica/analytics/idsync/impl/r;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lio/appmetrica/analytics/networkapi/Request$Builder;

    iget-object v1, p1, Lio/appmetrica/analytics/idsync/impl/G;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/networkapi/Request$Builder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lio/appmetrica/analytics/idsync/impl/G;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/Iterable;

    const/4 v10, 0x0

    const/16 v11, 0x3e

    const-string v6, ", "

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v11}, Lqn1;->a0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ILnl3;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lio/appmetrica/analytics/networkapi/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/networkapi/Request$Builder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lio/appmetrica/analytics/networkapi/Request$Builder;->build()Lio/appmetrica/analytics/networkapi/Request;

    move-result-object v0

    new-instance v1, Lio/appmetrica/analytics/network/internal/NetworkClientBuilder;

    invoke-direct {v1}, Lio/appmetrica/analytics/network/internal/NetworkClientBuilder;-><init>()V

    new-instance v3, Lio/appmetrica/analytics/networkapi/NetworkClientSettings$Builder;

    invoke-direct {v3}, Lio/appmetrica/analytics/networkapi/NetworkClientSettings$Builder;-><init>()V

    iget-object v4, p0, Lio/appmetrica/analytics/idsync/impl/r;->a:Lio/appmetrica/analytics/coreapi/internal/io/SslSocketFactoryProvider;

    invoke-interface {v4}, Lio/appmetrica/analytics/coreapi/internal/io/SslSocketFactoryProvider;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/appmetrica/analytics/networkapi/NetworkClientSettings$Builder;->withSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lio/appmetrica/analytics/networkapi/NetworkClientSettings$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lio/appmetrica/analytics/networkapi/NetworkClientSettings$Builder;->withUseCaches(Z)Lio/appmetrica/analytics/networkapi/NetworkClientSettings$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lio/appmetrica/analytics/networkapi/NetworkClientSettings$Builder;->withInstanceFollowRedirects(Z)Lio/appmetrica/analytics/networkapi/NetworkClientSettings$Builder;

    move-result-object v2

    const v3, 0x19000

    invoke-virtual {v2, v3}, Lio/appmetrica/analytics/networkapi/NetworkClientSettings$Builder;->withMaxResponseSize(I)Lio/appmetrica/analytics/networkapi/NetworkClientSettings$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lio/appmetrica/analytics/networkapi/NetworkClientSettings$Builder;->build()Lio/appmetrica/analytics/networkapi/NetworkClientSettings;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/networkapi/NetworkClient$Builder;->withSettings(Lio/appmetrica/analytics/networkapi/NetworkClientSettings;)Lio/appmetrica/analytics/networkapi/NetworkClient$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/networkapi/NetworkClient$Builder;->build()Lio/appmetrica/analytics/networkapi/NetworkClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/appmetrica/analytics/networkapi/NetworkClient;->newCall(Lio/appmetrica/analytics/networkapi/Request;)Lio/appmetrica/analytics/networkapi/Call;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/networkapi/Call;->execute()Lio/appmetrica/analytics/networkapi/Response;

    move-result-object v0

    iget-object p0, p0, Lio/appmetrica/analytics/idsync/impl/r;->b:Lio/appmetrica/analytics/idsync/impl/q;

    new-instance v1, Lio/appmetrica/analytics/idsync/impl/J;

    iget-object v2, p1, Lio/appmetrica/analytics/idsync/impl/G;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lio/appmetrica/analytics/networkapi/Response;->isCompleted()Z

    move-result v3

    invoke-virtual {v0}, Lio/appmetrica/analytics/networkapi/Response;->getUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lio/appmetrica/analytics/idsync/impl/G;->g:Ljava/util/List;

    invoke-virtual {v0}, Lio/appmetrica/analytics/networkapi/Response;->getCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v0}, Lio/appmetrica/analytics/networkapi/Response;->getCode()I

    move-result v6

    invoke-virtual {v0}, Lio/appmetrica/analytics/networkapi/Response;->getResponseData()[B

    move-result-object v7

    invoke-virtual {v0}, Lio/appmetrica/analytics/networkapi/Response;->getHeaders()Ljava/util/Map;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Lio/appmetrica/analytics/idsync/impl/J;-><init>(Ljava/lang/String;ZLjava/lang/String;ZI[BLjava/util/Map;)V

    invoke-virtual {p0, v1, p1}, Lio/appmetrica/analytics/idsync/impl/q;->a(Lio/appmetrica/analytics/idsync/impl/J;Lio/appmetrica/analytics/idsync/impl/G;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/coreapi/internal/identifiers/SdkIdentifiers;
    .locals 0

    .line 235
    iget-object p0, p0, Lio/appmetrica/analytics/idsync/impl/q;->c:Lio/appmetrica/analytics/coreapi/internal/identifiers/SdkIdentifiers;

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/coreapi/internal/identifiers/SdkIdentifiers;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lio/appmetrica/analytics/idsync/impl/q;->c:Lio/appmetrica/analytics/coreapi/internal/identifiers/SdkIdentifiers;

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/idsync/impl/G;)V
    .locals 7

    .line 237
    iget-object v0, p1, Lio/appmetrica/analytics/idsync/impl/G;->a:Ljava/lang/String;

    .line 238
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 239
    iget-object v0, p1, Lio/appmetrica/analytics/idsync/impl/G;->b:Ljava/lang/String;

    .line 240
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 241
    iget-object v0, p1, Lio/appmetrica/analytics/idsync/impl/G;->g:Ljava/util/List;

    .line 242
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 243
    iget-object v0, p0, Lio/appmetrica/analytics/idsync/impl/q;->b:Lio/appmetrica/analytics/idsync/impl/M;

    .line 244
    iget-object v1, p1, Lio/appmetrica/analytics/idsync/impl/G;->a:Ljava/lang/String;

    .line 245
    iget-object v0, v0, Lio/appmetrica/analytics/idsync/impl/M;->d:Ljava/util/Map;

    .line 246
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/idsync/impl/K;

    if-eqz v0, :cond_2

    .line 247
    iget-object v1, p0, Lio/appmetrica/analytics/idsync/impl/q;->d:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-virtual {v1}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;->currentTimeMillis()J

    move-result-wide v1

    .line 248
    iget-object v3, v0, Lio/appmetrica/analytics/idsync/impl/K;->c:Lio/appmetrica/analytics/idsync/impl/F;

    .line 249
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_0

    .line 250
    :cond_0
    iget-wide v3, p1, Lio/appmetrica/analytics/idsync/impl/G;->f:J

    goto :goto_0

    .line 251
    :cond_1
    iget-wide v3, p1, Lio/appmetrica/analytics/idsync/impl/G;->e:J

    .line 252
    :goto_0
    iget-wide v5, v0, Lio/appmetrica/analytics/idsync/impl/K;->b:J

    sub-long/2addr v1, v5

    cmp-long v0, v1, v3

    if-ltz v0, :cond_3

    .line 253
    :cond_2
    iget-object v0, p0, Lio/appmetrica/analytics/idsync/impl/q;->a:Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;

    invoke-interface {v0}, Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;->getExecutorProvider()Lio/appmetrica/analytics/modulesapi/internal/common/ExecutorProvider;

    move-result-object v0

    invoke-interface {v0}, Lio/appmetrica/analytics/modulesapi/internal/common/ExecutorProvider;->getSupportIOExecutor()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v0

    new-instance v1, Ljo1;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0, p1}, Ljo1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public final a(Lio/appmetrica/analytics/idsync/impl/J;Lio/appmetrica/analytics/idsync/impl/G;)V
    .locals 2

    .line 254
    iget-object v0, p0, Lio/appmetrica/analytics/idsync/impl/q;->a:Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;

    invoke-interface {v0}, Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;->getExecutorProvider()Lio/appmetrica/analytics/modulesapi/internal/common/ExecutorProvider;

    move-result-object v0

    invoke-interface {v0}, Lio/appmetrica/analytics/modulesapi/internal/common/ExecutorProvider;->getModuleExecutor()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v0

    new-instance v1, Ly5a;

    invoke-direct {v1, p1, p0, p2}, Ly5a;-><init>(Lio/appmetrica/analytics/idsync/impl/J;Lio/appmetrica/analytics/idsync/impl/q;Lio/appmetrica/analytics/idsync/impl/G;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
