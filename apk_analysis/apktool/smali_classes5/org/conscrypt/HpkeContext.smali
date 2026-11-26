.class public abstract Lorg/conscrypt/HpkeContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final spi:Lorg/conscrypt/HpkeSpi;


# direct methods
.method public constructor <init>(Lorg/conscrypt/HpkeSpi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/conscrypt/HpkeContext;->spi:Lorg/conscrypt/HpkeSpi;

    return-void
.end method

.method private static findFirstProvider(Ljava/lang/String;)Ljava/security/Provider;
    .locals 5

    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    const-string v4, "ConscryptHpke"

    invoke-virtual {v3, v4, p0}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "No Provider found for: "

    invoke-static {v1, p0}, Lbj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static findSpi(Ljava/lang/String;)Lorg/conscrypt/HpkeSpi;
    .locals 1

    if-eqz p0, :cond_0

    .line 64
    invoke-static {p0}, Lorg/conscrypt/HpkeContext;->findFirstProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/conscrypt/HpkeContext;->findSpi(Ljava/lang/String;Ljava/security/Provider;)Lorg/conscrypt/HpkeSpi;

    move-result-object p0

    return-object p0

    .line 65
    :cond_0
    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    const-string v0, "null algorithm"

    invoke-direct {p0, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static findSpi(Ljava/lang/String;Ljava/lang/String;)Lorg/conscrypt/HpkeSpi;
    .locals 1

    if-eqz p1, :cond_1

    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    invoke-static {p0, v0}, Lorg/conscrypt/HpkeContext;->findSpi(Ljava/lang/String;Ljava/security/Provider;)Lorg/conscrypt/HpkeSpi;

    move-result-object p0

    return-object p0

    .line 62
    :cond_0
    new-instance p0, Ljava/security/NoSuchProviderException;

    const-string v0, "Unknown Provider: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 63
    :cond_1
    const-string p0, "Invalid provider name"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static findSpi(Ljava/lang/String;Ljava/security/Provider;)Lorg/conscrypt/HpkeSpi;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const-string v1, "ConscryptHpke"

    invoke-virtual {p1, v1, p0}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0, v0}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Lorg/conscrypt/HpkeSpi;

    if-eqz v1, :cond_0

    check-cast p0, Lorg/conscrypt/HpkeSpi;

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/conscrypt/DuckTypedHpkeSpi;->newInstance(Ljava/lang/Object;)Lorg/conscrypt/DuckTypedHpkeSpi;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Provider "

    const-string v1, " is providing incorrect instances"

    invoke-static {p1, p0, v1}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    const-string p1, "Unknown algorithm"

    invoke-direct {p0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const-string p0, "null Provider"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public export(I[B)[B
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/HpkeContext;->spi:Lorg/conscrypt/HpkeSpi;

    invoke-interface {p0, p1, p2}, Lorg/conscrypt/HpkeSpi;->engineExport(I[B)[B

    move-result-object p0

    return-object p0
.end method

.method public getSpi()Lorg/conscrypt/HpkeSpi;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/HpkeContext;->spi:Lorg/conscrypt/HpkeSpi;

    return-object p0
.end method
