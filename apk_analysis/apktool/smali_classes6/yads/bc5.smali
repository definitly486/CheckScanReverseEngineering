.class public final Lyads/bc5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/zg5;


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lyads/zg5;->l:Lyads/zg5;

    if-nez v0, :cond_1

    sget-object v0, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lyads/zg5;->l:Lyads/zg5;

    if-nez v1, :cond_0

    new-instance v1, Lyads/zg5;

    invoke-direct {v1}, Lyads/zg5;-><init>()V

    sput-object v1, Lyads/zg5;->l:Lyads/zg5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    move-object v0, v1

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    :cond_1
    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/bc5;->a:Lyads/zg5;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 3

    iget-object p0, p0, Lyads/bc5;->a:Lyads/zg5;

    invoke-virtual {p0, p1}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object p0

    sget v0, Lyads/cc0;->a:I

    new-instance v0, Lyads/de5;

    invoke-direct {v0, p1}, Lyads/de5;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lyads/fe5;->x:Z

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    invoke-static {v0}, Lyads/bs3;->a(Lyads/de5;)Lyads/dh5;

    move-result-object p0

    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    new-array v1, v1, [Ljavax/net/ssl/X509TrustManager;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    check-cast v1, [Ljavax/net/ssl/TrustManager;

    invoke-virtual {v0, p1, v1, p1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    const-string v0, "Failed to initialize SSLContext"

    invoke-static {v0, p0}, Lh2;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1

    :goto_1
    const-string v0, "No system TLS"

    invoke-static {v0, p0}, Lh2;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1

    :cond_0
    const/16 p0, 0x15

    invoke-static {p0}, Lyads/za;->a(I)Z

    move-result p0

    if-eqz p0, :cond_1

    sget p0, Lyads/ay4;->b:I

    :try_start_1
    const-string p0, "TLSv1.2"

    invoke-static {p0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    invoke-virtual {p0, p1, p1, p1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_2
    .catch Ljava/security/KeyManagementException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_3

    :catch_2
    :try_start_3
    new-instance v0, Lyads/ay4;

    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/ay4;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_3

    move-object p1, v0

    :catch_3
    :cond_1
    return-object p1
.end method
