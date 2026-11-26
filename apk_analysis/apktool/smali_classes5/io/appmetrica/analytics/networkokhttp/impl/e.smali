.class public abstract Lio/appmetrica/analytics/networkokhttp/impl/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lio/appmetrica/analytics/networkapi/NetworkClientSettings;)Lokhttp3/OkHttpClient;
    .locals 9

    new-instance v0, Lokhttp3/OkHttpClient$a;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$a;-><init>()V

    sget-object v1, Lts6;->HTTP_2:Lts6;

    sget-object v2, Lts6;->HTTP_1_1:Lts6;

    filled-new-array {v1, v2}, [Lts6;

    move-result-object v1

    invoke-static {v1}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v1, Lts6;->H2_PRIOR_KNOWLEDGE:Lts6;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "protocols must contain h2_prior_knowledge or http/1.1: "

    invoke-static {v3, p0}, Leg;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v5

    :cond_1
    :goto_0
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const-string p0, "protocols containing h2_prior_knowledge cannot use other protocols: "

    invoke-static {v3, p0}, Leg;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v5

    :cond_3
    :goto_1
    sget-object v1, Lts6;->HTTP_1_0:Lts6;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    sget-object v1, Lts6;->SPDY_3:Lts6;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Lokhttp3/OkHttpClient$a;->s:Ljava/util/List;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iput-object v5, v0, Lokhttp3/OkHttpClient$a;->B:Lj87;

    :cond_4
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v0, Lokhttp3/OkHttpClient$a;->s:Ljava/util/List;

    invoke-virtual {p0}, Lio/appmetrica/analytics/networkapi/NetworkClientSettings;->getReadTimeout()Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4, v2}, Lgb9;->b(JLjava/util/concurrent/TimeUnit;)I

    move-result v1

    iput v1, v0, Lokhttp3/OkHttpClient$a;->y:I

    :cond_5
    invoke-virtual {p0}, Lio/appmetrica/analytics/networkapi/NetworkClientSettings;->getConnectTimeout()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4, v2}, Lgb9;->b(JLjava/util/concurrent/TimeUnit;)I

    move-result v1

    iput v1, v0, Lokhttp3/OkHttpClient$a;->x:I

    :cond_6
    invoke-virtual {p0}, Lio/appmetrica/analytics/networkapi/NetworkClientSettings;->getCallTimeout()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4, v2}, Lgb9;->b(JLjava/util/concurrent/TimeUnit;)I

    move-result v1

    iput v1, v0, Lokhttp3/OkHttpClient$a;->w:I

    :cond_7
    invoke-virtual {p0}, Lio/appmetrica/analytics/networkapi/NetworkClientSettings;->getInstanceFollowRedirects()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lokhttp3/OkHttpClient$a;->h:Z

    :cond_8
    :try_start_0
    const-string v1, "debug.yndx.iaa.okhttp.mock"

    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/system/SystemPropertiesHelper;->readSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object v1, v5

    goto :goto_2

    :cond_9
    const-class v2, Lio/appmetrica/analytics/networkokhttp/internal/InterceptorSupplier;

    invoke-static {v1, v2}, Lio/appmetrica/analytics/coreutils/internal/reflection/ReflectionUtils;->loadAndInstantiateClassWithDefaultConstructor(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/networkokhttp/internal/InterceptorSupplier;

    :goto_2
    if-eqz v1, :cond_a

    invoke-interface {v1}, Lio/appmetrica/analytics/networkokhttp/internal/InterceptorSupplier;->get()Lf94;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v2, v0, Lokhttp3/OkHttpClient$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_a
    invoke-virtual {p0}, Lio/appmetrica/analytics/networkapi/NetworkClientSettings;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    if-eqz v1, :cond_f

    :try_start_1
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v4, v2

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v4, :cond_c

    aget-object v7, v2, v6

    instance-of v8, v7, Ljavax/net/ssl/X509TrustManager;

    if-eqz v8, :cond_b

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_c
    invoke-static {v3}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    if-eqz v2, :cond_f

    iget-object v3, v0, Lokhttp3/OkHttpClient$a;->p:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, v0, Lokhttp3/OkHttpClient$a;->q:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    :cond_d
    iput-object v5, v0, Lokhttp3/OkHttpClient$a;->B:Lj87;

    :cond_e
    iput-object v1, v0, Lokhttp3/OkHttpClient$a;->p:Ljavax/net/ssl/SSLSocketFactory;

    sget-object v1, Lz86;->a:Lz86;

    sget-object v1, Lz86;->a:Lz86;

    invoke-virtual {v1, v2}, Lz86;->b(Ljavax/net/ssl/X509TrustManager;)Ly14;

    move-result-object v1

    iput-object v1, v0, Lokhttp3/OkHttpClient$a;->v:Ly14;

    iput-object v2, v0, Lokhttp3/OkHttpClient$a;->q:Ljavax/net/ssl/X509TrustManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_f
    invoke-virtual {p0}, Lio/appmetrica/analytics/networkapi/NetworkClientSettings;->getUseCaches()Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_10

    iput-object v5, v0, Lokhttp3/OkHttpClient$a;->k:Llx0;

    :cond_10
    new-instance p0, Lokhttp3/OkHttpClient;

    invoke-direct {p0, v0}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$a;)V

    return-object p0

    :cond_11
    const-string p0, "protocols must not contain null"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v5

    :cond_12
    const-string p0, "protocols must not contain http/1.0: "

    invoke-static {v3, p0}, Leg;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v5
.end method
