.class public final Lesa;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public b:J


# virtual methods
.method public final write(I)V
    .locals 4

    .line 24
    iget-wide v0, p0, Lesa;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lesa;->b:J

    return-void
.end method

.method public final write([B)V
    .locals 4

    .line 23
    iget-wide v0, p0, Lesa;->b:J

    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lesa;->b:J

    return-void
.end method

.method public final write([BII)V
    .locals 2

    if-ltz p2, :cond_0

    array-length p1, p1

    if-gt p2, p1, :cond_0

    if-ltz p3, :cond_0

    add-int/2addr p2, p3

    if-gt p2, p1, :cond_0

    if-ltz p2, :cond_0

    iget-wide p1, p0, Lesa;->b:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lesa;->b:J

    return-void

    :cond_0
    invoke-static {}, Lv93;->b()V

    return-void
.end method
