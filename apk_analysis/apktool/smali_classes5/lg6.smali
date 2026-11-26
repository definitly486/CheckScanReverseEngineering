.class public final Llg6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:[Lat;


# virtual methods
.method public final a(ILat;)V
    .locals 8

    :goto_0
    shr-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    iget-object v1, p0, Llg6;->b:[Lat;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v2, v1, Lat;->g:J

    iget-wide v4, p2, Lat;->g:J

    const-wide/16 v6, 0x0

    sub-long/2addr v4, v2

    invoke-static {v6, v7, v4, v5}, Laa4;->g(JJ)I

    move-result v2

    if-lez v2, :cond_0

    iput p1, v1, Lat;->f:I

    iget-object v2, p0, Llg6;->b:[Lat;

    aput-object v1, v2, p1

    move p1, v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Llg6;->b:[Lat;

    aput-object p2, p0, p1

    iput p1, p2, Lat;->f:I

    return-void
.end method

.method public final b(Lat;)V
    .locals 9

    iget v0, p1, Lat;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    iget v2, p0, Llg6;->a:I

    iget-object v3, p0, Llg6;->b:[Lat;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v1, p1, Lat;->f:I

    iget-object v1, p0, Llg6;->b:[Lat;

    const/4 v4, 0x0

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Llg6;->a:I

    if-ne p1, v3, :cond_0

    return-void

    :cond_0
    iget-wide v1, p1, Lat;->g:J

    iget-wide v4, v3, Lat;->g:J

    sub-long/2addr v4, v1

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v4, v5}, Laa4;->g(JJ)I

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Llg6;->b:[Lat;

    aput-object v3, p0, v0

    iput v0, v3, Lat;->f:I

    return-void

    :cond_1
    if-gez p1, :cond_5

    :goto_0
    shl-int/lit8 p1, v0, 0x1

    add-int/lit8 v4, p1, 0x1

    iget v5, p0, Llg6;->a:I

    if-gt v4, v5, :cond_3

    iget-object v5, p0, Llg6;->b:[Lat;

    aget-object p1, v5, p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, p0, Llg6;->b:[Lat;

    aget-object v4, v5, v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v5, p1, Lat;->g:J

    iget-wide v7, v4, Lat;->g:J

    sub-long/2addr v7, v5

    invoke-static {v1, v2, v7, v8}, Laa4;->g(JJ)I

    move-result v5

    if-gez v5, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, v4

    goto :goto_1

    :cond_3
    if-gt p1, v5, :cond_4

    iget-object v4, p0, Llg6;->b:[Lat;

    aget-object p1, v4, p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    iget-wide v4, v3, Lat;->g:J

    iget-wide v6, p1, Lat;->g:J

    sub-long/2addr v6, v4

    invoke-static {v1, v2, v6, v7}, Laa4;->g(JJ)I

    move-result v4

    if-lez v4, :cond_4

    iget v4, p1, Lat;->f:I

    iput v0, p1, Lat;->f:I

    iget-object v5, p0, Llg6;->b:[Lat;

    aput-object p1, v5, v0

    move v0, v4

    goto :goto_0

    :cond_4
    iget-object p0, p0, Llg6;->b:[Lat;

    aput-object v3, p0, v0

    iput v0, v3, Lat;->f:I

    return-void

    :cond_5
    invoke-virtual {p0, v0, v3}, Llg6;->a(ILat;)V

    return-void

    :cond_6
    const-string p0, "Failed requirement."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method
