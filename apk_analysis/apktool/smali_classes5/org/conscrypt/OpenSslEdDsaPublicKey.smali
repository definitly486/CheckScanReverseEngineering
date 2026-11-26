.class public Lorg/conscrypt/OpenSslEdDsaPublicKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PublicKey;
.implements Lorg/conscrypt/OpenSSLKeyHolder;


# static fields
.field private static final serialVersionUID:J = 0x64c7113d078e42dL


# instance fields
.field private transient key:Lorg/conscrypt/OpenSSLKey;

.field private publicKeyBytes:[B


# direct methods
.method public constructor <init>(Ljava/security/spec/EncodedKeySpec;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/conscrypt/OpenSslEdDsaPublicKey;->publicKeyBytes:[B

    :try_start_0
    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "raw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lorg/conscrypt/OpenSslEdDsaPublicKey;->getOpenSslKeyFromRaw([B)Lorg/conscrypt/OpenSSLKey;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/OpenSslEdDsaPublicKey;->key:Lorg/conscrypt/OpenSSLKey;

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "X.509"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lorg/conscrypt/OpenSslEdDsaPublicKey;->getOpenSslKeyFromX509([B)Lorg/conscrypt/OpenSSLKey;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/OpenSslEdDsaPublicKey;->key:Lorg/conscrypt/OpenSSLKey;

    return-void

    :cond_1
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    const-string p1, "Encoding must be in X.509 or raw format"

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {p1, p0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lorg/conscrypt/OpenSslEdDsaPublicKey;->publicKeyBytes:[B

    .line 69
    :try_start_0
    invoke-static {p1}, Lorg/conscrypt/OpenSslEdDsaPublicKey;->getOpenSslKeyFromRaw([B)Lorg/conscrypt/OpenSSLKey;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/OpenSslEdDsaPublicKey;->key:Lorg/conscrypt/OpenSSLKey;
    :try_end_0
    .catch Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 70
    invoke-static {p0}, Lcg;->h(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static getOpenSslKeyFromRaw([B)Lorg/conscrypt/OpenSSLKey;
    .locals 3

    new-instance v0, Lorg/conscrypt/OpenSSLKey;

    const/16 v1, 0x3b5

    invoke-static {v1, p0}, Lorg/conscrypt/NativeCrypto;->EVP_PKEY_from_raw_public_key(I[B)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/conscrypt/OpenSSLKey;-><init>(J)V

    return-object v0
.end method

.method private static getOpenSslKeyFromX509([B)Lorg/conscrypt/OpenSSLKey;
    .locals 3

    new-instance v0, Lorg/conscrypt/OpenSSLKey;

    const/16 v1, 0x3b5

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-static {p0, v1}, Lorg/conscrypt/NativeCrypto;->EVP_PKEY_from_subject_public_key_info([B[I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/conscrypt/OpenSSLKey;-><init>(J)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    :try_start_0
    iget-object p1, p0, Lorg/conscrypt/OpenSslEdDsaPublicKey;->publicKeyBytes:[B

    invoke-static {p1}, Lorg/conscrypt/OpenSslEdDsaPublicKey;->getOpenSslKeyFromRaw([B)Lorg/conscrypt/OpenSSLKey;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/OpenSslEdDsaPublicKey;->key:Lorg/conscrypt/OpenSSLKey;
    :try_end_0
    .catch Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Parsing raw key failed"

    invoke-static {p1, p0}, Lcc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/conscrypt/OpenSslEdDsaPublicKey;->getRaw()[B

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/OpenSslEdDsaPublicKey;->publicKeyBytes:[B

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/conscrypt/OpenSslEdDsaPublicKey;->publicKeyBytes:[B

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

    iget-object v0, p0, Lorg/conscrypt/OpenSslEdDsaPublicKey;->key:Lorg/conscrypt/OpenSSLKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lorg/conscrypt/OpenSslEdDsaPublicKey;

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lorg/conscrypt/OpenSslEdDsaPublicKey;

    invoke-virtual {p0}, Lorg/conscrypt/OpenSslEdDsaPublicKey;->getRaw()[B

    move-result-object p0

    invoke-virtual {p1}, Lorg/conscrypt/OpenSslEdDsaPublicKey;->getRaw()[B

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

    const-string p0, "1.3.101.112"

    return-object p0
.end method

.method public getEncoded()[B
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/OpenSslEdDsaPublicKey;->key:Lorg/conscrypt/OpenSSLKey;

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

.method public getOpenSSLKey()Lorg/conscrypt/OpenSSLKey;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/OpenSslEdDsaPublicKey;->key:Lorg/conscrypt/OpenSSLKey;

    return-object p0
.end method

.method public getRaw()[B
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/OpenSslEdDsaPublicKey;->key:Lorg/conscrypt/OpenSSLKey;

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

    iget-object v0, p0, Lorg/conscrypt/OpenSslEdDsaPublicKey;->key:Lorg/conscrypt/OpenSSLKey;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/conscrypt/OpenSslEdDsaPublicKey;->getRaw()[B

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
