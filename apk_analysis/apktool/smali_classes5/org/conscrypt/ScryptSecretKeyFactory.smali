.class public Lorg/conscrypt/ScryptSecretKeyFactory;
.super Ljavax/crypto/SecretKeyFactorySpi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/ScryptSecretKeyFactory$ScryptKey;,
        Lorg/conscrypt/ScryptSecretKeyFactory$NotImplementedException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljavax/crypto/SecretKeyFactorySpi;-><init>()V

    return-void
.end method

.method private getValue(Ljava/security/spec/KeySpec;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 7

    instance-of v0, p1, Lorg/conscrypt/ScryptKeySpec;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/conscrypt/ScryptKeySpec;

    invoke-virtual {p1}, Lorg/conscrypt/ScryptKeySpec;->getPassword()[C

    move-result-object p0

    invoke-virtual {p1}, Lorg/conscrypt/ScryptKeySpec;->getSalt()[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/conscrypt/ScryptKeySpec;->getCostParameter()I

    move-result v1

    invoke-virtual {p1}, Lorg/conscrypt/ScryptKeySpec;->getBlockSize()I

    move-result v2

    invoke-virtual {p1}, Lorg/conscrypt/ScryptKeySpec;->getParallelizationParameter()I

    move-result v3

    invoke-virtual {p1}, Lorg/conscrypt/ScryptKeySpec;->getKeyLength()I

    move-result p1

    move v4, v3

    move v3, v2

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "getPassword"

    invoke-direct {p0, p1, v0}, Lorg/conscrypt/ScryptSecretKeyFactory;->getValue(Ljava/security/spec/KeySpec;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    const-string v1, "getSalt"

    invoke-direct {p0, p1, v1}, Lorg/conscrypt/ScryptSecretKeyFactory;->getValue(Ljava/security/spec/KeySpec;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const-string v2, "getCostParameter"

    invoke-direct {p0, p1, v2}, Lorg/conscrypt/ScryptSecretKeyFactory;->getValue(Ljava/security/spec/KeySpec;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "getBlockSize"

    invoke-direct {p0, p1, v3}, Lorg/conscrypt/ScryptSecretKeyFactory;->getValue(Ljava/security/spec/KeySpec;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "getParallelizationParameter"

    invoke-direct {p0, p1, v4}, Lorg/conscrypt/ScryptSecretKeyFactory;->getValue(Ljava/security/spec/KeySpec;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "getKeyLength"

    invoke-direct {p0, p1, v5}, Lorg/conscrypt/ScryptSecretKeyFactory;->getValue(Ljava/security/spec/KeySpec;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    :goto_0
    rem-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_1

    new-instance v6, Lorg/conscrypt/ScryptSecretKeyFactory$ScryptKey;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    div-int/lit8 v5, p1, 0x8

    invoke-static/range {v0 .. v5}, Lorg/conscrypt/NativeCrypto;->Scrypt_generate_key([B[BIIII)[B

    move-result-object p0

    invoke-direct {v6, p0}, Lorg/conscrypt/ScryptSecretKeyFactory$ScryptKey;-><init>([B)V

    return-object v6

    :cond_1
    const-string p0, "Cannot produce fractional-byte outputs"

    invoke-static {p0}, Ln1;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "Not a valid scrypt KeySpec"

    invoke-direct {p1, v0, p0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public engineGetKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 0

    if-nez p1, :cond_0

    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    const-string p1, "Null KeySpec"

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Lorg/conscrypt/ScryptSecretKeyFactory$NotImplementedException;

    invoke-direct {p0}, Lorg/conscrypt/ScryptSecretKeyFactory$NotImplementedException;-><init>()V

    throw p0
.end method

.method public engineTranslateKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    .locals 0

    if-nez p1, :cond_0

    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "Null SecretKey"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Lorg/conscrypt/ScryptSecretKeyFactory$NotImplementedException;

    invoke-direct {p0}, Lorg/conscrypt/ScryptSecretKeyFactory$NotImplementedException;-><init>()V

    throw p0
.end method
