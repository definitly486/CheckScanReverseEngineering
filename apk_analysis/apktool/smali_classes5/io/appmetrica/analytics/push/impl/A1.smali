.class public final Lio/appmetrica/analytics/push/impl/A1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/push/impl/C0;


# instance fields
.field public final a:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Llx0;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1}, Llx0;-><init>(Ljava/io/File;)V

    new-instance p1, Lokhttp3/OkHttpClient$a;

    invoke-direct {p1}, Lokhttp3/OkHttpClient$a;-><init>()V

    iput-object v0, p1, Lokhttp3/OkHttpClient$a;->k:Llx0;

    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0, p1}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$a;)V

    iput-object v0, p0, Lio/appmetrica/analytics/push/impl/A1;->a:Lokhttp3/OkHttpClient;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)[B
    .locals 4

    new-instance v0, Lb37$a;

    invoke-direct {v0}, Lb37$a;-><init>()V

    invoke-virtual {v0, p1}, Lb37$a;->e(Ljava/lang/String;)V

    invoke-virtual {v0}, Lb37$a;->a()Lb37;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/A1;->a:Lokhttp3/OkHttpClient;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljy6;

    invoke-direct {v1, p0, p1}, Ljy6;-><init>(Lokhttp3/OkHttpClient;Lb37;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {v1}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->execute(Lokhttp3/a;)Lz47;

    move-result-object p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object p1, p0, Lz47;->j:Lz47;

    iget-object p1, p0, Lz47;->h:Lb57;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lb57;->m()[B

    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, p0

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_0
    :goto_0
    invoke-static {p0}, Lio/appmetrica/analytics/push/impl/G2;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception p1

    :goto_1
    move-object p0, v0

    goto :goto_4

    :goto_2
    move-object p1, p0

    goto :goto_5

    :goto_3
    move-object p1, p0

    goto :goto_1

    :catchall_2
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    goto :goto_3

    :goto_4
    :try_start_4
    sget-object v1, Lio/appmetrica/analytics/push/logger/internal/PublicLogger;->INSTANCE:Lio/appmetrica/analytics/push/logger/internal/PublicLogger;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2, v3}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {p0}, Lio/appmetrica/analytics/push/impl/G2;->a(Ljava/io/Closeable;)V

    return-object v0

    :goto_5
    invoke-static {v0}, Lio/appmetrica/analytics/push/impl/G2;->a(Ljava/io/Closeable;)V

    throw p1
.end method
