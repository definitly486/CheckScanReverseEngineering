.class public Lorg/conscrypt/OpenSslMlDsaPrivateKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivateKey;
.implements Lorg/conscrypt/OpenSSLKeyHolder;


# static fields
.field private static final serialVersionUID:J = 0x3bacc385e8e106a3L


# instance fields
.field private transient algorithm:Lorg/conscrypt/MlDsaAlgorithm;

.field private transient key:Lorg/conscrypt/OpenSSLKey;

.field private seed:[B


# direct methods
.method public constructor <init>(Lorg/conscrypt/OpenSSLKey;Lorg/conscrypt/MlDsaAlgorithm;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/conscrypt/OpenSslMlDsaPrivateKey;->seed:[B

    invoke-virtual {p1}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v1

    invoke-static {v1}, Lorg/conscrypt/NativeCrypto;->EVP_PKEY_type(Lorg/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v1

    invoke-static {p2}, Lorg/conscrypt/OpenSslMlDsaKeyFactory;->getPKeyType(Lorg/conscrypt/MlDsaAlgorithm;)I

    move-result v2

    if-ne v1, v2, :cond_0

    iput-object p2, p0, Lorg/conscrypt/OpenSslMlDsaPrivateKey;->algorithm:Lorg/conscrypt/MlDsaAlgorithm;

    iput-object p1, p0, Lorg/conscrypt/OpenSslMlDsaPrivateKey;->key:Lorg/conscrypt/OpenSSLKey;

    return-void

    :cond_0
    const-string p0, "Invalid key type"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([BLorg/conscrypt/MlDsaAlgorithm;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lorg/conscrypt/OpenSslMlDsaPrivateKey;->seed:[B

    .line 33
    iput-object p2, p0, Lorg/conscrypt/OpenSslMlDsaPrivateKey;->algorithm:Lorg/conscrypt/MlDsaAlgorithm;

    .line 34
    :try_start_0
    invoke-static {p1, p2}, Lorg/conscrypt/OpenSslMlDsaPrivateKey;->getOpenSslKeyFromSeed([BLorg/conscrypt/MlDsaAlgorithm;)Lorg/conscrypt/OpenSSLKey;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/OpenSslMlDsaPrivateKey;->key:Lorg/conscrypt/OpenSSLKey;
    :try_end_0
    .catch Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 35
    const-string p1, "Invalid key"

    invoke-static {p1, p0}, Lcc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static encodeSeed([BLorg/conscrypt/MlDsaAlgorithm;)[B
    .locals 3

    array-length v0, p0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_2

    sget-object v0, Lorg/conscrypt/MlDsaAlgorithm;->ML_DSA_65:Lorg/conscrypt/MlDsaAlgorithm;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0

    :cond_0
    sget-object v0, Lorg/conscrypt/MlDsaAlgorithm;->ML_DSA_44:Lorg/conscrypt/MlDsaAlgorithm;

    const/16 v2, 0x21

    if-ne p1, v0, :cond_1

    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const/16 p1, 0x2c

    aput-byte p1, p0, v1

    return-object p0

    :cond_1
    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const/16 p1, 0x57

    aput-byte p1, p0, v1

    return-object p0

    :cond_2
    const-string p0, "Invalid seed"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getAlgorithmFromEncodedSeed([B)Lorg/conscrypt/MlDsaAlgorithm;
    .locals 4

    array-length v0, p0

    const/16 v1, 0x20

    const/16 v2, 0x21

    if-ne v0, v2, :cond_0

    aget-byte v0, p0, v1

    const/16 v3, 0x2c

    if-ne v0, v3, :cond_0

    sget-object p0, Lorg/conscrypt/MlDsaAlgorithm;->ML_DSA_44:Lorg/conscrypt/MlDsaAlgorithm;

    return-object p0

    :cond_0
    array-length v0, p0

    if-ne v0, v1, :cond_1

    sget-object p0, Lorg/conscrypt/MlDsaAlgorithm;->ML_DSA_65:Lorg/conscrypt/MlDsaAlgorithm;

    return-object p0

    :cond_1
    array-length v0, p0

    if-ne v0, v2, :cond_2

    aget-byte p0, p0, v1

    const/16 v0, 0x57

    if-ne p0, v0, :cond_2

    sget-object p0, Lorg/conscrypt/MlDsaAlgorithm;->ML_DSA_87:Lorg/conscrypt/MlDsaAlgorithm;

    return-object p0

    :cond_2
    const-string p0, "Invalid encoded seed"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getOpenSslKeyFromSeed([BLorg/conscrypt/MlDsaAlgorithm;)Lorg/conscrypt/OpenSSLKey;
    .locals 2

    array-length v0, p0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/conscrypt/OpenSSLKey;

    invoke-static {p1}, Lorg/conscrypt/OpenSslMlDsaKeyFactory;->getPKeyType(Lorg/conscrypt/MlDsaAlgorithm;)I

    move-result p1

    invoke-static {p1, p0}, Lorg/conscrypt/NativeCrypto;->EVP_PKEY_from_private_seed(I[B)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Lorg/conscrypt/OpenSSLKey;-><init>(J)V

    return-object v0

    :cond_0
    new-instance p0, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    const-string p1, "Invalid key size"

    invoke-direct {p0, p1}, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static isValid([BLorg/conscrypt/MlDsaAlgorithm;)Z
    .locals 5

    sget-object v0, Lorg/conscrypt/MlDsaAlgorithm;->ML_DSA_44:Lorg/conscrypt/MlDsaAlgorithm;

    const/16 v1, 0x21

    const/4 v2, 0x1

    const/16 v3, 0x20

    const/4 v4, 0x0

    if-ne p1, v0, :cond_1

    array-length p1, p0

    if-ne p1, v1, :cond_0

    aget-byte p0, p0, v3

    const/16 p1, 0x2c

    if-ne p0, p1, :cond_0

    return v2

    :cond_0
    return v4

    :cond_1
    sget-object v0, Lorg/conscrypt/MlDsaAlgorithm;->ML_DSA_65:Lorg/conscrypt/MlDsaAlgorithm;

    if-ne p1, v0, :cond_3

    array-length p0, p0

    if-ne p0, v3, :cond_2

    return v2

    :cond_2
    return v4

    :cond_3
    sget-object v0, Lorg/conscrypt/MlDsaAlgorithm;->ML_DSA_87:Lorg/conscrypt/MlDsaAlgorithm;

    if-ne p1, v0, :cond_4

    array-length p1, p0

    if-ne p1, v1, :cond_4

    aget-byte p0, p0, v3

    const/16 p1, 0x57

    if-ne p0, p1, :cond_4

    return v2

    :cond_4
    return v4
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-object p1, p0, Lorg/conscrypt/OpenSslMlDsaPrivateKey;->seed:[B

    invoke-static {p1}, Lorg/conscrypt/OpenSslMlDsaPrivateKey;->getAlgorithmFromEncodedSeed([B)Lorg/conscrypt/MlDsaAlgorithm;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/OpenSslMlDsaPrivateKey;->algorithm:Lorg/conscrypt/MlDsaAlgorithm;

    iget-object v0, p0, Lorg/conscrypt/OpenSslMlDsaPrivateKey;->seed:[B

    invoke-static {v0, p1}, Lorg/conscrypt/OpenSslMlDsaPrivateKey;->isValid([BLorg/conscrypt/MlDsaAlgorithm;)Z

    move-result p1

    const-string v0, "Invalid key"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/conscrypt/OpenSslMlDsaPrivateKey;->seed:[B

    const/16 v1, 0x20

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    :try_start_0
    iget-object v1, p0, Lorg/conscrypt/OpenSslMlDsaPrivateKey;->algorithm:Lorg/conscrypt/MlDsaAlgorithm;

    invoke-static {p1, v1}, Lorg/conscrypt/OpenSslMlDsaPrivateKey;->getOpenSslKeyFromSeed([BLorg/conscrypt/MlDsaAlgorithm;)Lorg/conscrypt/OpenSSLKey;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/OpenSslMlDsaPrivateKey;->key:Lorg/conscrypt/OpenSSLKey;
    :try_end_0
    .catch Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/conscrypt/OpenSslMlDsaPrivateKey;->seed:[B

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    invoke-static {v0}, Lki0;->d(Ljava/lang/String;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/conscrypt/OpenSslMlDsaPrivateKey;->getSeed()[B

    move-result-object v0

    iget-object v1, p0, Lorg/conscrypt/OpenSslMlDsaPrivateKey;->algorithm:Lorg/conscrypt/MlDsaAlgorithm;

    invoke-static {v0, v1}, Lorg/conscrypt/OpenSslMlDsaPrivateKey;->encodeSeed([BLorg/conscrypt/MlDsaAlgorithm;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/OpenSslMlDsaPrivateKey;->seed:[B

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/conscrypt/OpenSslMlDsaPrivateKey;->seed:[B

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/conscrypt/OpenSslMlDsaPrivateKey;->key:Lorg/conscrypt/OpenSSLKey;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/conscrypt/OpenSslMlDsaPrivateKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/conscrypt/OpenSslMlDsaPrivateKey;

    iget-object v1, p0, Lorg/conscrypt/OpenSslMlDsaPrivateKey;->algorithm:Lorg/conscrypt/MlDsaAlgorithm;

    iget-object v3, p1, Lorg/conscrypt/OpenSslMlDsaPrivateKey;->algorithm:Lorg/conscrypt/MlDsaAlgorithm;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/conscrypt/OpenSslMlDsaPrivateKey;->getSeed()[B

    move-result-object p0

    invoke-virtual {p1}, Lorg/conscrypt/OpenSslMlDsaPrivateKey;->getSeed()[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 0

    const-string p0, "ML-DSA"

    return-object p0
.end method

.method public getEncoded()[B
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/OpenSslMlDsaPrivateKey;->key:Lorg/conscrypt/OpenSSLKey;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object p0

    invoke-static {p0}, Lorg/conscrypt/NativeCrypto;->EVP_marshal_private_key(Lorg/conscrypt/NativeRef$EVP_PKEY;)[B

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "key is destroyed"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    const-string p0, "PKCS#8"

    return-object p0
.end method

.method public getMlDsaAlgorithm()Lorg/conscrypt/MlDsaAlgorithm;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/OpenSslMlDsaPrivateKey;->algorithm:Lorg/conscrypt/MlDsaAlgorithm;

    return-object p0
.end method

.method public getOpenSSLKey()Lorg/conscrypt/OpenSSLKey;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/OpenSslMlDsaPrivateKey;->key:Lorg/conscrypt/OpenSSLKey;

    return-object p0
.end method

.method public getSeed()[B
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/OpenSslMlDsaPrivateKey;->key:Lorg/conscrypt/OpenSSLKey;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object p0

    invoke-static {p0}, Lorg/conscrypt/NativeCrypto;->EVP_PKEY_get_private_seed(Lorg/conscrypt/NativeRef$EVP_PKEY;)[B

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "key is destroyed"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Lorg/conscrypt/OpenSslMlDsaPrivateKey;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    return p0
.end method

.method public isDestroyed()Z
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/OpenSslMlDsaPrivateKey;->key:Lorg/conscrypt/OpenSSLKey;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
