.class public final Lorg/conscrypt/Hkdf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final hmacName:Ljava/lang/String;

.field private final macLength:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/conscrypt/Hkdf;->hmacName:Ljava/lang/String;

    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/crypto/Mac;->getMacLength()I

    move-result p1

    iput p1, p0, Lorg/conscrypt/Hkdf;->macLength:I

    return-void
.end method

.method private getMac([B)Ljavax/crypto/Mac;
    .locals 2

    iget-object p0, p0, Lorg/conscrypt/Hkdf;->hmacName:Ljava/lang/String;

    invoke-static {p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p0

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "RAW"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    return-object p0
.end method


# virtual methods
.method public expand([B[BI)[B
    .locals 7

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Negative length"

    invoke-static {v2, v3}, Lorg/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    invoke-virtual {p0}, Lorg/conscrypt/Hkdf;->getMacLength()I

    move-result v2

    mul-int/lit16 v2, v2, 0xff

    if-gt p3, v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const-string v3, "Length too long"

    invoke-static {v2, v3}, Lorg/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/conscrypt/Hkdf;->getMac([B)Ljavax/crypto/Mac;

    move-result-object p1

    invoke-virtual {p0}, Lorg/conscrypt/Hkdf;->getMacLength()I

    move-result p0

    new-array v2, v1, [B

    new-array v3, p3, [B

    new-array v4, v0, [B

    aput-byte v1, v4, v1

    move v5, v1

    :goto_2
    if-ge v5, p3, :cond_2

    aget-byte v6, v4, v1

    add-int/2addr v6, v0

    int-to-byte v6, v6

    aput-byte v6, v4, v1

    invoke-virtual {p1, v2}, Ljavax/crypto/Mac;->update([B)V

    invoke-virtual {p1, p2}, Ljavax/crypto/Mac;->update([B)V

    invoke-virtual {p1, v4}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v2

    sub-int v6, p3, v5

    invoke-static {p0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v2, v1, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v6

    goto :goto_2

    :cond_2
    return-object v3
.end method

.method public extract([B[B)[B
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Empty keying material"

    invoke-static {v0, v1}, Lorg/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    array-length v0, p1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/conscrypt/Hkdf;->getMacLength()I

    move-result p1

    new-array p1, p1, [B

    :cond_1
    invoke-direct {p0, p1}, Lorg/conscrypt/Hkdf;->getMac([B)Ljavax/crypto/Mac;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public getMacLength()I
    .locals 0

    iget p0, p0, Lorg/conscrypt/Hkdf;->macLength:I

    return p0
.end method
