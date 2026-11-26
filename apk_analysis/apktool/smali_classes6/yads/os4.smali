.class public final Lyads/os4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[B

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lyads/u56;->f:[B

    iput-object v0, p0, Lyads/os4;->a:[B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Lyads/os4;->a:[B

    iput p1, p0, Lyads/os4;->c:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lyads/os4;->a:[B

    .line 14
    array-length p1, p1

    iput p1, p0, Lyads/os4;->c:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lyads/os4;->a:[B

    .line 17
    iput p2, p0, Lyads/os4;->c:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 5

    iget-object v0, p0, Lyads/os4;->a:[B

    iget v1, p0, Lyads/os4;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lyads/os4;->b:I

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v4, v1, 0x2

    iput v4, p0, Lyads/os4;->b:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x3

    iput v3, p0, Lyads/os4;->b:I

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lyads/os4;->b:I

    aget-byte p0, v0, v3

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v2

    return p0
.end method

.method public final a(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    .line 54
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lyads/os4;->a:[B

    iget v2, p0, Lyads/os4;->b:I

    invoke-direct {v0, v1, v2, p1, p2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 55
    iget p2, p0, Lyads/os4;->b:I

    add-int/2addr p2, p1

    iput p2, p0, Lyads/os4;->b:I

    return-object v0
.end method

.method public final a(I)V
    .locals 2

    .line 46
    iget-object v0, p0, Lyads/os4;->a:[B

    array-length v1, v0

    if-le p1, v1, :cond_0

    .line 47
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lyads/os4;->a:[B

    :cond_0
    return-void
.end method

.method public final a([B)V
    .locals 1

    .line 50
    array-length v0, p1

    .line 51
    iput-object p1, p0, Lyads/os4;->a:[B

    .line 52
    iput v0, p0, Lyads/os4;->c:I

    const/4 p1, 0x0

    .line 53
    iput p1, p0, Lyads/os4;->b:I

    return-void
.end method

.method public final a([BII)V
    .locals 2

    .line 48
    iget-object v0, p0, Lyads/os4;->a:[B

    iget v1, p0, Lyads/os4;->b:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    iget p1, p0, Lyads/os4;->b:I

    add-int/2addr p1, p3

    iput p1, p0, Lyads/os4;->b:I

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lyads/os4;->c:I

    iget v1, p0, Lyads/os4;->b:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :goto_0
    iget v0, p0, Lyads/os4;->c:I

    const/16 v2, 0xd

    const/16 v3, 0xa

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lyads/os4;->a:[B

    aget-byte v0, v0, v1

    sget v4, Lyads/u56;->a:I

    if-eq v0, v3, :cond_2

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget v0, p0, Lyads/os4;->b:I

    sub-int v4, v1, v0

    const/4 v5, 0x3

    if-lt v4, v5, :cond_3

    iget-object v4, p0, Lyads/os4;->a:[B

    aget-byte v5, v4, v0

    const/16 v6, -0x11

    if-ne v5, v6, :cond_3

    add-int/lit8 v5, v0, 0x1

    aget-byte v5, v4, v5

    const/16 v6, -0x45

    if-ne v5, v6, :cond_3

    add-int/lit8 v5, v0, 0x2

    aget-byte v4, v4, v5

    const/16 v5, -0x41

    if-ne v4, v5, :cond_3

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lyads/os4;->b:I

    :cond_3
    iget-object v4, p0, Lyads/os4;->a:[B

    sub-int v5, v1, v0

    invoke-static {v4, v0, v5}, Lyads/u56;->a([BII)Ljava/lang/String;

    move-result-object v0

    iput v1, p0, Lyads/os4;->b:I

    iget v4, p0, Lyads/os4;->c:I

    if-ne v1, v4, :cond_4

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lyads/os4;->a:[B

    aget-byte v6, v5, v1

    if-ne v6, v2, :cond_5

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lyads/os4;->b:I

    if-ne v1, v4, :cond_5

    goto :goto_2

    :cond_5
    aget-byte v2, v5, v1

    if-ne v2, v3, :cond_6

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lyads/os4;->b:I

    :cond_6
    :goto_2
    return-object v0
.end method

.method public final b(I)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    .line 103
    const-string p0, ""

    return-object p0

    .line 104
    :cond_0
    iget v0, p0, Lyads/os4;->b:I

    add-int v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    .line 105
    iget v2, p0, Lyads/os4;->c:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lyads/os4;->a:[B

    aget-byte v1, v2, v1

    if-nez v1, :cond_1

    add-int/lit8 v1, p1, -0x1

    goto :goto_0

    :cond_1
    move v1, p1

    .line 106
    :goto_0
    iget-object v2, p0, Lyads/os4;->a:[B

    invoke-static {v2, v0, v1}, Lyads/u56;->a([BII)Ljava/lang/String;

    move-result-object v0

    .line 107
    iget v1, p0, Lyads/os4;->b:I

    add-int/2addr v1, p1

    iput v1, p0, Lyads/os4;->b:I

    return-object v0
.end method

.method public final c()I
    .locals 5

    iget-object v0, p0, Lyads/os4;->a:[B

    iget v1, p0, Lyads/os4;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lyads/os4;->b:I

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v1, 0x2

    iput v4, p0, Lyads/os4;->b:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x3

    iput v3, p0, Lyads/os4;->b:I

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lyads/os4;->b:I

    aget-byte p0, v0, v3

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v2

    return p0
.end method

.method public final c(I)V
    .locals 2

    .line 46
    iget-object v0, p0, Lyads/os4;->a:[B

    array-length v1, v0

    if-ge v1, p1, :cond_0

    .line 47
    new-array v0, p1, [B

    .line 48
    :cond_0
    iput-object v0, p0, Lyads/os4;->a:[B

    .line 49
    iput p1, p0, Lyads/os4;->c:I

    const/4 p1, 0x0

    .line 50
    iput p1, p0, Lyads/os4;->b:I

    return-void
.end method

.method public final d()J
    .locals 11

    iget-object v0, p0, Lyads/os4;->a:[B

    iget v1, p0, Lyads/os4;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lyads/os4;->b:I

    aget-byte v3, v0, v1

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v1, 0x2

    iput v7, p0, Lyads/os4;->b:I

    aget-byte v2, v0, v2

    int-to-long v8, v2

    and-long/2addr v8, v5

    const/16 v2, 0x8

    shl-long/2addr v8, v2

    or-long/2addr v3, v8

    add-int/lit8 v8, v1, 0x3

    iput v8, p0, Lyads/os4;->b:I

    aget-byte v7, v0, v7

    int-to-long v9, v7

    and-long/2addr v9, v5

    const/16 v7, 0x10

    shl-long/2addr v9, v7

    or-long/2addr v3, v9

    add-int/lit8 v7, v1, 0x4

    iput v7, p0, Lyads/os4;->b:I

    aget-byte v8, v0, v8

    int-to-long v8, v8

    and-long/2addr v8, v5

    const/16 v10, 0x18

    shl-long/2addr v8, v10

    or-long/2addr v3, v8

    add-int/lit8 v8, v1, 0x5

    iput v8, p0, Lyads/os4;->b:I

    aget-byte v7, v0, v7

    int-to-long v9, v7

    and-long/2addr v9, v5

    const/16 v7, 0x20

    shl-long/2addr v9, v7

    or-long/2addr v3, v9

    add-int/lit8 v7, v1, 0x6

    iput v7, p0, Lyads/os4;->b:I

    aget-byte v8, v0, v8

    int-to-long v8, v8

    and-long/2addr v8, v5

    const/16 v10, 0x28

    shl-long/2addr v8, v10

    or-long/2addr v3, v8

    add-int/lit8 v8, v1, 0x7

    iput v8, p0, Lyads/os4;->b:I

    aget-byte v7, v0, v7

    int-to-long v9, v7

    and-long/2addr v9, v5

    const/16 v7, 0x30

    shl-long/2addr v9, v7

    or-long/2addr v3, v9

    add-int/2addr v1, v2

    iput v1, p0, Lyads/os4;->b:I

    aget-byte p0, v0, v8

    int-to-long v0, p0

    and-long/2addr v0, v5

    const/16 p0, 0x38

    shl-long/2addr v0, p0

    or-long/2addr v0, v3

    return-wide v0
.end method

.method public final d(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 98
    iget-object v0, p0, Lyads/os4;->a:[B

    array-length v0, v0

    if-gt p1, v0, :cond_0

    .line 99
    iput p1, p0, Lyads/os4;->c:I

    return-void

    .line 100
    :cond_0
    invoke-static {}, Lmi2;->b()V

    return-void
.end method

.method public final e()J
    .locals 10

    iget-object v0, p0, Lyads/os4;->a:[B

    iget v1, p0, Lyads/os4;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lyads/os4;->b:I

    aget-byte v3, v0, v1

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v1, 0x2

    iput v7, p0, Lyads/os4;->b:I

    aget-byte v2, v0, v2

    int-to-long v8, v2

    and-long/2addr v8, v5

    const/16 v2, 0x8

    shl-long/2addr v8, v2

    or-long v2, v3, v8

    add-int/lit8 v4, v1, 0x3

    iput v4, p0, Lyads/os4;->b:I

    aget-byte v7, v0, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    const/16 v9, 0x10

    shl-long/2addr v7, v9

    or-long/2addr v2, v7

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lyads/os4;->b:I

    aget-byte p0, v0, v4

    int-to-long v0, p0

    and-long/2addr v0, v5

    const/16 p0, 0x18

    shl-long/2addr v0, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final e(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 52
    iget v0, p0, Lyads/os4;->c:I

    if-gt p1, v0, :cond_0

    .line 53
    iput p1, p0, Lyads/os4;->b:I

    return-void

    .line 54
    :cond_0
    invoke-static {}, Lmi2;->b()V

    return-void
.end method

.method public final f()I
    .locals 4

    iget-object v0, p0, Lyads/os4;->a:[B

    iget v1, p0, Lyads/os4;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lyads/os4;->b:I

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lyads/os4;->b:I

    aget-byte p0, v0, v2

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v3

    return p0
.end method

.method public final g()J
    .locals 10

    iget-object v0, p0, Lyads/os4;->a:[B

    iget v1, p0, Lyads/os4;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lyads/os4;->b:I

    aget-byte v3, v0, v1

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/16 v7, 0x38

    shl-long/2addr v3, v7

    add-int/lit8 v7, v1, 0x2

    iput v7, p0, Lyads/os4;->b:I

    aget-byte v2, v0, v2

    int-to-long v8, v2

    and-long/2addr v8, v5

    const/16 v2, 0x30

    shl-long/2addr v8, v2

    or-long v2, v3, v8

    add-int/lit8 v4, v1, 0x3

    iput v4, p0, Lyads/os4;->b:I

    aget-byte v7, v0, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    const/16 v9, 0x28

    shl-long/2addr v7, v9

    or-long/2addr v2, v7

    add-int/lit8 v7, v1, 0x4

    iput v7, p0, Lyads/os4;->b:I

    aget-byte v4, v0, v4

    int-to-long v8, v4

    and-long/2addr v8, v5

    const/16 v4, 0x20

    shl-long/2addr v8, v4

    or-long/2addr v2, v8

    add-int/lit8 v4, v1, 0x5

    iput v4, p0, Lyads/os4;->b:I

    aget-byte v7, v0, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    const/16 v9, 0x18

    shl-long/2addr v7, v9

    or-long/2addr v2, v7

    add-int/lit8 v7, v1, 0x6

    iput v7, p0, Lyads/os4;->b:I

    aget-byte v4, v0, v4

    int-to-long v8, v4

    and-long/2addr v8, v5

    const/16 v4, 0x10

    shl-long/2addr v8, v4

    or-long/2addr v2, v8

    add-int/lit8 v4, v1, 0x7

    iput v4, p0, Lyads/os4;->b:I

    aget-byte v7, v0, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    const/16 v9, 0x8

    shl-long/2addr v7, v9

    or-long/2addr v2, v7

    add-int/2addr v1, v9

    iput v1, p0, Lyads/os4;->b:I

    aget-byte p0, v0, v4

    int-to-long v0, p0

    and-long/2addr v0, v5

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final h()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lyads/os4;->c:I

    iget v1, p0, Lyads/os4;->b:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :goto_0
    iget v0, p0, Lyads/os4;->c:I

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lyads/os4;->a:[B

    aget-byte v0, v0, v1

    if-eqz v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lyads/os4;->a:[B

    iget v2, p0, Lyads/os4;->b:I

    sub-int v3, v1, v2

    invoke-static {v0, v2, v3}, Lyads/u56;->a([BII)Ljava/lang/String;

    move-result-object v0

    iput v1, p0, Lyads/os4;->b:I

    iget v2, p0, Lyads/os4;->c:I

    if-ge v1, v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lyads/os4;->b:I

    :cond_2
    return-object v0
.end method

.method public final i()S
    .locals 4

    iget-object v0, p0, Lyads/os4;->a:[B

    iget v1, p0, Lyads/os4;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lyads/os4;->b:I

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lyads/os4;->b:I

    aget-byte p0, v0, v2

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v3

    int-to-short p0, p0

    return p0
.end method

.method public final j()I
    .locals 3

    invoke-virtual {p0}, Lyads/os4;->k()I

    move-result v0

    invoke-virtual {p0}, Lyads/os4;->k()I

    move-result v1

    invoke-virtual {p0}, Lyads/os4;->k()I

    move-result v2

    invoke-virtual {p0}, Lyads/os4;->k()I

    move-result p0

    shl-int/lit8 v0, v0, 0x15

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x7

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method public final k()I
    .locals 3

    iget-object v0, p0, Lyads/os4;->a:[B

    iget v1, p0, Lyads/os4;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lyads/os4;->b:I

    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public final l()J
    .locals 10

    iget-object v0, p0, Lyads/os4;->a:[B

    iget v1, p0, Lyads/os4;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lyads/os4;->b:I

    aget-byte v3, v0, v1

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/16 v7, 0x18

    shl-long/2addr v3, v7

    add-int/lit8 v7, v1, 0x2

    iput v7, p0, Lyads/os4;->b:I

    aget-byte v2, v0, v2

    int-to-long v8, v2

    and-long/2addr v8, v5

    const/16 v2, 0x10

    shl-long/2addr v8, v2

    or-long v2, v3, v8

    add-int/lit8 v4, v1, 0x3

    iput v4, p0, Lyads/os4;->b:I

    aget-byte v7, v0, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    const/16 v9, 0x8

    shl-long/2addr v7, v9

    or-long/2addr v2, v7

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lyads/os4;->b:I

    aget-byte p0, v0, v4

    int-to-long v0, p0

    and-long/2addr v0, v5

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final m()I
    .locals 5

    iget-object v0, p0, Lyads/os4;->a:[B

    iget v1, p0, Lyads/os4;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lyads/os4;->b:I

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v4, v1, 0x2

    iput v4, p0, Lyads/os4;->b:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lyads/os4;->b:I

    aget-byte p0, v0, v4

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v2

    return p0
.end method

.method public final n()I
    .locals 1

    invoke-virtual {p0}, Lyads/os4;->a()I

    move-result p0

    if-ltz p0, :cond_0

    return p0

    :cond_0
    const-string v0, "Top bit not zero: "

    invoke-static {p0, v0}, Lyads/vx4;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final o()J
    .locals 4

    invoke-virtual {p0}, Lyads/os4;->g()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    return-wide v0

    :cond_0
    const-string p0, "Top bit not zero: "

    invoke-static {v0, v1, p0}, Lr01;->c(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final p()I
    .locals 4

    iget-object v0, p0, Lyads/os4;->a:[B

    iget v1, p0, Lyads/os4;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lyads/os4;->b:I

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lyads/os4;->b:I

    aget-byte p0, v0, v2

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v3

    return p0
.end method

.method public final q()J
    .locals 11

    iget-object v0, p0, Lyads/os4;->a:[B

    iget v1, p0, Lyads/os4;->b:I

    aget-byte v0, v0, v1

    int-to-long v0, v0

    const/4 v2, 0x7

    move v3, v2

    :goto_0
    const/4 v4, 0x6

    const/4 v5, 0x1

    if-ltz v3, :cond_2

    shl-int v6, v5, v3

    int-to-long v7, v6

    and-long/2addr v7, v0

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_1

    if-ge v3, v4, :cond_0

    sub-int/2addr v6, v5

    int-to-long v6, v6

    and-long/2addr v0, v6

    sub-int/2addr v2, v3

    goto :goto_1

    :cond_0
    if-ne v3, v2, :cond_2

    move v2, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_5

    :goto_2
    if-ge v5, v2, :cond_4

    iget-object v3, p0, Lyads/os4;->a:[B

    iget v6, p0, Lyads/os4;->b:I

    add-int/2addr v6, v5

    aget-byte v3, v3, v6

    and-int/lit16 v6, v3, 0xc0

    const/16 v7, 0x80

    if-ne v6, v7, :cond_3

    shl-long/2addr v0, v4

    and-int/lit8 v3, v3, 0x3f

    int-to-long v6, v3

    or-long/2addr v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v2, "Invalid UTF-8 sequence continuation byte: "

    invoke-static {v0, v1, v2}, Lr01;->c(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    iget v3, p0, Lyads/os4;->b:I

    add-int/2addr v3, v2

    iput v3, p0, Lyads/os4;->b:I

    return-wide v0

    :cond_5
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v2, "Invalid UTF-8 sequence first byte: "

    invoke-static {v0, v1, v2}, Lr01;->c(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
