.class public final Lcom/my/tracker/obfuscated/t;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/security/cert/CertificateFactory;[B)Ljava/security/cert/Certificate;
    .locals 0

    .line 140
    :try_start_0
    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 141
    invoke-virtual {p1, p0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 142
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "CertManager: exception: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/my/tracker/obfuscated/g2;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private a()Ljava/security/cert/CertificateFactory;
    .locals 2

    .line 143
    :try_start_0
    const-string p0, "X.509"

    invoke-static {p0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CertManager: exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/my/tracker/obfuscated/g2;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Ljavax/net/ssl/TrustManagerFactory;)Ljavax/net/ssl/SSLContext;
    .locals 2

    const/4 v0, 0x0

    .line 149
    :try_start_0
    invoke-direct {p0}, Lcom/my/tracker/obfuscated/t;->c()Ljavax/net/ssl/SSLContext;

    move-result-object p0

    .line 150
    invoke-virtual {p1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p1

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p0, v0, p1, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 151
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "CertManager: exception: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/my/tracker/obfuscated/g2;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->d(Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Ljava/security/KeyStore;)Ljavax/net/ssl/TrustManagerFactory;
    .locals 1

    .line 145
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object p0

    .line 146
    :try_start_0
    invoke-static {p0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object p0

    .line 147
    invoke-virtual {p0, p1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 148
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "CertManager: exception: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/my/tracker/obfuscated/g2;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Ljava/security/KeyStore;Ljava/security/cert/CertificateFactory;)V
    .locals 2

    .line 132
    sget-object v0, Lcom/my/tracker/obfuscated/u;->a:[B

    const-string v1, "russian_trusted_root_ca"

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/my/tracker/obfuscated/t;->a(Ljava/security/KeyStore;Ljava/security/cert/CertificateFactory;Ljava/lang/String;[B)V

    .line 133
    sget-object v0, Lcom/my/tracker/obfuscated/u;->b:[B

    const-string v1, "russian_trusted_root_ca_gost_2025"

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/my/tracker/obfuscated/t;->a(Ljava/security/KeyStore;Ljava/security/cert/CertificateFactory;Ljava/lang/String;[B)V

    .line 134
    sget-object v0, Lcom/my/tracker/obfuscated/u;->c:[B

    const-string v1, "russian_trusted_sub_ca"

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/my/tracker/obfuscated/t;->a(Ljava/security/KeyStore;Ljava/security/cert/CertificateFactory;Ljava/lang/String;[B)V

    .line 135
    sget-object v0, Lcom/my/tracker/obfuscated/u;->d:[B

    const-string v1, "russian_trusted_sub_ca_2024"

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/my/tracker/obfuscated/t;->a(Ljava/security/KeyStore;Ljava/security/cert/CertificateFactory;Ljava/lang/String;[B)V

    .line 136
    sget-object v0, Lcom/my/tracker/obfuscated/u;->e:[B

    const-string v1, "russian_trusted_sub_ca_gost_2025"

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/my/tracker/obfuscated/t;->a(Ljava/security/KeyStore;Ljava/security/cert/CertificateFactory;Ljava/lang/String;[B)V

    return-void
.end method

.method private a(Ljava/security/KeyStore;Ljava/security/cert/CertificateFactory;Ljava/lang/String;[B)V
    .locals 0

    .line 137
    invoke-direct {p0, p2, p4}, Lcom/my/tracker/obfuscated/t;->a(Ljava/security/cert/CertificateFactory;[B)Ljava/security/cert/Certificate;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 138
    :try_start_0
    invoke-virtual {p1, p3, p0}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 139
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "CertManager: exception: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/my/tracker/obfuscated/g2;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private b()Ljava/security/KeyStore;
    .locals 3

    const/4 p0, 0x0

    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p0, p0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CertManager: exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/my/tracker/obfuscated/g2;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/tracker/obfuscated/b3;->d(Ljava/lang/String;)V

    return-object p0
.end method

.method private b(Ljavax/net/ssl/TrustManagerFactory;)Ljavax/net/ssl/X509TrustManager;
    .locals 3

    .line 36
    invoke-virtual {p1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p0

    array-length p1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v1, p0, v0

    .line 37
    instance-of v2, v1, Ljavax/net/ssl/X509TrustManager;

    if-eqz v2, :cond_0

    .line 38
    check-cast v1, Ljavax/net/ssl/X509TrustManager;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private c()Ljavax/net/ssl/SSLContext;
    .locals 6

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    const-string v1, "TLS"

    const/4 v2, 0x2

    const-string v3, "TLSv1.2"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt p0, v0, :cond_0

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/String;

    const-string v0, "TLSv1.3"

    aput-object v0, p0, v5

    aput-object v3, p0, v4

    aput-object v1, p0, v2

    goto :goto_0

    :cond_0
    new-array p0, v2, [Ljava/lang/String;

    aput-object v3, p0, v5

    aput-object v1, p0, v4

    :goto_0
    array-length v0, p0

    :goto_1
    if-ge v5, v0, :cond_1

    aget-object v1, p0, v5

    :try_start_0
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const-string p0, "SSL"

    invoke-static {p0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p0

    return-object p0
.end method

.method private d()Ljava/util/ArrayList;
    .locals 5

    const-string p0, "CertManager: exception: "

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v1, "AndroidCAStore"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    invoke-virtual {v1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_1

    :try_start_1
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/my/tracker/obfuscated/g2;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/my/tracker/obfuscated/b3;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/my/tracker/obfuscated/g2;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->d(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/my/tracker/obfuscated/s;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "CertManager: Error make certData \u2013 context is null"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->d(Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/my/tracker/obfuscated/t;->a()Ljava/security/cert/CertificateFactory;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "CertManager: Error make certData \u2013 certificateFactory is null"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->d(Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/my/tracker/obfuscated/t;->b()Ljava/security/KeyStore;

    move-result-object v1

    if-nez v1, :cond_2

    const-string p0, "CertManager: Error make certData \u2013 keyStore is null"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->d(Ljava/lang/String;)V

    return-object v0

    :cond_2
    invoke-direct {p0, v1, p1}, Lcom/my/tracker/obfuscated/t;->a(Ljava/security/KeyStore;Ljava/security/cert/CertificateFactory;)V

    invoke-direct {p0}, Lcom/my/tracker/obfuscated/t;->d()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/security/cert/X509Certificate;

    :try_start_0
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v5

    invoke-interface {v5}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "CertManager: exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/my/tracker/obfuscated/g2;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/my/tracker/obfuscated/b3;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1}, Lcom/my/tracker/obfuscated/t;->a(Ljava/security/KeyStore;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object p1

    if-nez p1, :cond_4

    const-string p0, "CertManager: Error make certData \u2013 trustManagerFactory is null"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->d(Ljava/lang/String;)V

    return-object v0

    :cond_4
    invoke-direct {p0, p1}, Lcom/my/tracker/obfuscated/t;->b(Ljavax/net/ssl/TrustManagerFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    if-nez v1, :cond_5

    const-string p0, "CertManager: Error make certData \u2013 x509TrustManager is null"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->d(Ljava/lang/String;)V

    return-object v0

    :cond_5
    invoke-direct {p0, p1}, Lcom/my/tracker/obfuscated/t;->a(Ljavax/net/ssl/TrustManagerFactory;)Ljavax/net/ssl/SSLContext;

    move-result-object p0

    if-nez p0, :cond_6

    const-string p0, "CertManager: Error make certData \u2013 sslContext is null"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->d(Ljava/lang/String;)V

    return-object v0

    :cond_6
    new-instance v0, Lcom/my/tracker/obfuscated/s;

    invoke-direct {v0, v1, p0, p1}, Lcom/my/tracker/obfuscated/s;-><init>(Ljavax/net/ssl/X509TrustManager;Ljavax/net/ssl/SSLContext;Ljavax/net/ssl/TrustManagerFactory;)V

    return-object v0
.end method
