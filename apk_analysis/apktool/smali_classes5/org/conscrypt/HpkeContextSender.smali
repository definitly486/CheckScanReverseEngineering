.class public Lorg/conscrypt/HpkeContextSender;
.super Lorg/conscrypt/HpkeContext;
.source "SourceFile"


# direct methods
.method private constructor <init>(Lorg/conscrypt/HpkeSpi;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/conscrypt/HpkeContext;-><init>(Lorg/conscrypt/HpkeSpi;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/conscrypt/HpkeContextSender;
    .locals 1

    new-instance v0, Lorg/conscrypt/HpkeContextSender;

    invoke-static {p0}, Lorg/conscrypt/HpkeContext;->findSpi(Ljava/lang/String;)Lorg/conscrypt/HpkeSpi;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/conscrypt/HpkeContextSender;-><init>(Lorg/conscrypt/HpkeSpi;)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Lorg/conscrypt/HpkeContextSender;
    .locals 1

    .line 10
    new-instance v0, Lorg/conscrypt/HpkeContextSender;

    invoke-static {p0, p1}, Lorg/conscrypt/HpkeContext;->findSpi(Ljava/lang/String;Ljava/lang/String;)Lorg/conscrypt/HpkeSpi;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/conscrypt/HpkeContextSender;-><init>(Lorg/conscrypt/HpkeSpi;)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Lorg/conscrypt/HpkeContextSender;
    .locals 1

    .line 11
    new-instance v0, Lorg/conscrypt/HpkeContextSender;

    invoke-static {p0, p1}, Lorg/conscrypt/HpkeContext;->findSpi(Ljava/lang/String;Ljava/security/Provider;)Lorg/conscrypt/HpkeSpi;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/conscrypt/HpkeContextSender;-><init>(Lorg/conscrypt/HpkeSpi;)V

    return-object v0
.end method


# virtual methods
.method public getEncapsulated()[B
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/HpkeContext;->spi:Lorg/conscrypt/HpkeSpi;

    invoke-interface {p0}, Lorg/conscrypt/HpkeSpi;->getEncapsulated()[B

    move-result-object p0

    return-object p0
.end method

.method public init(Ljava/security/PublicKey;[B)V
    .locals 6

    .line 21
    iget-object v0, p0, Lorg/conscrypt/HpkeContext;->spi:Lorg/conscrypt/HpkeSpi;

    sget-object v4, Lorg/conscrypt/HpkeSpi;->DEFAULT_PSK:[B

    sget-object v5, Lorg/conscrypt/HpkeSpi;->DEFAULT_PSK_ID:[B

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v5}, Lorg/conscrypt/HpkeSpi;->engineInitSender(Ljava/security/PublicKey;[BLjava/security/PrivateKey;[B[B)V

    return-void
.end method

.method public init(Ljava/security/PublicKey;[BLjava/security/PrivateKey;)V
    .locals 6

    if-eqz p3, :cond_0

    iget-object v0, p0, Lorg/conscrypt/HpkeContext;->spi:Lorg/conscrypt/HpkeSpi;

    sget-object v4, Lorg/conscrypt/HpkeSpi;->DEFAULT_PSK:[B

    sget-object v5, Lorg/conscrypt/HpkeSpi;->DEFAULT_PSK_ID:[B

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lorg/conscrypt/HpkeSpi;->engineInitSender(Ljava/security/PublicKey;[BLjava/security/PrivateKey;[B[B)V

    return-void

    :cond_0
    const-string p0, "Sender private key is null"

    invoke-static {p0}, Lti0;->e(Ljava/lang/String;)V

    return-void
.end method

.method public init(Ljava/security/PublicKey;[BLjava/security/PrivateKey;[B[B)V
    .locals 0

    if-eqz p3, :cond_0

    .line 23
    iget-object p0, p0, Lorg/conscrypt/HpkeContext;->spi:Lorg/conscrypt/HpkeSpi;

    invoke-interface/range {p0 .. p5}, Lorg/conscrypt/HpkeSpi;->engineInitSender(Ljava/security/PublicKey;[BLjava/security/PrivateKey;[B[B)V

    return-void

    .line 24
    :cond_0
    const-string p0, "Sender private key is null"

    invoke-static {p0}, Lti0;->e(Ljava/lang/String;)V

    return-void
.end method

.method public init(Ljava/security/PublicKey;[B[B[B)V
    .locals 6

    .line 22
    iget-object v0, p0, Lorg/conscrypt/HpkeContext;->spi:Lorg/conscrypt/HpkeSpi;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lorg/conscrypt/HpkeSpi;->engineInitSender(Ljava/security/PublicKey;[BLjava/security/PrivateKey;[B[B)V

    return-void
.end method

.method public initForTesting(Ljava/security/PublicKey;[B[B)V
    .locals 7

    if-eqz p3, :cond_0

    iget-object v0, p0, Lorg/conscrypt/HpkeContext;->spi:Lorg/conscrypt/HpkeSpi;

    const/4 v3, 0x0

    sget-object v4, Lorg/conscrypt/HpkeSpi;->DEFAULT_PSK:[B

    move-object v5, v4

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lorg/conscrypt/HpkeSpi;->engineInitSenderForTesting(Ljava/security/PublicKey;[BLjava/security/PrivateKey;[B[B[B)V

    return-void

    :cond_0
    const-string p0, "null seed"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method

.method public seal([B[B)[B
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/HpkeContext;->spi:Lorg/conscrypt/HpkeSpi;

    invoke-interface {p0, p1, p2}, Lorg/conscrypt/HpkeSpi;->engineSeal([B[B)[B

    move-result-object p0

    return-object p0
.end method
