.class public Lorg/conscrypt/OpenSSLX25519PublicKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/conscrypt/OpenSSLX25519Key;
.implements Ljava/security/PublicKey;


# static fields
.field private static final X509_PREAMBLE:[B

.field private static final serialVersionUID:J = 0x64c7113d078e42dL


# instance fields
.field private final uCoordinate:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/conscrypt/OpenSSLX25519PublicKey;->X509_PREAMBLE:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x2at
        0x30t
        0x5t
        0x6t
        0x3t
        0x2bt
        0x65t
        0x6et
        0x3t
        0x21t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/security/spec/EncodedKeySpec;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getEncoded()[B

    move-result-object v0

    const-string v1, "X.509"

    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "Invalid key size"

    const/16 v4, 0x20

    if-eqz v1, :cond_2

    sget-object p1, Lorg/conscrypt/OpenSSLX25519PublicKey;->X509_PREAMBLE:[B

    invoke-static {v0, p1}, Lorg/conscrypt/ArrayUtils;->startsWith([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    array-length v1, p1

    add-int/2addr v1, v4

    array-length v4, v0

    if-lt v4, v1, :cond_0

    array-length p1, p1

    invoke-static {v0, p1, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/OpenSSLX25519PublicKey;->uCoordinate:[B

    return-void

    :cond_0
    invoke-static {v3}, Ln1;->c(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string p0, "Invalid format"

    invoke-static {p0}, Ln1;->c(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string v1, "raw"

    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getFormat()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    array-length p1, v0

    if-ne p1, v4, :cond_3

    iput-object v0, p0, Lorg/conscrypt/OpenSSLX25519PublicKey;->uCoordinate:[B

    return-void

    :cond_3
    invoke-static {v3}, Ln1;->c(Ljava/lang/String;)V

    throw v2

    :cond_4
    const-string p0, "Encoding must be in X.509 or raw format"

    invoke-static {p0}, Ln1;->c(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 85
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/conscrypt/OpenSSLX25519PublicKey;->uCoordinate:[B

    return-void

    .line 86
    :cond_0
    const-string p0, "Invalid key size"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-object p0, p0, Lorg/conscrypt/OpenSSLX25519PublicKey;->uCoordinate:[B

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
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lorg/conscrypt/OpenSSLX25519PublicKey;->uCoordinate:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of p0, p1, Lorg/conscrypt/OpenSSLX25519PublicKey;

    if-nez p0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lorg/conscrypt/OpenSSLX25519PublicKey;

    iget-object p0, p1, Lorg/conscrypt/OpenSSLX25519PublicKey;->uCoordinate:[B

    invoke-static {v0, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_2
    const-string p0, "key is destroyed"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return v1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 0

    const-string p0, "XDH"

    return-object p0
.end method

.method public getEncoded()[B
    .locals 1

    iget-object p0, p0, Lorg/conscrypt/OpenSSLX25519PublicKey;->uCoordinate:[B

    if-eqz p0, :cond_0

    sget-object v0, Lorg/conscrypt/OpenSSLX25519PublicKey;->X509_PREAMBLE:[B

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

    const-string p0, "X.509"

    return-object p0
.end method

.method public getU()[B
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/OpenSSLX25519PublicKey;->uCoordinate:[B

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

    iget-object p0, p0, Lorg/conscrypt/OpenSSLX25519PublicKey;->uCoordinate:[B

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    return p0

    :cond_0
    const-string p0, "key is destroyed"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
