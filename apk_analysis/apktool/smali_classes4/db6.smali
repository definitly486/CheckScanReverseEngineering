.class public final Ldb6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lta6;

.field public final b:Lfh8;

.field public final c:Lokhttp3/OkHttpClient;

.field public final d:Lfh8;


# direct methods
.method public constructor <init>(Lta6;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldb6;->a:Lta6;

    new-instance v0, Ltc4;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ltc4;-><init>(I)V

    new-instance v1, Lfh8;

    invoke-direct {v1, v0}, Lfh8;-><init>(Lll3;)V

    iput-object v1, p0, Ldb6;->b:Lfh8;

    new-instance v0, Lokhttp3/OkHttpClient$a;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$a;-><init>()V

    new-instance v1, Lvt3;

    invoke-direct {v1, p1}, Lvt3;-><init>(Lta6;)V

    iget-object v2, v0, Lokhttp3/OkHttpClient$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Le72;

    invoke-direct {v1, p1}, Le72;-><init>(Lta6;)V

    iget-object p1, v0, Lokhttp3/OkHttpClient$a;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lokhttp3/OkHttpClient;

    invoke-direct {p1, v0}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$a;)V

    iput-object p1, p0, Ldb6;->c:Lokhttp3/OkHttpClient;

    new-instance p1, Lez0;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lez0;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lfh8;

    invoke-direct {v0, p1}, Lfh8;-><init>(Lll3;)V

    iput-object v0, p0, Ldb6;->d:Lfh8;

    return-void
.end method

