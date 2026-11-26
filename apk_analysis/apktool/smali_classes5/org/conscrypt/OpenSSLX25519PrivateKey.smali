.class public Lorg/conscrypt/OpenSSLX25519PrivateKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/conscrypt/OpenSSLX25519Key;
.implements Ljava/security/PrivateKey;


# static fields
.field private static final PKCS8_PREAMBLE:[B

.field private static final serialVersionUID:J = -0x2b8606a5ecc54524L


# instance fields
.field private uCoordinate:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/conscrypt/OpenSSLX25519PrivateKey;->PKCS8_PREAMBLE:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x2et
        0x2t
        0x1t
        0x0t
        0x30t
        0x5t
        0x6t
        0x3t
        0x2bt
        0x65t
        0x6et
        0x4t
        0x22t
        0x4t
        0x20t
    .end array-data
.end method

.method public constructor <init>(Ljava/security/spec/EncodedKeySpec;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getEncoded()[B

    move-result-object v0

    const-string v1, "PKCS#8"

    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v0}, Lorg/conscrypt/NativeCrypto;->EVP_raw_X25519_private_key([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/OpenSSLX25519PrivateKey;->uCoordinate:[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {p1, p0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    const-string v1, "raw"

    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getFormat()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-object v0, p0, Lorg/conscrypt/OpenSSLX25519PrivateKey;->uCoordinate:[B

    :goto_0
    array-length p0, v0

    const/16 p1, 0x20

    if-ne p0, p1, :cond_1

    return-void

    :cond_1
    const-string p0, "Invalid key size"

    invoke-static {p0}, Ln1;->c(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string p0, "Encoding must be in PKCS#8 or raw format"

    invoke-static {p0}, Ln1;->c(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 68
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/conscrypt/OpenSSLX25519PrivateKey;->uCoordinate:[B

    return-void

    .line 69
    :cond_0
    const-string p0, "Invalid key size"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-object p0, p0, Lorg/conscrypt/OpenSSLX25519PrivateKey;->uCoordinate:[B

    array-length p0, p0

    const/16 p1, 0x20

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    const-string p0, "Invalid key size"

    invoke-static {p0}, Lki0;->d(Ljava/lang/String;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lorg/conscrypt/OpenSSLX25519PrivateKey;->uCoordinate:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/conscrypt/OpenSSLX25519PrivateKey;->uCoordinate:[B

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lorg/conscrypt/OpenSSLX25519PrivateKey;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lorg/conscrypt/OpenSSLX25519PrivateKey;

    iget-object p0, p0, Lorg/conscrypt/OpenSSLX25519PrivateKey;->uCoordinate:[B

    iget-object p1, p1, Lorg/conscrypt/OpenSSLX25519PrivateKey;->uCoordinate:[B

    invoke-static {p0, p1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result p0

    return p0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 0

    const-string p0, "XDH"

    return-object p0
.end method

.method public getEncoded()[B
    .locals 1

    iget-object p0, p0, Lorg/conscrypt/OpenSSLX25519PrivateKey;->uCoordinate:[B

    if-eqz p0, :cond_0

    sget-object v0, Lorg/conscrypt/OpenSSLX25519PrivateKey;->PKCS8_PREAMBLE:[B

    invoke-static {v0, p0}, Lorg/conscrypt/ArrayUtils;->concat([B[B)[B

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

.method public getU()[B
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/OpenSSLX25519PrivateKey;->uCoordinate:[B

    if-eqz p0, :cond_0

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0

    :cond_0
    const-string p0, "key is destroyed"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/OpenSSLX25519PrivateKey;->uCoordinate:[B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    return p0
.end method

.method public isDestroyed()Z
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/OpenSSLX25519PrivateKey;->uCoordinate:[B

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
