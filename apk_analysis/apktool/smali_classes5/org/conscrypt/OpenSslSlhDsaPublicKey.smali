.class public Lorg/conscrypt/OpenSslSlhDsaPublicKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PublicKey;


# static fields
.field static final PUBLIC_KEY_SIZE_BYTES:I = 0x20

.field private static final serialVersionUID:J = 0x4589aa00e279d127L


# instance fields
.field private final raw:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/conscrypt/OpenSslSlhDsaPublicKey;->raw:[B

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

    iget-object p0, p0, Lorg/conscrypt/OpenSslSlhDsaPublicKey;->raw:[B

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

    iget-object v0, p0, Lorg/conscrypt/OpenSslSlhDsaPublicKey;->raw:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of p0, p1, Lorg/conscrypt/OpenSslSlhDsaPublicKey;

    if-nez p0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lorg/conscrypt/OpenSslSlhDsaPublicKey;

    iget-object p0, p1, Lorg/conscrypt/OpenSslSlhDsaPublicKey;->raw:[B

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

    const-string p0, "SLH-DSA-SHA2-128S"

    return-object p0
.end method

.method public getEncoded()[B
    .locals 1

    sget-object v0, Lorg/conscrypt/OpenSslSlhDsaKeyFactory;->x509Preamble:[B

    iget-object p0, p0, Lorg/conscrypt/OpenSslSlhDsaPublicKey;->raw:[B

    invoke-static {v0, p0}, Lorg/conscrypt/ArrayUtils;->concat([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    const-string p0, "X.509"

    return-object p0
.end method

.method public getRaw()[B
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/OpenSslSlhDsaPublicKey;->raw:[B

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

    iget-object p0, p0, Lorg/conscrypt/OpenSslSlhDsaPublicKey;->raw:[B

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
