.class public final Lsi0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/io/Serializable;


# virtual methods
.method public a()I
    .locals 2

    iget-object v0, p0, Lsi0;->c:Ljava/io/Serializable;

    check-cast v0, [B

    array-length v0, v0

    iget v1, p0, Lsi0;->a:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget p0, p0, Lsi0;->b:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public b(I)I
    .locals 11

    iget-object v0, p0, Lsi0;->c:Ljava/io/Serializable;

    check-cast v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt p1, v2, :cond_5

    const/16 v3, 0x20

    if-gt p1, v3, :cond_5

    invoke-virtual {p0}, Lsi0;->a()I

    move-result v3

    if-gt p1, v3, :cond_5

    iget v3, p0, Lsi0;->b:I

    const/16 v4, 0xff

    const/16 v5, 0x8

    if-lez v3, :cond_2

    rsub-int/lit8 v6, v3, 0x8

    if-ge p1, v6, :cond_0

    move v7, p1

    goto :goto_0

    :cond_0
    move v7, v6

    :goto_0
    sub-int/2addr v6, v7

    rsub-int/lit8 v8, v7, 0x8

    shr-int v8, v4, v8

    shl-int/2addr v8, v6

    iget v9, p0, Lsi0;->a:I

    aget-byte v10, v0, v9

    and-int/2addr v8, v10

    shr-int v6, v8, v6

    sub-int/2addr p1, v7

    add-int/2addr v3, v7

    iput v3, p0, Lsi0;->b:I

    if-ne v3, v5, :cond_1

    iput v1, p0, Lsi0;->b:I

    add-int/2addr v9, v2

    iput v9, p0, Lsi0;->a:I

    :cond_1
    move v1, v6

    :cond_2
    if-lez p1, :cond_4

    :goto_1
    if-lt p1, v5, :cond_3

    shl-int/lit8 v1, v1, 0x8

    iget v3, p0, Lsi0;->a:I

    aget-byte v6, v0, v3

    and-int/2addr v6, v4

    or-int/2addr v1, v6

    add-int/2addr v3, v2

    iput v3, p0, Lsi0;->a:I

    add-int/lit8 p1, p1, -0x8

    goto :goto_1

    :cond_3
    if-lez p1, :cond_4

    rsub-int/lit8 v2, p1, 0x8

    shr-int v3, v4, v2

    shl-int/2addr v3, v2

    shl-int/2addr v1, p1

    iget v4, p0, Lsi0;->a:I

    aget-byte v0, v0, v4

    and-int/2addr v0, v3

    shr-int/2addr v0, v2

    or-int/2addr v0, v1

    iget v1, p0, Lsi0;->b:I

    add-int/2addr v1, p1

    iput v1, p0, Lsi0;->b:I

    return v0

    :cond_4
    return v1

    :cond_5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return v1
.end method
