.class public Lorg/conscrypt/OpenSslMlDsaPublicKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PublicKey;
.implements Lorg/conscrypt/OpenSSLKeyHolder;


# static fields
.field private static final serialVersionUID:J = 0x64c7113d078e42dL


# instance fields
.field private transient algorithm:Lorg/conscrypt/MlDsaAlgorithm;

.field private transient key:Lorg/conscrypt/OpenSSLKey;

.field private raw:[B


# direct methods
.method public constructor <init>(Lorg/conscrypt/OpenSSLKey;Lorg/conscrypt/MlDsaAlgorithm;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/conscrypt/OpenSslMlDsaPublicKey;->raw:[B

    invoke-virtual {p1}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v1

    invoke-static {v1}, Lorg/conscrypt/NativeCrypto;->EVP_PKEY_type(Lorg/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v1

    invoke-static {p2}, Lorg/conscrypt/OpenSslMlDsaKeyFactory;->getPKeyType(Lorg/conscrypt/MlDsaAlgorithm;)I

    move-result v2

    if-ne v1, v2, :cond_0

    iput-object p2, p0, Lorg/conscrypt/OpenSslMlDsaPublicKey;->algorithm:Lorg/conscrypt/MlDsaAlgorithm;

    iput-object p1, p0, Lorg/conscrypt/OpenSslMlDsaPublicKey;->key:Lorg/conscrypt/OpenSSLKey;

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
    iput-object v0, p0, Lorg/conscrypt/OpenSslMlDsaPublicKey;->raw:[B

    .line 33
    iput-object p2, p0, Lorg/conscrypt/OpenSslMlDsaPublicKey;->algorithm:Lorg/conscrypt/MlDsaAlgorithm;

    .line 34
    :try_start_0
    invoke-static {p1, p2}, Lorg/conscrypt/OpenSslMlDsaPublicKey;->getOpenSslKeyFromRaw([BLorg/conscrypt/MlDsaAlgorithm;)Lorg/conscrypt/OpenSSLKey;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/OpenSslMlDsaPublicKey;->key:Lorg/conscrypt/OpenSSLKey;
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

.method private static getAlgorithmFromRaw([B)Lorg/conscrypt/MlDsaAlgorithm;
    .locals 3

    array-length v0, p0

    sget-object v1, Lorg/conscrypt/MlDsaAlgorithm;->ML_DSA_44:Lorg/conscrypt/MlDsaAlgorithm;

    invoke-virtual {v1}, Lorg/conscrypt/MlDsaAlgorithm;->publicKeySize()I

    move-result v2

    if-ne v0, v2, :cond_0

    return-object v1

    :cond_0
    array-length v0, p0

    sget-object v1, Lorg/conscrypt/MlDsaAlgorithm;->ML_DSA_65:Lorg/conscrypt/MlDsaAlgorithm;

    invoke-virtual {v1}, Lorg/conscrypt/MlDsaAlgorithm;->publicKeySize()I

    move-result v2

    if-ne v0, v2, :cond_1

    return-object v1

    :cond_1
    array-length v0, p0

    sget-object v1, Lorg/conscrypt/MlDsaAlgorithm;->ML_DSA_87:Lorg/conscrypt/MlDsaAlgorithm;

    invoke-virtual {v1}, Lorg/conscrypt/MlDsaAlgorithm;->publicKeySize()I

    move-result v2

    if-ne v0, v2, :cond_2

    return-object v1

    :cond_2
    const-string v0, "Invalid raw key of length "

    array-length p0, p0

    invoke-static {p0, v0}, Ljn;->f(ILjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getOpenSslKeyFromRaw([BLorg/conscrypt/MlDsaAlgorithm;)Lorg/conscrypt/OpenSSLKey;
    .locals 1

    new-instance v0, Lorg/conscrypt/OpenSSLKey;

    invoke-static {p1}, Lorg/conscrypt/OpenSslMlDsaKeyFactory;->getPKeyType(Lorg/conscrypt/MlDsaAlgorithm;)I

    move-result p1

    invoke-static {p1, p0}, Lorg/conscrypt/NativeCrypto;->EVP_PKEY_from_raw_public_key(I[B)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Lorg/conscrypt/OpenSSLKey;-><init>(J)V

    return-object v0
.end method

.method private static isValid([BLorg/conscrypt/MlDsaAlgorithm;)Z
    .locals 0

    array-length p0, p0

    invoke-virtual {p1}, Lorg/conscrypt/MlDsaAlgorithm;->publicKeySize()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-object p1, p0, Lorg/conscrypt/OpenSslMlDsaPublicKey;->raw:[B

    invoke-static {p1}, Lorg/conscrypt/OpenSslMlDsaPublicKey;->getAlgorithmFromRaw([B)Lorg/conscrypt/MlDsaAlgorithm;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/OpenSslMlDsaPublicKey;->algorithm:Lorg/conscrypt/MlDsaAlgorithm;

    iget-object v0, p0, Lorg/conscrypt/OpenSslMlDsaPublicKey;->raw:[B

    invoke-static {v0, p1}, Lorg/conscrypt/OpenSslMlDsaPublicKey;->isValid([BLorg/conscrypt/MlDsaAlgorithm;)Z

    move-result p1

    const-string v0, "Invalid key"

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lorg/conscrypt/OpenSslMlDsaPublicKey;->raw:[B

    iget-object v1, p0, Lorg/conscrypt/OpenSslMlDsaPublicKey;->algorithm:Lorg/conscrypt/MlDsaAlgorithm;

    invoke-static {p1, v1}, Lorg/conscrypt/OpenSslMlDsaPublicKey;->getOpenSslKeyFromRaw([BLorg/conscrypt/MlDsaAlgorithm;)Lorg/conscrypt/OpenSSLKey;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/OpenSslMlDsaPublicKey;->key:Lorg/conscrypt/OpenSSLKey;
    :try_end_0
    .catch Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/conscrypt/OpenSslMlDsaPublicKey;->raw:[B

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
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/conscrypt/OpenSslMlDsaPublicKey;->key:Lorg/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v0

    invoke-static {v0}, Lorg/conscrypt/NativeCrypto;->EVP_PKEY_get_raw_public_key(Lorg/conscrypt/NativeRef$EVP_PKEY;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/OpenSslMlDsaPublicKey;->raw:[B

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/conscrypt/OpenSslMlDsaPublicKey;->raw:[B

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
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lorg/conscrypt/OpenSslMlDsaPublicKey;->key:Lorg/conscrypt/OpenSSLKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lorg/conscrypt/OpenSslMlDsaPublicKey;

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lorg/conscrypt/OpenSslMlDsaPublicKey;

    invoke-virtual {p0}, Lorg/conscrypt/OpenSslMlDsaPublicKey;->getRaw()[B

    move-result-object p0

    invoke-virtual {p1}, Lorg/conscrypt/OpenSslMlDsaPublicKey;->getRaw()[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_2
    const-string p0, "key is destroyed"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return v1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 0

    const-string p0, "ML-DSA"

    return-object p0
.end method

.method public getEncoded()[B
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/OpenSslMlDsaPublicKey;->key:Lorg/conscrypt/OpenSSLKey;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object p0

    invoke-static {p0}, Lorg/conscrypt/NativeCrypto;->EVP_marshal_public_key(Lorg/conscrypt/NativeRef$EVP_PKEY;)[B

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

    const-string p0, "X.509"

    return-object p0
.end method

.method public getMlDsaAlgorithm()Lorg/conscrypt/MlDsaAlgorithm;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/OpenSslMlDsaPublicKey;->algorithm:Lorg/conscrypt/MlDsaAlgorithm;

    return-object p0
.end method

.method public getOpenSSLKey()Lorg/conscrypt/OpenSSLKey;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/OpenSslMlDsaPublicKey;->key:Lorg/conscrypt/OpenSSLKey;

    return-object p0
.end method

.method public getRaw()[B
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/OpenSslMlDsaPublicKey;->key:Lorg/conscrypt/OpenSSLKey;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object p0

    invoke-static {p0}, Lorg/conscrypt/NativeCrypto;->EVP_PKEY_get_raw_public_key(Lorg/conscrypt/NativeRef$EVP_PKEY;)[B

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "key is destroyed"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/OpenSslMlDsaPublicKey;->key:Lorg/conscrypt/OpenSSLKey;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/conscrypt/OpenSslMlDsaPublicKey;->getRaw()[B

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    return p0

    :cond_0
    const-string p0, "key is destroyed"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
