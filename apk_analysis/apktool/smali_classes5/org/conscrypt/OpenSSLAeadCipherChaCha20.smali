.class public Lorg/conscrypt/OpenSSLAeadCipherChaCha20;
.super Lorg/conscrypt/OpenSSLAeadCipher;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lorg/conscrypt/OpenSSLCipher$Mode;->POLY1305:Lorg/conscrypt/OpenSSLCipher$Mode;

    invoke-direct {p0, v0}, Lorg/conscrypt/OpenSSLAeadCipher;-><init>(Lorg/conscrypt/OpenSSLCipher$Mode;)V

    return-void
.end method


# virtual methods
.method public checkSupportedKeySize(I)V
    .locals 2

    const/16 p0, 0x20

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string v0, "Unsupported key size: "

    const-string v1, " bytes (must be 32)"

    invoke-static {p1, v0, v1}, Lkv2;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public checkSupportedMode(Lorg/conscrypt/OpenSSLCipher$Mode;)V
    .locals 0

    sget-object p0, Lorg/conscrypt/OpenSSLCipher$Mode;->POLY1305:Lorg/conscrypt/OpenSSLCipher$Mode;

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    const-string p1, "Mode must be Poly1305"

    invoke-direct {p0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBaseCipherName()Ljava/lang/String;
    .locals 0

    const-string p0, "ChaCha20"

    return-object p0
.end method

.method public getCipherBlockSize()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getEVP_AEAD(I)J
    .locals 0

    const/16 p0, 0x20

    if-ne p1, p0, :cond_0

    invoke-static {}, Lorg/conscrypt/NativeCrypto;->EVP_aead_chacha20_poly1305()J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-string p0, "Unexpected key length: "

    invoke-static {p1, p0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ln7;->g(Ljava/lang/String;)V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getOutputSizeForFinal(I)I
    .locals 1

    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLCipher;->isEncrypting()Z

    move-result v0

    iget p0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->bufCount:I

    if-eqz v0, :cond_0

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x10

    return p0

    :cond_0
    add-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x10

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method