.method public static e(Ldb6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;Ljava/util/Map;)Lcom/posthog/internal/PostHogFlagsResponse;
    .locals 12

    new-instance v0, Lcom/posthog/internal/PostHogFlagsRequest;

    iget-object v11, p0, Ldb6;->a:Lta6;

    iget-object v1, v11, Lnb6;->t:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v10}, Lcom/posthog/internal/PostHogFlagsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ldb6;->f()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/flags/?v=2"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcb6;

    invoke-direct {p2, p0, v0}, Lcb6;-><init>(Ldb6;Lcom/posthog/internal/PostHogFlagsRequest;)V

    invoke-virtual {p0, p1, p2}, Ldb6;->g(Ljava/lang/String;Lnl3;)Lb37;

    move-result-object p1

    iget p2, v11, Lnb6;->j:I

    const/4 v1, 0x0

    if-gez p2, :cond_0

    move p2, v1

    :cond_0
    move v2, v1

    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Ldb6;->c(Lb37;)Lcom/posthog/internal/PostHogFlagsResponse;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    if-ge v2, p2, :cond_7

    instance-of v3, v0, Lcom/posthog/internal/PostHogApiError;

    if-eqz v3, :cond_1

    move-object v3, v0

    check-cast v3, Lcom/posthog/internal/PostHogApiError;

    const/16 v4, 0x1f6

    iget v3, v3, Lcom/posthog/internal/PostHogApiError;->b:I

    if-eq v3, v4, :cond_2

    const/16 v4, 0x1f8

    if-ne v3, v4, :cond_7

    goto :goto_1

    :cond_1
    instance-of v3, v0, Ljava/io/IOException;

    if-eqz v3, :cond_7

    instance-of v3, v0, Ljava/net/SocketTimeoutException;

    if-nez v3, :cond_2

    instance-of v3, v0, Ljava/io/EOFException;

    if-nez v3, :cond_2

    instance-of v3, v0, Ljava/net/SocketException;

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    const-string v4, "reset"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-ne v3, v5, :cond_7

    :cond_2
    :goto_1
    add-int/lit8 v0, v2, 0x1

    if-gez v2, :cond_3

    move v2, v1

    :cond_3
    const-wide/16 v3, 0x12c

    move v5, v1

    :goto_2
    const-wide/16 v6, 0x7530

    if-ge v5, v2, :cond_5

    const-wide/16 v8, 0x3a98

    cmp-long v8, v3, v8

    if-ltz v8, :cond_4

    :goto_3
    move-wide v3, v6

    goto :goto_4

    :cond_4
    const-wide/16 v6, 0x2

    mul-long/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    cmp-long v2, v3, v6

    if-lez v2, :cond_6

    goto :goto_3

    :cond_6
    :goto_4
    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p0, v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    new-instance p1, Ljava/io/IOException;

    const-string p2, "Interrupted while waiting to retry feature flags request."

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_7
    throw v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/posthog/PostHogEvent;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/posthog/internal/PostHogBatchEvent;

    iget-object v1, p0, Ldb6;->a:Lta6;

    iget-object v1, v1, Lnb6;->t:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/posthog/internal/PostHogBatchEvent;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Date;ILjh2;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ldb6;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/batch"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lab6;

    invoke-direct {v1, v0, p0, p1}, Lab6;-><init>(Lcom/posthog/internal/PostHogBatchEvent;Ldb6;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Ldb6;->g(Ljava/lang/String;Lnl3;)Lb37;

    move-result-object p1

    invoke-virtual {p0, p1}, Ldb6;->d(Lb37;)V

    return-void
.end method

.method public final b(Lb57;)Lcom/posthog/internal/PostHogFlagsResponse;
    .locals 3

    iget-object p0, p0, Ldb6;->a:Lta6;

    :try_start_0
    invoke-virtual {p0}, Lnb6;->b()Lwd6;

    move-result-object v0

    invoke-virtual {p1}, Lb57;->n()Ljava/io/Reader;

    move-result-object p1

    instance-of v1, p1, Ljava/io/BufferedReader;

    if-eqz v1, :cond_0

    check-cast p1, Ljava/io/BufferedReader;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v2, 0x2000

    invoke-direct {v1, p1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object p1, v1

    :goto_0
    iget-object v0, v0, Lwd6;->a:Lcom/google/gson/Gson;

    new-instance v1, Ldb6$b;

    invoke-direct {v1}, Ldb6$b;-><init>()V

    iget-object v1, v1, Lx39;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->e(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/posthog/internal/PostHogFlagsResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    instance-of v0, p1, Lcom/google/gson/JsonIOException;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/google/gson/JsonSyntaxException;

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    const-string v0, "response could not be parsed"

    goto :goto_3

    :cond_2
    :goto_2
    const-string v0, "response was not valid JSON"

    :goto_3
    iget-object p0, p0, Lnb6;->v:Lic6;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Loading feature flags failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lic6;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final c(Lb37;)Lcom/posthog/internal/PostHogFlagsResponse;
    .locals 3

    iget-object v0, p0, Ldb6;->d:Lfh8;

    invoke-virtual {v0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljy6;

    invoke-direct {v1, v0, p1}, Ljy6;-><init>(Lokhttp3/OkHttpClient;Lb37;)V

    invoke-static {v1}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->execute(Lokhttp3/a;)Lz47;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Lz47;->o()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lz47;->h:Lb57;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Ldb6;->b(Lb57;)Lcom/posthog/internal/PostHogFlagsResponse;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, v1}, Lm96;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-static {p1, v1}, Lm96;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    :cond_1
    :try_start_1
    new-instance p0, Lcom/posthog/internal/PostHogApiError;

    iget v0, p1, Lz47;->e:I

    iget-object v2, p1, Lz47;->d:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1}, Lcom/posthog/internal/PostHogApiError;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, p0}, Lm96;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final d(Lb37;)V
    .locals 5

    iget-object p0, p0, Ldb6;->c:Lokhttp3/OkHttpClient;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljy6;

    invoke-direct {v0, p0, p1}, Ljy6;-><init>(Lokhttp3/OkHttpClient;Lb37;)V

    invoke-static {v0}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->execute(Lokhttp3/a;)Lz47;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Lz47;->o()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    new-instance p1, Lcom/posthog/internal/PostHogApiError;

    iget v1, p0, Lz47;->e:I

    iget-object v2, p0, Lz47;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v3, "Retry-After"

    invoke-static {p0, v3}, Lz47;->n(Lz47;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const/16 v4, 0xa

    invoke-static {v4, v3}, Lqa8;->o(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_0
    :try_start_2
    invoke-direct {p1, v2, v1, v0}, Lcom/posthog/internal/PostHogApiError;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    throw p1

    :catchall_1
    move-exception p1

    goto :goto_0

    :cond_1
    sget-object p1, Lj59;->a:Lj59;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {p0, v0}, Lm96;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :goto_0
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {p0, p1}, Lm96;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Ldb6;->a:Lta6;

    iget-object p0, p0, Lnb6;->u:Ljava/lang/String;

    const-string v0, "/"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lra8;->u(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0, v1, p0}, Lrg;->f(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final g(Ljava/lang/String;Lnl3;)Lb37;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnl3<",
            "-",
            "Ljava/io/OutputStream;",
            "Lj59;",
            ">;)",
            "Lb37;"
        }
    .end annotation

    new-instance v0, Ldb6$c;

    invoke-direct {v0, p0, p2}, Ldb6$c;-><init>(Ldb6;Lnl3;)V

    new-instance p2, Lb37$a;

    invoke-direct {p2}, Lb37$a;-><init>()V

    invoke-virtual {p2, p1}, Lb37$a;->e(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Ldb6;->a:Lta6;

    iget-object v1, p0, Lnb6;->y:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnb6;->z:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "User-Agent"

    invoke-virtual {p2, p1, p0}, Lb37$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "POST"

    invoke-virtual {p2, p0, v0}, Lb37$a;->c(Ljava/lang/String;Lg37;)V

    invoke-virtual {p2}, Lb37$a;->a()Lb37;

    move-result-object p0

    return-object p0
.end method

.method public final h()Lcom/posthog/internal/PostHogRemoteConfigResponse;
    .locals 5

    invoke-virtual {p0}, Ldb6;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://us.i.posthog.com"

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "https://us-assets.i.posthog.com"

    goto :goto_0

    :cond_0
    const-string v1, "https://eu.i.posthog.com"

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "https://eu-assets.i.posthog.com"

    :cond_1
    :goto_0
    new-instance v1, Lb37$a;

    invoke-direct {v1}, Lb37$a;-><init>()V

    const-string v2, "/array/"

    invoke-static {v0, v2}, Lti0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ldb6;->a:Lta6;

    iget-object v3, v2, Lnb6;->t:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/config"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lb37$a;->e(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v2, Lnb6;->y:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lnb6;->z:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "User-Agent"

    invoke-virtual {v1, v3, v0}, Lb37$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Type"

    const-string v3, "application/json; charset=utf-8"

    invoke-virtual {v1, v0, v3}, Lb37$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GET"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lb37$a;->c(Ljava/lang/String;Lg37;)V

    invoke-virtual {v1}, Lb37$a;->a()Lb37;

    move-result-object v0

    iget-object p0, p0, Ldb6;->c:Lokhttp3/OkHttpClient;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljy6;

    invoke-direct {v1, p0, v0}, Ljy6;-><init>(Lokhttp3/OkHttpClient;Lb37;)V

    invoke-static {v1}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->execute(Lokhttp3/a;)Lz47;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Lz47;->o()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lz47;->h:Lb57;

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Lnb6;->b()Lwd6;

    move-result-object v1

    invoke-virtual {v0}, Lb57;->n()Ljava/io/Reader;

    move-result-object v0

    instance-of v2, v0, Ljava/io/BufferedReader;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/io/BufferedReader;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v4, 0x2000

    invoke-direct {v2, v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v0, v2

    :goto_1
    iget-object v1, v1, Lwd6;->a:Lcom/google/gson/Gson;

    new-instance v2, Ldb6$d;

    invoke-direct {v2}, Ldb6$d;-><init>()V

    iget-object v2, v2, Lx39;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->e(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/posthog/internal/PostHogRemoteConfigResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0, v3}, Lm96;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :cond_3
    invoke-static {p0, v3}, Lm96;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v3

    :cond_4
    :try_start_1
    new-instance v0, Lcom/posthog/internal/PostHogApiError;

    iget v1, p0, Lz47;->e:I

    iget-object v2, p0, Lz47;->d:Ljava/lang/String;

    invoke-direct {v0, v2, v1, v3}, Lcom/posthog/internal/PostHogApiError;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p0, v0}, Lm96;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
