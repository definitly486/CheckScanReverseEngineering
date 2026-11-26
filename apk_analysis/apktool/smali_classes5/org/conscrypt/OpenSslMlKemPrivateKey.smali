.class public Lorg/conscrypt/OpenSslMlKemPrivateKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivateKey;


# static fields
.field static final PRIVATE_KEY_SIZE_BYTES:I = 0x40

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final algorithm:Lorg/conscrypt/MlKemAlgorithm;

.field private seed:[B


# direct methods
.method public constructor <init>([BLorg/conscrypt/MlKemAlgorithm;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/conscrypt/OpenSslMlKemPrivateKey;->seed:[B

    iput-object p2, p0, Lorg/conscrypt/OpenSslMlKemPrivateKey;->algorithm:Lorg/conscrypt/MlKemAlgorithm;

    return-void

    :cond_0
    const-string p0, "Invalid key size"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static getPkcs8Preamble(Lorg/conscrypt/MlKemAlgorithm;)[B
    .locals 2

    sget-object v0, Lorg/conscrypt/OpenSslMlKemPrivateKey$1;->$SwitchMap$org$conscrypt$MlKemAlgorithm:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object p0, Lorg/conscrypt/OpenSslMlKemKeyFactory;->pkcs8PreambleMlKem1024:[B

    return-object p0

    :cond_0
    const-string v0, "Unsupported algorithm: "

    invoke-static {p0, v0}, Lr01;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p0, Lorg/conscrypt/OpenSslMlKemKeyFactory;->pkcs8PreambleMlKem768:[B

    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "serialization not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "serialization not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lorg/conscrypt/OpenSslMlKemPrivateKey;->seed:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/conscrypt/OpenSslMlKemPrivateKey;->seed:[B

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lorg/conscrypt/OpenSslMlKemPrivateKey;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lorg/conscrypt/OpenSslMlKemPrivateKey;

    iget-object p0, p0, Lorg/conscrypt/OpenSslMlKemPrivateKey;->seed:[B

    iget-object p1, p1, Lorg/conscrypt/OpenSslMlKemPrivateKey;->seed:[B

    invoke-static {p0, p1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result p0

    return p0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 0

    const-string p0, "ML-KEM"

    return-object p0
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/OpenSslMlKemPrivateKey;->algorithm:Lorg/conscrypt/MlKemAlgorithm;

    invoke-static {v0}, Lorg/conscrypt/OpenSslMlKemPrivateKey;->getPkcs8Preamble(Lorg/conscrypt/MlKemAlgorithm;)[B

    move-result-object v0

    iget-object p0, p0, Lorg/conscrypt/OpenSslMlKemPrivateKey;->seed:[B

    invoke-static {v0, p0}, Lorg/conscrypt/ArrayUtils;->concat([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    const-string p0, "PKCS#8"

    return-object p0
.end method

.method public getMlKemAlgorithm()Lorg/conscrypt/MlKemAlgorithm;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/OpenSslMlKemPrivateKey;->algorithm:Lorg/conscrypt/MlKemAlgorithm;

    return-object p0
.end method

.method public getSeed()[B
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/OpenSslMlKemPrivateKey;->seed:[B

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
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/OpenSslMlKemPrivateKey;->seed:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iget-object p0, p0, Lorg/conscrypt/OpenSslMlKemPrivateKey;->algorithm:Lorg/conscrypt/MlKemAlgorithm;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public isDestroyed()Z
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/OpenSslMlKemPrivateKey;->seed:[B

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
