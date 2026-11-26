.class public Lorg/conscrypt/OpenSslXwingPublicKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PublicKey;


# static fields
.field static final PUBLIC_KEY_SIZE_BYTES:I = 0x4c0

.field private static final serialVersionUID:J = 0x1L

.field private static final x509Preamble:[B


# instance fields
.field private final raw:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/conscrypt/OpenSslXwingPublicKey;->x509Preamble:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        -0x7et
        0x4t
        -0x2ct
        0x30t
        0xdt
        0x6t
        0xbt
        0x2bt
        0x6t
        0x1t
        0x4t
        0x1t
        -0x7dt
        -0x1at
        0x2dt
        -0x7ft
        -0x38t
        0x7at
        0x3t
        -0x7et
        0x4t
        -0x3ft
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/security/spec/EncodedKeySpec;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X.509"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "Invalid key size"

    const/16 v4, 0x4c0

    if-eqz v1, :cond_2

    sget-object p1, Lorg/conscrypt/OpenSslXwingPublicKey;->x509Preamble:[B

    invoke-static {v0, p1}, Lorg/conscrypt/ArrayUtils;->startsWith([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    array-length p1, p1

    array-length v1, v0

    invoke-static {v0, p1, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/OpenSslXwingPublicKey;->raw:[B

    array-length p0, p1

    if-ne p0, v4, :cond_0

    return-void

    :cond_0
    invoke-static {v3}, Ln1;->c(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string p0, "Invalid X-Wing X.509 key preamble"

    invoke-static {p0}, Ln1;->c(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getFormat()Ljava/lang/String;

    move-result-object p1

    const-string v1, "raw"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    array-length p1, v0

    if-ne p1, v4, :cond_3

    iput-object v0, p0, Lorg/conscrypt/OpenSslXwingPublicKey;->raw:[B

    return-void

    :cond_3
    invoke-static {v3}, Ln1;->c(Ljava/lang/String;)V

    throw v2

    :cond_4
    const-string p0, "Encoding must be in raw format"

    invoke-static {p0}, Ln1;->c(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    array-length v0, p1

    const/16 v1, 0x4c0

    if-ne v0, v1, :cond_0

    .line 84
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/conscrypt/OpenSslXwingPublicKey;->raw:[B

    return-void

    .line 85
    :cond_0
    const-string p0, "Invalid key size"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
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

    iget-object v0, p0, Lorg/conscrypt/OpenSslXwingPublicKey;->raw:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of p0, p1, Lorg/conscrypt/OpenSslXwingPublicKey;

    if-nez p0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lorg/conscrypt/OpenSslXwingPublicKey;

    iget-object p0, p1, Lorg/conscrypt/OpenSslXwingPublicKey;->raw:[B

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

    const-string p0, "XWING"

    return-object p0
.end method

.method public getEncoded()[B
    .locals 1

    iget-object p0, p0, Lorg/conscrypt/OpenSslXwingPublicKey;->raw:[B

    if-eqz p0, :cond_0

    sget-object v0, Lorg/conscrypt/OpenSslXwingPublicKey;->x509Preamble:[B

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

.method public getRaw()[B
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/OpenSslXwingPublicKey;->raw:[B

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

    iget-object p0, p0, Lorg/conscrypt/OpenSslXwingPublicKey;->raw:[B

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
