.class public Lorg/conscrypt/OpenSslSlhDsaPrivateKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivateKey;


# static fields
.field static final PRIVATE_KEY_SIZE_BYTES:I = 0x40

.field private static final serialVersionUID:J = -0x78178895bb6e0135L


# instance fields
.field private raw:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/conscrypt/OpenSslSlhDsaPrivateKey;->raw:[B

    return-void

    :cond_0
    const-string p0, "Invalid key size"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-object p0, p0, Lorg/conscrypt/OpenSslSlhDsaPrivateKey;->raw:[B

    array-length p0, p0

    const/16 p1, 0x40

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

    iget-object v0, p0, Lorg/conscrypt/OpenSslSlhDsaPrivateKey;->raw:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/conscrypt/OpenSslSlhDsaPrivateKey;->raw:[B

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lorg/conscrypt/OpenSslSlhDsaPrivateKey;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lorg/conscrypt/OpenSslSlhDsaPrivateKey;

    iget-object p0, p0, Lorg/conscrypt/OpenSslSlhDsaPrivateKey;->raw:[B

    iget-object p1, p1, Lorg/conscrypt/OpenSslSlhDsaPrivateKey;->raw:[B

    invoke-static {p0, p1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result p0

    return p0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 0

    const-string p0, "SLH-DSA-SHA2-128S"

    return-object p0
.end method

.method public getEncoded()[B
    .locals 1

    sget-object v0, Lorg/conscrypt/OpenSslSlhDsaKeyFactory;->pkcs8Preamble:[B

    iget-object p0, p0, Lorg/conscrypt/OpenSslSlhDsaPrivateKey;->raw:[B

    invoke-static {v0, p0}, Lorg/conscrypt/ArrayUtils;->concat([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    const-string p0, "PKCS#8"

    return-object p0
.end method

.method public getRaw()[B
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/OpenSslSlhDsaPrivateKey;->raw:[B

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

    iget-object p0, p0, Lorg/conscrypt/OpenSslSlhDsaPrivateKey;->raw:[B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    return p0
.end method

.method public isDestroyed()Z
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/OpenSslSlhDsaPrivateKey;->raw:[B

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
