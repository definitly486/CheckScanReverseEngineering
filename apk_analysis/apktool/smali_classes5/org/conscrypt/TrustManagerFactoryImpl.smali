.class public Lorg/conscrypt/TrustManagerFactoryImpl;
.super Ljavax/net/ssl/TrustManagerFactorySpi;
.source "SourceFile"


# instance fields
.field private keyStore:Ljava/security/KeyStore;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljavax/net/ssl/TrustManagerFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method public engineGetTrustManagers()[Ljavax/net/ssl/TrustManager;
    .locals 2

    iget-object v0, p0, Lorg/conscrypt/TrustManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/conscrypt/TrustManagerImpl;

    iget-object p0, p0, Lorg/conscrypt/TrustManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    invoke-direct {v0, p0}, Lorg/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;)V

    const/4 p0, 0x1

    new-array p0, p0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    return-object p0

    :cond_0
    const-string p0, "TrustManagerFactory is not initialized"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public engineInit(Ljava/security/KeyStore;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/conscrypt/TrustManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    return-void

    :cond_0
    invoke-static {}, Lorg/conscrypt/Platform;->getDefaultCertKeyStore()Ljava/security/KeyStore;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/TrustManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    return-void
.end method

.method public engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .locals 0

    .line 12
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "ManagerFactoryParameters not supported"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
