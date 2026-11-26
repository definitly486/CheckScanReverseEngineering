.class public final Lorg/conscrypt/ByteArray;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bytes:[B

.field private final hashCode:I


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/conscrypt/ByteArray;->bytes:[B

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([B)I

    move-result p1

    iput p1, p0, Lorg/conscrypt/ByteArray;->hashCode:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lorg/conscrypt/ByteArray;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lorg/conscrypt/ByteArray;

    iget v0, p0, Lorg/conscrypt/ByteArray;->hashCode:I

    iget v2, p1, Lorg/conscrypt/ByteArray;->hashCode:I

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Lorg/conscrypt/ByteArray;->bytes:[B

    iget-object p1, p1, Lorg/conscrypt/ByteArray;->bytes:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Lorg/conscrypt/ByteArray;->hashCode:I

    return p0
.end method
