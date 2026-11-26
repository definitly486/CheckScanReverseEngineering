.class public final Lhy6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvu0;


# instance fields
.field public final b:Ls18;

.field public final c:Lbu0;

.field public d:Z


# direct methods
.method public constructor <init>(Ls18;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhy6;->b:Ls18;

    new-instance p1, Lbu0;

    invoke-direct {p1}, Lbu0;-><init>()V

    iput-object p1, p0, Lhy6;->c:Lbu0;

    return-void
.end method


# virtual methods
.method public final H(Lbu0;J)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Lhy6;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lhy6;->c:Lbu0;

    invoke-virtual {v0, p1, p2, p3}, Lbu0;->H(Lbu0;J)V

    invoke-virtual {p0}, Lhy6;->m()Lvu0;

    return-void

    :cond_0
    const-string p0, "closed"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final close()V
    .locals 6

    iget-object v0, p0, Lhy6;->b:Ls18;

    iget-boolean v1, p0, Lhy6;->d:Z

    if-nez v1, :cond_3

    :try_start_0
    iget-object v1, p0, Lhy6;->c:Lbu0;

    iget-wide v2, v1, Lbu0;->c:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    invoke-interface {v0, v1, v2, v3}, Ls18;->H(Lbu0;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    :goto_1
    :try_start_1
    invoke-interface {v0}, Ls18;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    if-nez v1, :cond_1

    move-object v1, v0

    :cond_1
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhy6;->d:Z

    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    throw v1

    :cond_3
    :goto_3
    return-void
.end method

.method public final d(Lgx0;)Lvu0;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Lhy6;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lhy6;->c:Lbu0;

    invoke-virtual {v0, p1}, Lbu0;->z0(Lgx0;)V

    invoke-virtual {p0}, Lhy6;->m()Lvu0;

    return-object p0

    :cond_0
    const-string p0, "closed"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final flush()V
    .locals 5

    iget-boolean v0, p0, Lhy6;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lhy6;->c:Lbu0;

    iget-wide v1, v0, Lbu0;->c:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    iget-object p0, p0, Lhy6;->b:Ls18;

    if-lez v3, :cond_0

    invoke-interface {p0, v0, v1, v2}, Ls18;->H(Lbu0;J)V

    :cond_0
    invoke-interface {p0}, Ls18;->flush()V

    return-void

    :cond_1
    const-string p0, "closed"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final getBuffer()Lbu0;
    .locals 0

    iget-object p0, p0, Lhy6;->c:Lbu0;

    return-object p0
.end method

.method public final h(J)Lvu0;
    .locals 1

    iget-boolean v0, p0, Lhy6;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lhy6;->c:Lbu0;

    invoke-virtual {v0, p1, p2}, Lbu0;->B0(J)V

    invoke-virtual {p0}, Lhy6;->m()Lvu0;

    return-object p0

    :cond_0
    const-string p0, "closed"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isOpen()Z
    .locals 0

    iget-boolean p0, p0, Lhy6;->d:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final j(I[B)Lvu0;
    .locals 2

    iget-boolean v0, p0, Lhy6;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lhy6;->c:Lbu0;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p1}, Lbu0;->write([BII)V

    invoke-virtual {p0}, Lhy6;->m()Lvu0;

    return-object p0

    :cond_0
    const-string p0, "closed"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final j0(Lv48;)J
    .locals 6

    const-wide/16 v0, 0x0

    :goto_0
    const-wide/16 v2, 0x2000

    move-object v4, p1

    check-cast v4, Lt54;

    iget-object v5, p0, Lhy6;->c:Lbu0;

    invoke-virtual {v4, v5, v2, v3}, Lt54;->t0(Lbu0;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lhy6;->m()Lvu0;

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public final k(J)Lvu0;
    .locals 1

    iget-boolean v0, p0, Lhy6;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lhy6;->c:Lbu0;

    invoke-virtual {v0, p1, p2}, Lbu0;->C0(J)V

    invoke-virtual {p0}, Lhy6;->m()Lvu0;

    return-object p0

    :cond_0
    const-string p0, "closed"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final l(Ljava/lang/String;)Lvu0;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Lhy6;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lhy6;->c:Lbu0;

    invoke-virtual {v0, p1}, Lbu0;->I0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lhy6;->m()Lvu0;

    return-object p0

    :cond_0
    const-string p0, "closed"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final m()Lvu0;
    .locals 5

    iget-boolean v0, p0, Lhy6;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lhy6;->c:Lbu0;

    invoke-virtual {v0}, Lbu0;->v()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lhy6;->b:Ls18;

    invoke-interface {v3, v0, v1, v2}, Ls18;->H(Lbu0;J)V

    :cond_0
    return-object p0

    :cond_1
    const-string p0, "closed"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final r()Lwv8;
    .locals 0

    iget-object p0, p0, Lhy6;->b:Ls18;

    invoke-interface {p0}, Ls18;->r()Lwv8;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lhy6;->b:Ls18;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final v0()Ljava/io/OutputStream;
    .locals 1

    new-instance v0, Lhy6$a;

    invoke-direct {v0, p0}, Lhy6$a;-><init>(Lhy6;)V

    return-object v0
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    iget-boolean v0, p0, Lhy6;->d:Z

    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lhy6;->c:Lbu0;

    .line 27
    invoke-virtual {v0, p1}, Lbu0;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    .line 28
    invoke-virtual {p0}, Lhy6;->m()Lvu0;

    return p1

    .line 29
    :cond_0
    const-string p0, "closed"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final write([B)Lvu0;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Lhy6;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    array-length v1, p1

    iget-object v2, p0, Lhy6;->c:Lbu0;

    invoke-virtual {v2, p1, v0, v1}, Lbu0;->write([BII)V

    invoke-virtual {p0}, Lhy6;->m()Lvu0;

    return-object p0

    :cond_0
    const-string p0, "closed"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final writeByte(I)Lvu0;
    .locals 1

    iget-boolean v0, p0, Lhy6;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lhy6;->c:Lbu0;

    invoke-virtual {v0, p1}, Lbu0;->A0(I)V

    invoke-virtual {p0}, Lhy6;->m()Lvu0;

    return-object p0

    :cond_0
    const-string p0, "closed"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final writeInt(I)Lvu0;
    .locals 1

    iget-boolean v0, p0, Lhy6;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lhy6;->c:Lbu0;

    invoke-virtual {v0, p1}, Lbu0;->D0(I)V

    invoke-virtual {p0}, Lhy6;->m()Lvu0;

    return-object p0

    :cond_0
    const-string p0, "closed"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final writeShort(I)Lvu0;
    .locals 1

    iget-boolean v0, p0, Lhy6;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lhy6;->c:Lbu0;

    invoke-virtual {v0, p1}, Lbu0;->E0(I)V

    invoke-virtual {p0}, Lhy6;->m()Lvu0;

    return-object p0

    :cond_0
    const-string p0, "closed"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
