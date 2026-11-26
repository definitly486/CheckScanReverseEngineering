.class public Lorg/conscrypt/OpenSslMlKemPublicKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PublicKey;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final algorithm:Lorg/conscrypt/MlKemAlgorithm;

.field private final raw:[B


# direct methods
.method public constructor <init>([BLorg/conscrypt/MlKemAlgorithm;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/conscrypt/MlKemAlgorithm;->ML_KEM_768:Lorg/conscrypt/MlKemAlgorithm;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-object v0, Lorg/conscrypt/MlKemAlgorithm;->ML_KEM_1024:Lorg/conscrypt/MlKemAlgorithm;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Unsupported algorithm"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    array-length v0, p1

    invoke-virtual {p2}, Lorg/conscrypt/MlKemAlgorithm;->publicKeySize()I

    move-result v2

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/conscrypt/OpenSslMlKemPublicKey;->raw:[B

    iput-object p2, p0, Lorg/conscrypt/OpenSslMlKemPublicKey;->algorithm:Lorg/conscrypt/MlKemAlgorithm;

    return-void

    :cond_2
    const-string p0, "Invalid raw key of length "

    array-length p1, p1

    invoke-static {p1, p0}, Ljn;->f(ILjava/lang/String;)V

    throw v1
.end method

.method private static getX509Preamble(Lorg/conscrypt/MlKemAlgorithm;)[B
    .locals 2

    sget-object v0, Lorg/conscrypt/OpenSslMlKemPublicKey$1;->$SwitchMap$org$conscrypt$MlKemAlgorithm:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object p0, Lorg/conscrypt/OpenSslMlKemKeyFactory;->x509PreambleMlKem1024:[B

    return-object p0

    :cond_0
    const-string v0, "Unsupported algorithm: "

    invoke-static {p0, v0}, Lr01;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p0, Lorg/conscrypt/OpenSslMlKemKeyFactory;->x509PreambleMlKem768:[B

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
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lorg/conscrypt/OpenSslMlKemPublicKey;->raw:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of p0, p1, Lorg/conscrypt/OpenSslMlKemPublicKey;

    if-nez p0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lorg/conscrypt/OpenSslMlKemPublicKey;

    iget-object p0, p1, Lorg/conscrypt/OpenSslMlKemPublicKey;->raw:[B

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

    const-string p0, "ML-KEM"

    return-object p0
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/OpenSslMlKemPublicKey;->algorithm:Lorg/conscrypt/MlKemAlgorithm;

    invoke-static {v0}, Lorg/conscrypt/OpenSslMlKemPublicKey;->getX509Preamble(Lorg/conscrypt/MlKemAlgorithm;)[B

    move-result-object v0

    iget-object p0, p0, Lorg/conscrypt/OpenSslMlKemPublicKey;->raw:[B

    invoke-static {v0, p0}, Lorg/conscrypt/ArrayUtils;->concat([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    const-string p0, "X.509"

    return-object p0
.end method

.method public getMlKemAlgorithm()Lorg/conscrypt/MlKemAlgorithm;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/OpenSslMlKemPublicKey;->algorithm:Lorg/conscrypt/MlKemAlgorithm;

    return-object p0
.end method

.method public getRaw()[B
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/OpenSslMlKemPublicKey;->raw:[B

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

    iget-object v0, p0, Lorg/conscrypt/OpenSslMlKemPublicKey;->raw:[B

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iget-object p0, p0, Lorg/conscrypt/OpenSslMlKemPublicKey;->algorithm:Lorg/conscrypt/MlKemAlgorithm;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_0
    const-string p0, "key is destroyed"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
