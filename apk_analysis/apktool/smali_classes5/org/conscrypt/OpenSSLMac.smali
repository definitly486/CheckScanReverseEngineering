.class public abstract Lorg/conscrypt/OpenSSLMac;
.super Ljavax/crypto/MacSpi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/OpenSSLMac$AesCmac;,
        Lorg/conscrypt/OpenSSLMac$HmacSHA512;,
        Lorg/conscrypt/OpenSSLMac$HmacSHA384;,
        Lorg/conscrypt/OpenSSLMac$HmacSHA256;,
        Lorg/conscrypt/OpenSSLMac$HmacSHA224;,
        Lorg/conscrypt/OpenSSLMac$HmacSHA1;,
        Lorg/conscrypt/OpenSSLMac$HmacMD5;,
        Lorg/conscrypt/OpenSSLMac$Hmac;
    }
.end annotation


# instance fields
.field protected initialized:Z

.field private final singleByte:[B

.field private final size:I


# direct methods
.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/conscrypt/OpenSSLMac;->singleByte:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/conscrypt/OpenSSLMac;->initialized:Z

    iput p1, p0, Lorg/conscrypt/OpenSSLMac;->size:I

    return-void
.end method

.method public synthetic constructor <init>(ILorg/conscrypt/OpenSSLMac$1;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lorg/conscrypt/OpenSSLMac;-><init>(I)V

    return-void
.end method


# virtual methods
.method public abstract doFinal()[B
.end method

.method public engineDoFinal()[B
    .locals 1

    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLMac;->doFinal()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLMac;->resetContext()V

    return-object v0
.end method

.method public engineGetMacLength()I
    .locals 0

    iget p0, p0, Lorg/conscrypt/OpenSSLMac;->size:I

    return p0
.end method

.method public engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1

    instance-of v0, p1, Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_2

    if-nez p2, :cond_1

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/conscrypt/OpenSSLMac;->initContext([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/conscrypt/OpenSSLMac;->initialized:Z

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "invalid key"

    invoke-direct {p1, p2, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    const-string p0, "key cannot be encoded"

    invoke-static {p0}, Lti0;->e(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "unknown parameter type"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const-string p0, "key must be a SecretKey"

    invoke-static {p0}, Lti0;->e(Ljava/lang/String;)V

    return-void
.end method

.method public engineReset()V
    .locals 1

    iget-boolean v0, p0, Lorg/conscrypt/OpenSSLMac;->initialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLMac;->resetContext()V

    return-void
.end method

.method public engineUpdate(B)V
    .locals 2

    .line 65
    iget-object v0, p0, Lorg/conscrypt/OpenSSLMac;->singleByte:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    .line 66
    invoke-virtual {p0, v0, v1, p1}, Ljavax/crypto/MacSpi;->engineUpdate([BII)V

    return-void
.end method

.method public engineUpdate(Ljava/nio/ByteBuffer;)V
    .locals 5

    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Ljavax/crypto/MacSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V

    return-void

    :cond_1
    invoke-static {p1}, Lorg/conscrypt/NativeCrypto;->getDirectBufferAddress(Ljava/nio/Buffer;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    invoke-super {p0, p1}, Ljavax/crypto/MacSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    if-ltz v2, :cond_4

    int-to-long v3, v2

    add-long/2addr v0, v3

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    if-ltz v3, :cond_3

    invoke-virtual {p0, v0, v1, v3}, Lorg/conscrypt/OpenSSLMac;->updateDirect(JI)V

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_3
    const-string p0, "Negative remaining amount"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_4
    const-string p0, "Negative position"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public abstract initContext([B)V
.end method

.method public abstract resetContext()V
.end method

.method public abstract updateDirect(JI)V
.end method
