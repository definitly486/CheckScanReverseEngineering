.class public Lorg/conscrypt/OpenSSLCipherChaCha20;
.super Lorg/conscrypt/OpenSSLCipher;
.source "SourceFile"


# static fields
.field private static final BLOCK_SIZE_BYTES:I = 0x40

.field private static final NONCE_SIZE_BYTES:I = 0xc


# instance fields
.field private blockCounter:I

.field private currentBlockConsumedBytes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/conscrypt/OpenSSLCipher;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    iput v0, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    iput v0, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

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

    sget-object p0, Lorg/conscrypt/OpenSSLCipher$Mode;->NONE:Lorg/conscrypt/OpenSSLCipher$Mode;

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    const-string p1, "Mode must be NONE"

    invoke-direct {p0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public checkSupportedPadding(Lorg/conscrypt/OpenSSLCipher$Padding;)V
    .locals 0

    sget-object p0, Lorg/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljavax/crypto/NoSuchPaddingException;

    const-string p1, "Must be NoPadding"

    invoke-direct {p0, p1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineDoFinal([BII[BI)I
    .locals 8

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    .line 46
    invoke-virtual {p0, p3}, Lorg/conscrypt/OpenSSLCipherChaCha20;->getOutputSizeForFinal(I)I

    move-result v7

    if-lez p3, :cond_0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    .line 47
    invoke-virtual/range {v1 .. v7}, Lorg/conscrypt/OpenSSLCipherChaCha20;->updateInternal([BII[BII)I

    move-result v0

    goto :goto_0

    :cond_0
    move-object v1, p0

    .line 48
    :goto_0
    invoke-direct {v1}, Lorg/conscrypt/OpenSSLCipherChaCha20;->reset()V

    return v0

    .line 49
    :cond_1
    const-string p0, "output == null"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    return v0
.end method

.method public engineDoFinal([BII)[B
    .locals 8

    invoke-virtual {p0, p3}, Lorg/conscrypt/OpenSSLCipherChaCha20;->getOutputSizeForFinal(I)I

    move-result v6

    new-array v4, v6, [B

    const/4 v7, 0x0

    if-lez p3, :cond_0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lorg/conscrypt/OpenSSLCipherChaCha20;->updateInternal([BII[BII)I

    move-result p0
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string p1, "our calculated buffer was too small"

    invoke-static {p1, p0}, Lmg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    move-object v0, p0

    move p0, v7

    :goto_0
    invoke-direct {v0}, Lorg/conscrypt/OpenSSLCipherChaCha20;->reset()V

    if-ne p0, v6, :cond_1

    return-object v4

    :cond_1
    if-nez p0, :cond_2

    sget-object p0, Lorg/conscrypt/EmptyArray;->BYTE:[B

    return-object p0

    :cond_2
    invoke-static {v4, v7, p0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1

    instance-of p1, p2, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v0, 0xc

    if-eqz p1, :cond_1

    check-cast p2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p2}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object p1

    array-length p1, p1

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/OpenSSLCipher;->iv:[B

    return-void

    :cond_0
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "IV must be 12 bytes long"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLCipher;->isEncrypting()Z

    move-result p1

    if-eqz p1, :cond_3

    new-array p1, v0, [B

    iput-object p1, p0, Lorg/conscrypt/OpenSSLCipher;->iv:[B

    if-eqz p3, :cond_2

    invoke-virtual {p3, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-void

    :cond_2
    invoke-static {p1}, Lorg/conscrypt/NativeCrypto;->RAND_bytes([B)V

    return-void

    :cond_3
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "IV must be specified when decrypting"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

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

.method public getOutputSizeForFinal(I)I
    .locals 0

    return p1
.end method

.method public getOutputSizeForUpdate(I)I
    .locals 0

    return p1
.end method

.method public updateInternal([BII[BII)I
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v5, p4

    move/from16 v3, p5

    array-length v4, v5

    sub-int/2addr v4, v3

    if-gt v2, v4, :cond_2

    iget v4, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    const/16 v11, 0x40

    if-lez v4, :cond_1

    rsub-int/lit8 v4, v4, 0x40

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    new-array v12, v11, [B

    new-array v14, v11, [B

    iget v6, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    move-object/from16 v7, p1

    invoke-static {v7, v1, v12, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, v0, Lorg/conscrypt/OpenSSLCipher;->encodedKey:[B

    iget-object v8, v0, Lorg/conscrypt/OpenSSLCipher;->iv:[B

    iget v9, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x40

    move-object/from16 v17, v6

    move-object/from16 v18, v8

    move/from16 v19, v9

    invoke-static/range {v12 .. v19}, Lorg/conscrypt/NativeCrypto;->chacha20_encrypt_decrypt([BI[BII[B[BI)V

    iget v6, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    invoke-static {v14, v6, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v6, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    add-int/2addr v6, v4

    iput v6, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    if-ge v6, v11, :cond_0

    return v4

    :cond_0
    const/4 v6, 0x0

    iput v6, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    add-int/2addr v1, v4

    add-int/2addr v3, v4

    sub-int v4, v2, v4

    iget v6, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    move v7, v4

    move v6, v3

    move v4, v1

    goto :goto_0

    :cond_1
    move-object/from16 v7, p1

    move v7, v2

    move v4, v1

    move v6, v3

    :goto_0
    iget-object v8, v0, Lorg/conscrypt/OpenSSLCipher;->encodedKey:[B

    iget-object v9, v0, Lorg/conscrypt/OpenSSLCipher;->iv:[B

    iget v10, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v10}, Lorg/conscrypt/NativeCrypto;->chacha20_encrypt_decrypt([BI[BII[B[BI)V

    rem-int/lit8 v1, v7, 0x40

    iput v1, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    iget v1, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    div-int/2addr v7, v11

    add-int/2addr v7, v1

    iput v7, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    return v2

    :cond_2
    new-instance v0, Lorg/conscrypt/ShortBufferWithoutStackTraceException;

    const-string v1, "Insufficient output space"

    invoke-direct {v0, v1}, Lorg/conscrypt/ShortBufferWithoutStackTraceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
