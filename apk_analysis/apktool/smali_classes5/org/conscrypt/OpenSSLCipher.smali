.class public abstract Lorg/conscrypt/OpenSSLCipher;
.super Ljavax/crypto/CipherSpi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/OpenSSLCipher$Mode;,
        Lorg/conscrypt/OpenSSLCipher$Padding;
    }
.end annotation


# instance fields
.field private blockSize:I

.field encodedKey:[B

.field private encrypting:Z

.field iv:[B

.field mode:Lorg/conscrypt/OpenSSLCipher$Mode;

.field private padding:Lorg/conscrypt/OpenSSLCipher$Padding;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 21
    sget-object v0, Lorg/conscrypt/OpenSSLCipher$Mode;->ECB:Lorg/conscrypt/OpenSSLCipher$Mode;

    iput-object v0, p0, Lorg/conscrypt/OpenSSLCipher;->mode:Lorg/conscrypt/OpenSSLCipher$Mode;

    .line 22
    sget-object v0, Lorg/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

    iput-object v0, p0, Lorg/conscrypt/OpenSSLCipher;->padding:Lorg/conscrypt/OpenSSLCipher$Padding;

    return-void
.end method

.method public constructor <init>(Lorg/conscrypt/OpenSSLCipher$Mode;Lorg/conscrypt/OpenSSLCipher$Padding;)V
    .locals 1

    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    sget-object v0, Lorg/conscrypt/OpenSSLCipher$Mode;->ECB:Lorg/conscrypt/OpenSSLCipher$Mode;

    iput-object v0, p0, Lorg/conscrypt/OpenSSLCipher;->mode:Lorg/conscrypt/OpenSSLCipher$Mode;

    sget-object v0, Lorg/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

    iput-object p1, p0, Lorg/conscrypt/OpenSSLCipher;->mode:Lorg/conscrypt/OpenSSLCipher$Mode;

    iput-object p2, p0, Lorg/conscrypt/OpenSSLCipher;->padding:Lorg/conscrypt/OpenSSLCipher$Padding;

    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLCipher;->getCipherBlockSize()I

    move-result p1

    iput p1, p0, Lorg/conscrypt/OpenSSLCipher;->blockSize:I

    return-void
.end method

.method private checkAndSetEncodedKey(ILjava/security/Key;)[B
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p2, "Unsupported opmode "

    invoke-static {p1, p2}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/conscrypt/OpenSSLCipher;->encrypting:Z

    goto :goto_2

    :cond_3
    :goto_1
    iput-boolean v0, p0, Lorg/conscrypt/OpenSSLCipher;->encrypting:Z

    :goto_2
    instance-of p1, p2, Ljavax/crypto/SecretKey;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    if-eqz p1, :cond_4

    array-length p2, p1

    invoke-virtual {p0, p2}, Lorg/conscrypt/OpenSSLCipher;->checkSupportedKeySize(I)V

    iput-object p1, p0, Lorg/conscrypt/OpenSSLCipher;->encodedKey:[B

    return-object p1

    :cond_4
    const-string p0, "key.getEncoded() == null"

    invoke-static {p0}, Lti0;->e(Ljava/lang/String;)V

    return-object v0

    :cond_5
    const-string p0, "Only SecretKey is supported"

    invoke-static {p0}, Lti0;->e(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract checkSupportedKeySize(I)V
.end method

.method public abstract checkSupportedMode(Lorg/conscrypt/OpenSSLCipher$Mode;)V
.end method

.method public abstract checkSupportedPadding(Lorg/conscrypt/OpenSSLCipher$Padding;)V
.end method

.method public engineGetBlockSize()I
    .locals 0

    iget p0, p0, Lorg/conscrypt/OpenSSLCipher;->blockSize:I

    return p0
.end method

.method public engineGetIV()[B
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/OpenSSLCipher;->iv:[B

    return-object p0
.end method

.method public engineGetKeySize(Ljava/security/Key;)I
    .locals 2

    instance-of v0, p1, Ljavax/crypto/SecretKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    if-eqz p1, :cond_0

    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/conscrypt/OpenSSLCipher;->checkSupportedKeySize(I)V

    array-length p0, p1

    mul-int/lit8 p0, p0, 0x8

    return p0

    :cond_0
    const-string p0, "key.getEncoded() == null"

    invoke-static {p0}, Lti0;->e(Ljava/lang/String;)V

    return v1

    :cond_1
    const-string p0, "Only SecretKey is supported"

    invoke-static {p0}, Lti0;->e(Ljava/lang/String;)V

    return v1
.end method

.method public engineGetOutputSize(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lorg/conscrypt/OpenSSLCipher;->getOutputSizeForUpdate(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/conscrypt/OpenSSLCipher;->getOutputSizeForFinal(I)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 3

    iget-object v0, p0, Lorg/conscrypt/OpenSSLCipher;->iv:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLCipher;->getBaseCipherName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    iget-object p0, p0, Lorg/conscrypt/OpenSSLCipher;->iv:[B

    invoke-direct {v2, p0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    return-object v1
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 0

    .line 17
    invoke-virtual {p0, p3}, Lorg/conscrypt/OpenSSLCipher;->getParameterSpec(Ljava/security/AlgorithmParameters;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p3

    .line 18
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/conscrypt/OpenSSLCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/conscrypt/OpenSSLCipher;->checkAndSetEncodedKey(ILjava/security/Key;)[B

    :try_start_0
    iget-object p1, p0, Lorg/conscrypt/OpenSSLCipher;->encodedKey:[B

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lorg/conscrypt/OpenSSLCipher;->engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lti0;->f(Ljava/lang/Throwable;)V

    return-void
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/OpenSSLCipher;->checkAndSetEncodedKey(ILjava/security/Key;)[B

    .line 16
    iget-object p1, p0, Lorg/conscrypt/OpenSSLCipher;->encodedKey:[B

    invoke-virtual {p0, p1, p3, p4}, Lorg/conscrypt/OpenSSLCipher;->engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public abstract engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
.end method

.method public engineSetMode(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Lorg/conscrypt/OpenSSLCipher$Mode;->getNormalized(Ljava/lang/String;)Lorg/conscrypt/OpenSSLCipher$Mode;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p1}, Lorg/conscrypt/OpenSSLCipher;->checkSupportedMode(Lorg/conscrypt/OpenSSLCipher$Mode;)V

    iput-object p1, p0, Lorg/conscrypt/OpenSSLCipher;->mode:Lorg/conscrypt/OpenSSLCipher$Mode;

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "No such mode: "

    invoke-static {v1, p1}, Lbj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method

.method public engineSetPadding(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Lorg/conscrypt/OpenSSLCipher$Padding;->getNormalized(Ljava/lang/String;)Lorg/conscrypt/OpenSSLCipher$Padding;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p1}, Lorg/conscrypt/OpenSSLCipher;->checkSupportedPadding(Lorg/conscrypt/OpenSSLCipher$Padding;)V

    iput-object p1, p0, Lorg/conscrypt/OpenSSLCipher;->padding:Lorg/conscrypt/OpenSSLCipher$Padding;

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    const-string v1, "No such padding: "

    invoke-static {v1, p1}, Lbj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method

.method public engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 4

    const-string v0, "wrappedKeyType == "

    const/4 v1, 0x0

    :try_start_0
    array-length v2, p1

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3, v2}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    move-result-object p0

    const/4 p1, 0x1

    if-ne p3, p1, :cond_0

    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    new-instance p2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {p2, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {p1, p2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 p1, 0x2

    if-ne p3, p1, :cond_1

    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    new-instance p2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {p2, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {p1, p2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p1, 0x3

    if-ne p3, p1, :cond_2

    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p1, p0, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p1

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p0}, Lr01;->f(Ljava/lang/Throwable;)V

    return-object v1

    :goto_1
    invoke-static {p0}, Lr01;->f(Ljava/lang/Throwable;)V

    return-object v1

    :goto_2
    invoke-static {p0}, Lr01;->f(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public engineUpdate([BII[BI)I
    .locals 7

    .line 48
    invoke-virtual {p0, p3}, Lorg/conscrypt/OpenSSLCipher;->getOutputSizeForUpdate(I)I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 49
    invoke-virtual/range {v0 .. v6}, Lorg/conscrypt/OpenSSLCipher;->updateInternal([BII[BII)I

    move-result p0

    return p0
.end method

.method public engineUpdate([BII)[B
    .locals 7

    invoke-virtual {p0, p3}, Lorg/conscrypt/OpenSSLCipher;->getOutputSizeForUpdate(I)I

    move-result v6

    if-lez v6, :cond_0

    new-array v0, v6, [B

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    sget-object v0, Lorg/conscrypt/EmptyArray;->BYTE:[B

    goto :goto_0

    :goto_1
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lorg/conscrypt/OpenSSLCipher;->updateInternal([BII[BII)I

    move-result p0
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    array-length p1, v4

    if-ne p1, p0, :cond_1

    return-object v4

    :cond_1
    if-nez p0, :cond_2

    sget-object p0, Lorg/conscrypt/EmptyArray;->BYTE:[B

    return-object p0

    :cond_2
    const/4 p1, 0x0

    invoke-static {v4, p1, p0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    :catch_0
    const-string p0, "calculated buffer size was wrong: "

    invoke-static {v6, p0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ln7;->g(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public engineWrap(Ljava/security/Key;)[B
    .locals 2

    :try_start_0
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    move-result-object p0
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {p1}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p1
.end method

.method public abstract getBaseCipherName()Ljava/lang/String;
.end method

.method public abstract getCipherBlockSize()I
.end method

.method public abstract getOutputSizeForFinal(I)I
.end method

.method public abstract getOutputSizeForUpdate(I)I
.end method

.method public getPadding()Lorg/conscrypt/OpenSSLCipher$Padding;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/OpenSSLCipher;->padding:Lorg/conscrypt/OpenSSLCipher$Padding;

    return-object p0
.end method

.method public getParameterSpec(Ljava/security/AlgorithmParameters;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    const-class p0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p1, p0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v0, "Params must be convertible to IvParameterSpec"

    invoke-direct {p1, v0, p0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isEncrypting()Z
    .locals 0

    iget-boolean p0, p0, Lorg/conscrypt/OpenSSLCipher;->encrypting:Z

    return p0
.end method

.method public supportsVariableSizeIv()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportsVariableSizeKey()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract updateInternal([BII[BII)I
.end method
