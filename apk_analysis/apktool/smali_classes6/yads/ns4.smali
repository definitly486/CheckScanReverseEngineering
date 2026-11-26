.class public final Lyads/ns4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[B

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget-object v0, Lyads/u56;->f:[B

    iput-object v0, p0, Lyads/ns4;->a:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    array-length v0, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ns4;->a:[B

    iput v0, p0, Lyads/ns4;->d:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lyads/ns4;->a:[B

    .line 13
    iput p2, p0, Lyads/ns4;->d:I

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 113
    :cond_0
    iget v1, p0, Lyads/ns4;->c:I

    add-int/2addr v1, p1

    iput v1, p0, Lyads/ns4;->c:I

    move v1, v0

    .line 114
    :goto_0
    iget v2, p0, Lyads/ns4;->c:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_1

    add-int/lit8 v2, v2, -0x8

    .line 115
    iput v2, p0, Lyads/ns4;->c:I

    .line 116
    iget-object v3, p0, Lyads/ns4;->a:[B

    iget v4, p0, Lyads/ns4;->b:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lyads/ns4;->b:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    goto :goto_0

    .line 117
    :cond_1
    iget-object v4, p0, Lyads/ns4;->a:[B

    iget v5, p0, Lyads/ns4;->b:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    rsub-int/lit8 v6, v2, 0x8

    shr-int/2addr v4, v6

    or-int/2addr v1, v4

    rsub-int/lit8 p1, p1, 0x20

    const/4 v4, -0x1

    ushr-int p1, v4, p1

    and-int/2addr p1, v1

    if-ne v2, v3, :cond_2

    .line 118
    iput v0, p0, Lyads/ns4;->c:I

    add-int/lit8 v5, v5, 0x1

    .line 119
    iput v5, p0, Lyads/ns4;->b:I

    .line 120
    :cond_2
    invoke-virtual {p0}, Lyads/ns4;->a()V

    return p1
.end method

.method public final a(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4

    .line 121
    new-array v0, p1, [B

    .line 122
    iget v1, p0, Lyads/ns4;->c:I

    if-nez v1, :cond_0

    .line 123
    iget-object v1, p0, Lyads/ns4;->a:[B

    iget v2, p0, Lyads/ns4;->b:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    iget v1, p0, Lyads/ns4;->b:I

    add-int/2addr v1, p1

    iput v1, p0, Lyads/ns4;->b:I

    .line 125
    invoke-virtual {p0}, Lyads/ns4;->a()V

    .line 126
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0

    .line 127
    :cond_0
    invoke-static {}, Lud;->g()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final a()V
    .locals 2

    .line 128
    iget v0, p0, Lyads/ns4;->b:I

    if-ltz v0, :cond_1

    iget v1, p0, Lyads/ns4;->d:I

    if-lt v0, v1, :cond_0

    if-ne v0, v1, :cond_1

    iget p0, p0, Lyads/ns4;->c:I

    if-nez p0, :cond_1

    :cond_0
    return-void

    .line 129
    :cond_1
    invoke-static {}, Lud;->g()V

    return-void
.end method

.method public final a([BI)V
    .locals 9

    shr-int/lit8 v0, p2, 0x3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0xff

    const/16 v4, 0x8

    if-ge v2, v0, :cond_0

    iget-object v5, p0, Lyads/ns4;->a:[B

    iget v6, p0, Lyads/ns4;->b:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lyads/ns4;->b:I

    aget-byte v6, v5, v6

    iget v8, p0, Lyads/ns4;->c:I

    shl-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, p1, v2

    aget-byte v5, v5, v7

    and-int/2addr v3, v5

    sub-int/2addr v4, v8

    shr-int/2addr v3, v4

    or-int/2addr v3, v6

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    and-int/lit8 p2, p2, 0x7

    if-nez p2, :cond_1

    return-void

    :cond_1
    aget-byte v2, p1, v0

    shr-int v5, v3, p2

    and-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    iget v5, p0, Lyads/ns4;->c:I

    add-int v6, v5, p2

    if-le v6, v4, :cond_2

    iget-object v6, p0, Lyads/ns4;->a:[B

    iget v7, p0, Lyads/ns4;->b:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lyads/ns4;->b:I

    aget-byte v6, v6, v7

    and-int/2addr v6, v3

    shl-int/2addr v6, v5

    or-int/2addr v2, v6

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v5, v5, -0x8

    iput v5, p0, Lyads/ns4;->c:I

    :cond_2
    add-int/2addr v5, p2

    iput v5, p0, Lyads/ns4;->c:I

    iget-object v2, p0, Lyads/ns4;->a:[B

    iget v6, p0, Lyads/ns4;->b:I

    aget-byte v2, v2, v6

    and-int/2addr v2, v3

    rsub-int/lit8 v3, v5, 0x8

    shr-int/2addr v2, v3

    aget-byte v3, p1, v0

    rsub-int/lit8 p2, p2, 0x8

    shl-int p2, v2, p2

    int-to-byte p2, p2

    or-int/2addr p2, v3

    int-to-byte p2, p2

    aput-byte p2, p1, v0

    if-ne v5, v4, :cond_3

    iput v1, p0, Lyads/ns4;->c:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lyads/ns4;->b:I

    :cond_3
    invoke-virtual {p0}, Lyads/ns4;->a()V

    return-void
.end method

.method public final b()I
    .locals 2

    .line 13
    iget v0, p0, Lyads/ns4;->d:I

    iget v1, p0, Lyads/ns4;->b:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget p0, p0, Lyads/ns4;->c:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final b(I)V
    .locals 1

    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lyads/ns4;->b:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    iput p1, p0, Lyads/ns4;->c:I

    invoke-virtual {p0}, Lyads/ns4;->a()V

    return-void
.end method

.method public final b([BI)V
    .locals 0

    .line 14
    iput-object p1, p0, Lyads/ns4;->a:[B

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lyads/ns4;->b:I

    .line 16
    iput p1, p0, Lyads/ns4;->c:I

    .line 17
    iput p2, p0, Lyads/ns4;->d:I

    return-void
.end method

.method public final c()I
    .locals 1

    .line 30
    iget v0, p0, Lyads/ns4;->c:I

    if-nez v0, :cond_0

    .line 31
    iget p0, p0, Lyads/ns4;->b:I

    return p0

    .line 32
    :cond_0
    invoke-static {}, Lud;->g()V

    const/4 p0, 0x0

    return p0
.end method

.method public final c(I)V
    .locals 3

    div-int/lit8 v0, p1, 0x8

    iget v1, p0, Lyads/ns4;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Lyads/ns4;->b:I

    iget v2, p0, Lyads/ns4;->c:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    add-int/2addr p1, v2

    iput p1, p0, Lyads/ns4;->c:I

    const/4 v0, 0x7

    if-le p1, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lyads/ns4;->b:I

    add-int/lit8 p1, p1, -0x8

    iput p1, p0, Lyads/ns4;->c:I

    :cond_0
    invoke-virtual {p0}, Lyads/ns4;->a()V

    return-void
.end method

.method public final d()I
    .locals 1

    .line 17
    iget v0, p0, Lyads/ns4;->b:I

    mul-int/lit8 v0, v0, 0x8

    iget p0, p0, Lyads/ns4;->c:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final d(I)V
    .locals 1

    iget v0, p0, Lyads/ns4;->c:I

    if-nez v0, :cond_0

    iget v0, p0, Lyads/ns4;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lyads/ns4;->b:I

    invoke-virtual {p0}, Lyads/ns4;->a()V

    return-void

    :cond_0
    invoke-static {}, Lud;->g()V

    return-void
.end method

.method public final e()Z
    .locals 3

    iget-object v0, p0, Lyads/ns4;->a:[B

    iget v1, p0, Lyads/ns4;->b:I

    aget-byte v0, v0, v1

    iget v1, p0, Lyads/ns4;->c:I

    const/16 v2, 0x80

    shr-int v1, v2, v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lyads/ns4;->f()V

    return v0
.end method

.method public final f()V
    .locals 2

    iget v0, p0, Lyads/ns4;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lyads/ns4;->c:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lyads/ns4;->c:I

    iget v0, p0, Lyads/ns4;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lyads/ns4;->b:I

    :cond_0
    invoke-virtual {p0}, Lyads/ns4;->a()V

    return-void
.end method
