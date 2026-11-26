.class public final Ley6$a;
.super Ljava/io/InputStream;
.source "SourceFile"

# interfaces
.implements Lgg4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ley6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public b:Ldy6;


# virtual methods
.method public final available()I
    .locals 0

    iget-object p0, p0, Ley6$a;->b:Ldy6;

    invoke-interface {p0}, Ldy6;->q()I

    move-result p0

    return p0
.end method

.method public final close()V
    .locals 0

    iget-object p0, p0, Ley6$a;->b:Ldy6;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public final mark(I)V
    .locals 0

    iget-object p0, p0, Ley6$a;->b:Ldy6;

    invoke-interface {p0}, Ldy6;->I()V

    return-void
.end method

.method public final markSupported()Z
    .locals 0

    iget-object p0, p0, Ley6$a;->b:Ldy6;

    invoke-interface {p0}, Ldy6;->markSupported()Z

    move-result p0

    return p0
.end method

.method public final read()I
    .locals 1

    .line 22
    iget-object p0, p0, Ley6$a;->b:Ldy6;

    invoke-interface {p0}, Ldy6;->q()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 23
    :cond_0
    invoke-interface {p0}, Ldy6;->readUnsignedByte()I

    move-result p0

    return p0
.end method

.method public final read([BII)I
    .locals 1

    iget-object p0, p0, Ley6$a;->b:Ldy6;

    invoke-interface {p0}, Ldy6;->q()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-interface {p0}, Ldy6;->q()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-interface {p0, p1, p2, p3}, Ldy6;->G([BII)V

    return p3
.end method

.method public final reset()V
    .locals 0

    iget-object p0, p0, Ley6$a;->b:Ldy6;

    invoke-interface {p0}, Ldy6;->reset()V

    return-void
.end method

.method public final skip(J)J
    .locals 2

    iget-object p0, p0, Ley6$a;->b:Ldy6;

    invoke-interface {p0}, Ldy6;->q()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p1, p1

    invoke-interface {p0, p1}, Ldy6;->skipBytes(I)V

    int-to-long p0, p1

    return-wide p0
.end method
