.class public final Lyads/eh5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/dc0;

.field public final b:Lcl4;

.field public c:Ljava/security/KeyStore;

.field public d:Ljavax/net/ssl/X509TrustManager;

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lyads/dc0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/eh5;->a:Lyads/dc0;

    new-instance p1, Ld94;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ld94;-><init>(I)V

    new-instance v0, Lfh8;

    invoke-direct {v0, p1}, Lfh8;-><init>(Lll3;)V

    iput-object v0, p0, Lyads/eh5;->b:Lcl4;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/eh5;->e:Ljava/lang/Object;

    return-void
.end method

.method public static final a()Ljavax/net/ssl/X509TrustManager;
    .locals 2

    const/4 v0, 0x0

    .line 51
    invoke-static {v0}, Lyads/k26;->a(Ljava/security/KeyStore;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 52
    :cond_0
    const-string v1, "Failed to create default TrustManager"

    invoke-static {v1}, Lfg;->c(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/security/KeyStore;Ljava/security/cert/X509Certificate;)V
    .locals 3

    const-string v0, "custom_cert_"

    .line 53
    :try_start_0
    invoke-virtual {p0}, Ljava/security/KeyStore;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 54
    const-string p1, "SdkTrustManager"

    const-string v0, "Failed to store certificate"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public final a([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lyads/eh5;->b:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lyads/eh5;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    invoke-virtual {p0}, Lyads/eh5;->b()V

    invoke-virtual {p0}, Lyads/eh5;->c()V

    iget-object p0, p0, Lyads/eh5;->d:Ljavax/net/ssl/X509TrustManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    sget-object p0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :cond_1
    :try_start_2
    const-string p0, "SdkTrustManager"

    const-string p1, "Custom TrustManager is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit v1

    throw p0
.end method

.method public final b()V
    .locals 8

    const-string v0, "Failed to create cert"

    invoke-virtual {p0}, Lyads/eh5;->c()V

    invoke-virtual {p0}, Lyads/eh5;->c()V

    iget-object v1, p0, Lyads/eh5;->c:Ljava/security/KeyStore;

    if-nez v1, :cond_5

    sget-object v1, Lyads/k26;->a:Lcl4;

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, v1

    :catch_1
    :goto_0
    if-nez v2, :cond_0

    const-string v0, "SdkTrustManager"

    const-string v2, "Custom KeyStore is null, failed to add certs"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_0
    iget-object v3, p0, Lyads/eh5;->a:Lyads/dc0;

    check-cast v3, Lyads/de5;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_2
    iget-object v4, v3, Lyads/de5;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yandex/mobile/ads/R$raw;->monetization_ads_sdkinternalca:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :try_start_3
    invoke-static {v4}, Lex0;->d(Ljava/io/InputStream;)[B

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :try_start_5
    iget-object v3, v3, Lyads/de5;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yandex/mobile/ads/R$raw;->monetization_ads_bundled_cert:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :try_start_6
    invoke-static {v3}, Lex0;->d(Ljava/io/InputStream;)[B

    move-result-object v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    filled-new-array {v4}, [[B

    move-result-object v0

    filled-new-array {v5}, [[B

    move-result-object v3

    invoke-static {v0, v3}, Laq5;->A([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v4, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    aget-object v6, v0, v5

    sget-object v7, Lyads/k26;->a:Lcl4;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_8
    sget-object v6, Lyads/k26;->a:Lcl4;

    invoke-interface {v6}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/CertificateFactory;

    if-eqz v6, :cond_1

    invoke-virtual {v6, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v6

    goto :goto_2

    :cond_1
    move-object v6, v1

    :goto_2
    check-cast v6, Ljava/security/cert/X509Certificate;
    :try_end_8
    .catch Ljava/security/cert/CertificateException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_3

    :catch_2
    move-object v6, v1

    :goto_3
    if-eqz v6, :cond_2

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-static {v2, v1}, Lyads/eh5;->a(Ljava/security/KeyStore;Ljava/security/cert/X509Certificate;)V

    goto :goto_4

    :cond_4
    move-object v1, v2

    :goto_5
    iput-object v1, p0, Lyads/eh5;->c:Ljava/security/KeyStore;

    goto :goto_8

    :catch_3
    move-exception p0

    goto :goto_6

    :catchall_0
    move-exception p0

    :try_start_9
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_a
    invoke-static {v3, p0}, Lm96;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    :goto_6
    invoke-static {v0, p0}, Lh2;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_4
    move-exception p0

    goto :goto_7

    :catchall_2
    move-exception p0

    :try_start_b
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_3
    move-exception v1

    :try_start_c
    invoke-static {v4, p0}, Lm96;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    :goto_7
    invoke-static {v0, p0}, Lh2;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_5
    :goto_8
    invoke-virtual {p0}, Lyads/eh5;->c()V

    iget-object v0, p0, Lyads/eh5;->d:Ljavax/net/ssl/X509TrustManager;

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lyads/eh5;->c()V

    iget-object v0, p0, Lyads/eh5;->c:Ljava/security/KeyStore;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lyads/eh5;->c()V

    iget-object v0, p0, Lyads/eh5;->c:Ljava/security/KeyStore;

    invoke-static {v0}, Lyads/k26;->a(Ljava/security/KeyStore;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    iput-object v0, p0, Lyads/eh5;->d:Ljavax/net/ssl/X509TrustManager;

    :cond_6
    return-void
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Lyads/eh5;->e:Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "Operation should be performed under lock"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method
