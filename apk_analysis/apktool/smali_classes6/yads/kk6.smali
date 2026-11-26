.class public final Lyads/kk6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcl4;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ldr2;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ldr2;-><init>(I)V

    new-instance v1, Lfh8;

    invoke-direct {v1, v0}, Lfh8;-><init>(Lll3;)V

    iput-object v1, p0, Lyads/kk6;->a:Lcl4;

    return-void
.end method

.method public static final a()Ljava/security/cert/CertificateFactory;
    .locals 1

    .line 95
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/net/http/SslError;)Z
    .locals 3

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
    invoke-virtual {v0, p1}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-boolean v0, v0, Lyads/fe5;->x:Z

    if-nez v0, :cond_2

    goto :goto_4

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_3

    invoke-virtual {p2}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/http/SslCertificate;->getX509Certificate()Ljava/security/cert/X509Certificate;

    move-result-object p0

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object p2

    iget-object p0, p0, Lyads/kk6;->a:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/CertificateFactory;

    invoke-static {p2, p0}, Lyads/ac5;->a(Landroid/net/http/SslCertificate;Ljava/security/cert/CertificateFactory;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    :goto_3
    if-nez p0, :cond_4

    return v1

    :cond_4
    sget p2, Lyads/cc0;->a:I

    new-instance p2, Lyads/de5;

    invoke-direct {p2, p1}, Lyads/de5;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lyads/bs3;->a(Lyads/de5;)Lyads/dh5;

    move-result-object p1

    const/4 p2, 0x1

    :try_start_1
    new-array v0, p2, [Ljava/security/cert/X509Certificate;

    aput-object p0, v0, v1

    const-string p0, "RSA"

    invoke-interface {p1, v0, p0}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return p2

    :catch_0
    :cond_5
    :goto_4
    return v1
.end method
