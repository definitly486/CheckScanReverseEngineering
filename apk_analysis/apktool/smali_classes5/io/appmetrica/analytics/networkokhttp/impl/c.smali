.class public final Lio/appmetrica/analytics/networkokhttp/impl/c;
.super Lio/appmetrica/analytics/networkapi/Call;
.source "SourceFile"


# instance fields
.field public final a:Lokhttp3/OkHttpClient;

.field public final b:Lio/appmetrica/analytics/networkapi/Request;

.field public final c:Lio/appmetrica/analytics/networkapi/NetworkClientSettings;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;Lio/appmetrica/analytics/networkapi/Request;Lio/appmetrica/analytics/networkapi/NetworkClientSettings;)V
    .locals 0

    invoke-direct {p0}, Lio/appmetrica/analytics/networkapi/Call;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/networkokhttp/impl/c;->a:Lokhttp3/OkHttpClient;

    iput-object p2, p0, Lio/appmetrica/analytics/networkokhttp/impl/c;->b:Lio/appmetrica/analytics/networkapi/Request;

    iput-object p3, p0, Lio/appmetrica/analytics/networkokhttp/impl/c;->c:Lio/appmetrica/analytics/networkapi/NetworkClientSettings;

    return-void
.end method

.method public static a(Lio/appmetrica/analytics/networkapi/Request;)Lb37;
    .locals 12

    new-instance v0, Lb37$a;

    invoke-direct {v0}, Lb37$a;-><init>()V

    invoke-virtual {p0}, Lio/appmetrica/analytics/networkapi/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb37$a;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/appmetrica/analytics/networkapi/Request;->getMethod()Lio/appmetrica/analytics/networkapi/Request$Method;

    move-result-object v1

    sget-object v2, Lio/appmetrica/analytics/networkokhttp/impl/a;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lio/appmetrica/analytics/networkapi/Request;->getMethod()Lio/appmetrica/analytics/networkapi/Request$Method;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/networkapi/Request$Method;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/appmetrica/analytics/networkapi/Request;->getBody()[B

    move-result-object v3

    array-length v4, v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v5, v3

    int-to-long v6, v5

    const-wide/16 v8, 0x0

    int-to-long v10, v4

    invoke-static/range {v6 .. v11}, Lgb9;->c(JJJ)V

    new-instance v5, Lf37;

    invoke-direct {v5, v2, v4, v3}, Lf37;-><init>(Lj95;I[B)V

    invoke-virtual {v0, v1, v5}, Lb37$a;->c(Ljava/lang/String;Lg37;)V

    goto :goto_0

    :pswitch_1
    const-string v1, "HEAD"

    invoke-virtual {v0, v1, v2}, Lb37$a;->c(Ljava/lang/String;Lg37;)V

    goto :goto_0

    :pswitch_2
    const-string v1, "GET"

    invoke-virtual {v0, v1, v2}, Lb37$a;->c(Ljava/lang/String;Lg37;)V

    :goto_0
    invoke-virtual {p0}, Lio/appmetrica/analytics/networkapi/Request;->getHeaders()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lb37$a;->c:Ljv3$a;

    invoke-virtual {v3, v2, v1}, Ljv3$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lb37$a;->a()Lb37;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljv3;)Ljava/util/LinkedHashMap;
    .locals 5

    .line 126
    invoke-virtual {p0}, Ljv3;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lkx6;->n(II)Ly74;

    move-result-object v0

    .line 127
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 128
    invoke-virtual {v0}, Lw74;->b()Lx74;

    move-result-object v0

    .line 129
    :goto_0
    iget-boolean v2, v0, Lx74;->d:Z

    if-eqz v2, :cond_1

    .line 130
    invoke-virtual {v0}, Lx74;->nextInt()I

    move-result v2

    .line 131
    invoke-virtual {p0, v2}, Ljv3;->b(I)Ljava/lang/String;

    move-result-object v3

    .line 132
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 133
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 134
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_0
    check-cast v4, Ljava/util/List;

    .line 136
    invoke-virtual {p0, v2}, Ljv3;->g(I)Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static final a(Lio/appmetrica/analytics/networkokhttp/impl/d;Lokhttp3/a;)Lokhttp3/b;
    .locals 0

    .line 138
    return-object p0
.end method


# virtual methods
.method public final execute()Lio/appmetrica/analytics/networkapi/Response;
    .locals 10

    iget-object v0, p0, Lio/appmetrica/analytics/networkokhttp/impl/c;->c:Lio/appmetrica/analytics/networkapi/NetworkClientSettings;

    invoke-virtual {v0}, Lio/appmetrica/analytics/networkapi/NetworkClientSettings;->getCollectMetrics()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/networkokhttp/impl/d;

    new-instance v2, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-direct {v2}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;-><init>()V

    invoke-direct {v0, v2}, Lio/appmetrica/analytics/networkokhttp/impl/d;-><init>(Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lio/appmetrica/analytics/networkokhttp/impl/c;->a:Lokhttp3/OkHttpClient;

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->e()Lokhttp3/OkHttpClient$a;

    move-result-object v2

    new-instance v3, Ljv;

    const/4 v4, 0x3

    invoke-direct {v3, v0, v4}, Ljv;-><init>(Ljava/lang/Object;I)V

    iput-object v3, v2, Lokhttp3/OkHttpClient$a;->e:Lokhttp3/b$c;

    new-instance v3, Lokhttp3/OkHttpClient;

    invoke-direct {v3, v2}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$a;)V

    move-object v2, v3

    :cond_1
    :try_start_0
    iget-object v3, p0, Lio/appmetrica/analytics/networkokhttp/impl/c;->b:Lio/appmetrica/analytics/networkapi/Request;

    invoke-static {v3}, Lio/appmetrica/analytics/networkokhttp/impl/c;->a(Lio/appmetrica/analytics/networkapi/Request;)Lb37;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient;->b(Lb37;)Ljy6;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->execute(Lokhttp3/a;)Lz47;

    move-result-object v2

    sget-object v3, Lio/appmetrica/analytics/coreutils/internal/io/InputStreamUtils;->INSTANCE:Lio/appmetrica/analytics/coreutils/internal/io/InputStreamUtils;

    iget-object p0, p0, Lio/appmetrica/analytics/networkokhttp/impl/c;->c:Lio/appmetrica/analytics/networkapi/NetworkClientSettings;

    invoke-virtual {p0}, Lio/appmetrica/analytics/networkapi/NetworkClientSettings;->getMaxResponseSize()I

    move-result p0

    new-instance v4, Lio/appmetrica/analytics/networkokhttp/impl/b;

    invoke-direct {v4, v2}, Lio/appmetrica/analytics/networkokhttp/impl/b;-><init>(Lz47;)V

    invoke-virtual {v3, p0, v4}, Lio/appmetrica/analytics/coreutils/internal/io/InputStreamUtils;->readSafelyApprox(ILll3;)[B

    move-result-object p0

    new-instance v3, Lio/appmetrica/analytics/networkapi/Response$Builder;

    iget v4, v2, Lz47;->e:I

    const/4 v5, 0x1

    invoke-direct {v3, v5, v4, p0}, Lio/appmetrica/analytics/networkapi/Response$Builder;-><init>(ZI[B)V

    iget-object p0, v2, Lz47;->g:Ljv3;

    invoke-static {p0}, Lio/appmetrica/analytics/networkokhttp/impl/c;->a(Ljv3;)Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-virtual {v3, p0}, Lio/appmetrica/analytics/networkapi/Response$Builder;->withHeaders(Ljava/util/Map;)Lio/appmetrica/analytics/networkapi/Response$Builder;

    move-result-object p0

    iget-object v2, v2, Lz47;->b:Lb37;

    iget-object v2, v2, Lb37;->a:Lfz3;

    iget-object v2, v2, Lfz3;->i:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lio/appmetrica/analytics/networkapi/Response$Builder;->withUrl(Ljava/lang/String;)Lio/appmetrica/analytics/networkapi/Response$Builder;

    move-result-object p0

    if-eqz v0, :cond_2

    iget-wide v2, v0, Lio/appmetrica/analytics/networkokhttp/impl/d;->b:J

    iget-wide v4, v0, Lio/appmetrica/analytics/networkokhttp/impl/d;->c:J

    invoke-static {v2, v3, v4, v5}, Lio/appmetrica/analytics/networkokhttp/impl/d;->a(JJ)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, v0, Lio/appmetrica/analytics/networkokhttp/impl/d;->d:J

    iget-wide v5, v0, Lio/appmetrica/analytics/networkokhttp/impl/d;->e:J

    invoke-static {v3, v4, v5, v6}, Lio/appmetrica/analytics/networkokhttp/impl/d;->a(JJ)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v0, Lio/appmetrica/analytics/networkokhttp/impl/d;->f:J

    iget-wide v6, v0, Lio/appmetrica/analytics/networkokhttp/impl/d;->g:J

    invoke-static {v4, v5, v6, v7}, Lio/appmetrica/analytics/networkokhttp/impl/d;->a(JJ)Ljava/lang/Long;

    move-result-object v4

    iget-wide v5, v0, Lio/appmetrica/analytics/networkokhttp/impl/d;->h:J

    iget-wide v7, v0, Lio/appmetrica/analytics/networkokhttp/impl/d;->i:J

    invoke-static {v5, v6, v7, v8}, Lio/appmetrica/analytics/networkokhttp/impl/d;->a(JJ)Ljava/lang/Long;

    move-result-object v5

    iget-wide v6, v0, Lio/appmetrica/analytics/networkokhttp/impl/d;->i:J

    iget-wide v8, v0, Lio/appmetrica/analytics/networkokhttp/impl/d;->j:J

    invoke-static {v6, v7, v8, v9}, Lio/appmetrica/analytics/networkokhttp/impl/d;->a(JJ)Ljava/lang/Long;

    move-result-object v6

    new-instance v7, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;

    invoke-direct {v7}, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;-><init>()V

    invoke-virtual {v7, v2}, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;->withDnsLookup(Ljava/lang/Long;)Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;->withTcpConnect(Ljava/lang/Long;)Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;->withTlsHandshake(Ljava/lang/Long;)Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;->withTimeToFirstByte(Ljava/lang/Long;)Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;->withResponse(Ljava/lang/Long;)Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;

    move-result-object v2

    iget-boolean v3, v0, Lio/appmetrica/analytics/networkokhttp/impl/d;->l:Z

    invoke-virtual {v2, v3}, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;->withConnectionReused(Z)Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;

    move-result-object v2

    iget-object v3, v0, Lio/appmetrica/analytics/networkokhttp/impl/d;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;->withProtocol(Ljava/lang/String;)Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;->build()Lio/appmetrica/analytics/networkapi/NetworkCallMetrics;

    move-result-object v2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_1
    invoke-virtual {p0, v2}, Lio/appmetrica/analytics/networkapi/Response$Builder;->withMetrics(Lio/appmetrica/analytics/networkapi/NetworkCallMetrics;)Lio/appmetrica/analytics/networkapi/Response$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/networkapi/Response$Builder;->build()Lio/appmetrica/analytics/networkapi/Response;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :goto_2
    new-instance v2, Lio/appmetrica/analytics/networkapi/Response$Builder;

    invoke-direct {v2, p0}, Lio/appmetrica/analytics/networkapi/Response$Builder;-><init>(Ljava/lang/Throwable;)V

    if-eqz v0, :cond_3

    iget-wide v3, v0, Lio/appmetrica/analytics/networkokhttp/impl/d;->b:J

    iget-wide v5, v0, Lio/appmetrica/analytics/networkokhttp/impl/d;->c:J

    invoke-static {v3, v4, v5, v6}, Lio/appmetrica/analytics/networkokhttp/impl/d;->a(JJ)Ljava/lang/Long;

    move-result-object p0

    iget-wide v3, v0, Lio/appmetrica/analytics/networkokhttp/impl/d;->d:J

    iget-wide v5, v0, Lio/appmetrica/analytics/networkokhttp/impl/d;->e:J

    invoke-static {v3, v4, v5, v6}, Lio/appmetrica/analytics/networkokhttp/impl/d;->a(JJ)Ljava/lang/Long;

    move-result-object v1

    iget-wide v3, v0, Lio/appmetrica/analytics/networkokhttp/impl/d;->f:J

    iget-wide v5, v0, Lio/appmetrica/analytics/networkokhttp/impl/d;->g:J

    invoke-static {v3, v4, v5, v6}, Lio/appmetrica/analytics/networkokhttp/impl/d;->a(JJ)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v0, Lio/appmetrica/analytics/networkokhttp/impl/d;->h:J

    iget-wide v6, v0, Lio/appmetrica/analytics/networkokhttp/impl/d;->i:J

    invoke-static {v4, v5, v6, v7}, Lio/appmetrica/analytics/networkokhttp/impl/d;->a(JJ)Ljava/lang/Long;

    move-result-object v4

    iget-wide v5, v0, Lio/appmetrica/analytics/networkokhttp/impl/d;->i:J

    iget-wide v7, v0, Lio/appmetrica/analytics/networkokhttp/impl/d;->j:J

    invoke-static {v5, v6, v7, v8}, Lio/appmetrica/analytics/networkokhttp/impl/d;->a(JJ)Ljava/lang/Long;

    move-result-object v5

    new-instance v6, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;

    invoke-direct {v6}, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;-><init>()V

    invoke-virtual {v6, p0}, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;->withDnsLookup(Ljava/lang/Long;)Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;->withTcpConnect(Ljava/lang/Long;)Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;

    move-result-object p0

    invoke-virtual {p0, v3}, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;->withTlsHandshake(Ljava/lang/Long;)Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;

    move-result-object p0

    invoke-virtual {p0, v4}, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;->withTimeToFirstByte(Ljava/lang/Long;)Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;

    move-result-object p0

    invoke-virtual {p0, v5}, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;->withResponse(Ljava/lang/Long;)Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;

    move-result-object p0

    iget-boolean v1, v0, Lio/appmetrica/analytics/networkokhttp/impl/d;->l:Z

    invoke-virtual {p0, v1}, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;->withConnectionReused(Z)Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;

    move-result-object p0

    iget-object v0, v0, Lio/appmetrica/analytics/networkokhttp/impl/d;->k:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;->withProtocol(Ljava/lang/String;)Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/networkapi/NetworkCallMetrics$Builder;->build()Lio/appmetrica/analytics/networkapi/NetworkCallMetrics;

    move-result-object v1

    :cond_3
    invoke-virtual {v2, v1}, Lio/appmetrica/analytics/networkapi/Response$Builder;->withMetrics(Lio/appmetrica/analytics/networkapi/NetworkCallMetrics;)Lio/appmetrica/analytics/networkapi/Response$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/networkapi/Response$Builder;->build()Lio/appmetrica/analytics/networkapi/Response;

    move-result-object p0

    return-object p0
.end method
