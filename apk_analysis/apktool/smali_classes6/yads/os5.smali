.class public final Lyads/os5;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    sget-object p0, Lyads/zg5;->l:Lyads/zg5;

    if-nez p0, :cond_1

    sget-object p0, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lyads/zg5;->l:Lyads/zg5;

    if-nez v0, :cond_0

    new-instance v0, Lyads/zg5;

    invoke-direct {v0}, Lyads/zg5;-><init>()V

    sput-object v0, Lyads/zg5;->l:Lyads/zg5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    move-object p0, v0

    goto :goto_2

    :goto_1
    monitor-exit p0

    throw p1

    :cond_1
    :goto_2
    invoke-virtual {p0, p1}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-object p0, p0, Lyads/fe5;->b0:Lyads/nn2;

    if-nez p0, :cond_3

    :cond_2
    sget-object p0, Lyads/nn2;->c:Lyads/nn2;

    :cond_3
    iget-object p1, p0, Lyads/nn2;->a:Ljava/lang/String;

    iget p0, p0, Lyads/nn2;->b:I

    new-instance v0, Lyads/c94;

    invoke-direct {v0, p1, p0}, Lyads/c94;-><init>(Ljava/lang/String;I)V

    sget-object p0, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {p1, p2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance p2, Ljava/security/SecureRandom;

    invoke-direct {p2}, Ljava/security/SecureRandom;-><init>()V

    const/16 v2, 0x10

    new-array v3, v2, [B

    new-array v2, v2, [B

    invoke-virtual {p2, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-virtual {p2, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    const-string p2, "RSA"

    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p2

    new-instance v4, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v4, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {p2, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    invoke-virtual {v0, p0, v2, v3, p1}, Lyads/c94;->a([B[B[BLjava/security/PublicKey;)[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    :cond_4
    move-object p0, v1

    :goto_3
    if-eqz p0, :cond_5

    invoke-static {p0}, Lyads/xo;->a([B)Ljava/lang/String;

    move-result-object v1

    :cond_5
    return-object v1
.end method
