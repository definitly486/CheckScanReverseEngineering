.class public final Liy6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwu0;


# instance fields
.field public final b:Lv48;

.field public final c:Lbu0;

.field public d:Z


# direct methods
.method public constructor <init>(Lv48;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liy6;->b:Lv48;

    new-instance p1, Lbu0;

    invoke-direct {p1}, Lbu0;-><init>()V

    iput-object p1, p0, Liy6;->c:Lbu0;

    return-void
.end method


# virtual methods
.method public final C()[B
    .locals 2

    iget-object v0, p0, Liy6;->b:Lv48;

    iget-object p0, p0, Liy6;->c:Lbu0;

    invoke-virtual {p0, v0}, Lbu0;->j0(Lv48;)J

    iget-wide v0, p0, Lbu0;->c:J

    invoke-virtual {p0, v0, v1}, Lbu0;->Z(J)[B

    move-result-object p0

    return-object p0
.end method

.method public final E(J)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1, p2}, Liy6;->c0(J)V

    iget-object p0, p0, Liy6;->c:Lbu0;

    sget-object v0, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lbu0;->n0(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final F(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Liy6;->b:Lv48;

    iget-object p0, p0, Liy6;->c:Lbu0;

    invoke-virtual {p0, v0}, Lbu0;->j0(Lv48;)J

    iget-wide v0, p0, Lbu0;->c:J

    invoke-virtual {p0, v0, v1, p1}, Lbu0;->n0(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final M()J
    .locals 6

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Liy6;->c0(J)V

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x1

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Liy6;->request(J)Z

    move-result v2

    iget-object v3, p0, Liy6;->c:Lbu0;

    if-eqz v2, :cond_5

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Lbu0;->Q(J)B

    move-result v2

    const/16 v4, 0x30

    if-lt v2, v4, :cond_0

    const/16 v4, 0x39

    if-le v2, v4, :cond_2

    :cond_0
    const/16 v4, 0x61

    if-lt v2, v4, :cond_1

    const/16 v4, 0x66

    if-le v2, v4, :cond_2

    :cond_1
    const/16 v4, 0x41

    if-lt v2, v4, :cond_3

    const/16 v4, 0x46

    if-le v2, v4, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/NumberFormatException;

    const/16 v0, 0x10

    invoke-static {v0}, Lga1;->b(I)V

    invoke-static {v2, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    invoke-virtual {v3}, Lbu0;->M()J

    move-result-wide v0

    return-wide v0
.end method

.method public final S(J)Ljava/lang/String;
    .locals 18

    move-wide/from16 v6, p1

    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-ltz v0, :cond_3

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v0, v6, v8

    const-wide/16 v10, 0x1

    if-nez v0, :cond_0

    move-wide v4, v8

    goto :goto_0

    :cond_0
    add-long v0, v6, v10

    move-wide v4, v0

    :goto_0
    const/16 v1, 0xa

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Liy6;->n(BJJ)J

    move-result-wide v1

    const-wide/16 v12, -0x1

    cmp-long v3, v1, v12

    iget-object v12, v0, Liy6;->c:Lbu0;

    if-eqz v3, :cond_1

    invoke-static {v12, v1, v2}, Lb;->c(Lbu0;J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    cmp-long v1, v4, v8

    if-gez v1, :cond_2

    invoke-virtual {v0, v4, v5}, Liy6;->request(J)Z

    move-result v1

    if-eqz v1, :cond_2

    sub-long v1, v4, v10

    invoke-virtual {v12, v1, v2}, Lbu0;->Q(J)B

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    add-long v1, v4, v10

    invoke-virtual {v0, v1, v2}, Liy6;->request(J)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v12, v4, v5}, Lbu0;->Q(J)B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    invoke-static {v12, v4, v5}, Lb;->c(Lbu0;J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v13, Lbu0;

    invoke-direct {v13}, Lbu0;-><init>()V

    iget-wide v0, v12, Lbu0;->c:J

    const-wide/16 v2, 0x20

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v16

    const-wide/16 v14, 0x0

    invoke-virtual/range {v12 .. v17}, Lbu0;->E(Lbu0;JJ)V

    new-instance v0, Ljava/io/EOFException;

    iget-wide v1, v12, Lbu0;->c:J

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iget-wide v3, v13, Lbu0;->c:J

    invoke-virtual {v13, v3, v4}, Lbu0;->i(J)Lgx0;

    move-result-object v3

    invoke-virtual {v3}, Lgx0;->g()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\\n not found: limit="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " content="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2026

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string v0, "limit < 0: "

    invoke-static {v6, v7, v0}, Lr01;->c(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc9;->f(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final W(Lgx0;)J
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Liy6;->d:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_2

    :goto_0
    iget-object v0, p0, Liy6;->c:Lbu0;

    invoke-virtual {v0, p1, v1, v2}, Lbu0;->V(Lgx0;J)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    return-wide v3

    :cond_0
    iget-wide v3, v0, Lbu0;->c:J

    iget-object v7, p0, Liy6;->b:Lv48;

    const-wide/16 v8, 0x2000

    invoke-interface {v7, v0, v8, v9}, Lv48;->t0(Lbu0;J)J

    move-result-wide v7

    cmp-long v0, v7, v5

    if-nez v0, :cond_1

    return-wide v5

    :cond_1
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_0

    :cond_2
    const-string p0, "closed"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-wide v1
.end method

.method public final Y()Ljava/lang/String;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Liy6;->S(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lbu0;J)V
    .locals 1

    iget-object v0, p0, Liy6;->c:Lbu0;

    :try_start_0
    invoke-virtual {p0, p2, p3}, Liy6;->c0(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, p1, p2, p3}, Lbu0;->c(Lbu0;J)V

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p1, v0}, Lbu0;->j0(Lv48;)J

    throw p0
.end method

.method public final c0(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Liy6;->request(J)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ln7;->e()V

    return-void
.end method

.method public final close()V
    .locals 1

    iget-boolean v0, p0, Liy6;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Liy6;->d:Z

    iget-object v0, p0, Liy6;->b:Lv48;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    iget-object p0, p0, Liy6;->c:Lbu0;

    invoke-virtual {p0}, Lbu0;->p()V

    :cond_0
    return-void
.end method

.method public final f0(Lyz5;)I
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Liy6;->d:Z

    if-nez v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Liy6;->c:Lbu0;

    invoke-static {v1, p1, v0}, Lb;->d(Lbu0;Lyz5;Z)I

    move-result v0

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v3, :cond_2

    iget-object p0, p1, Lyz5;->c:[Lgx0;

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lgx0;->f()I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {v1, p0, p1}, Lbu0;->skip(J)V

    return v0

    :cond_1
    iget-object v0, p0, Liy6;->b:Lv48;

    const-wide/16 v4, 0x2000

    invoke-interface {v0, v1, v4, v5}, Lv48;->t0(Lbu0;J)J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    :cond_2
    return v3

    :cond_3
    const-string p0, "closed"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getBuffer()Lbu0;
    .locals 0

    iget-object p0, p0, Liy6;->c:Lbu0;

    return-object p0
.end method

.method public final i(J)Lgx0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Liy6;->c0(J)V

    iget-object p0, p0, Liy6;->c:Lbu0;

    invoke-virtual {p0, p1, p2}, Lbu0;->i(J)Lgx0;

    move-result-object p0

    return-object p0
.end method

.method public final isOpen()Z
    .locals 0

    iget-boolean p0, p0, Liy6;->d:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final m()Z
    .locals 6

    iget-boolean v0, p0, Liy6;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Liy6;->c:Lbu0;

    invoke-virtual {v0}, Lbu0;->P()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Liy6;->b:Lv48;

    const-wide/16 v2, 0x2000

    invoke-interface {p0, v0, v2, v3}, Lv48;->t0(Lbu0;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long p0, v2, v4

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1

    :cond_1
    const-string p0, "closed"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return v1
.end method

.method public final n(BJJ)J
    .locals 8

    iget-boolean p2, p0, Liy6;->d:Z

    const-wide/16 v0, 0x0

    if-nez p2, :cond_4

    cmp-long p2, v0, p4

    if-gtz p2, :cond_3

    move-wide v4, v0

    :goto_0
    cmp-long p2, v4, p4

    const-wide/16 v0, -0x1

    if-gez p2, :cond_2

    iget-object v2, p0, Liy6;->c:Lbu0;

    move v3, p1

    move-wide v6, p4

    invoke-virtual/range {v2 .. v7}, Lbu0;->U(BJJ)J

    move-result-wide p1

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    return-wide p1

    :cond_0
    iget-wide p1, v2, Lbu0;->c:J

    cmp-long p3, p1, v6

    if-gez p3, :cond_2

    iget-object p3, p0, Liy6;->b:Lv48;

    const-wide/16 p4, 0x2000

    invoke-interface {p3, v2, p4, p5}, Lv48;->t0(Lbu0;J)J

    move-result-wide p3

    cmp-long p3, p3, v0

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move p1, v3

    move-wide p4, v6

    goto :goto_0

    :cond_2
    :goto_1
    return-wide v0

    :cond_3
    move-wide v6, p4

    const-string p0, "fromIndex=0 toIndex="

    invoke-static {v6, v7, p0}, Lr01;->c(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    return-wide v0

    :cond_4
    const-string p0, "closed"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-wide v0
.end method

.method public final o()Liy6;
    .locals 1

    new-instance v0, Lq46;

    invoke-direct {v0, p0}, Lq46;-><init>(Lwu0;)V

    new-instance p0, Liy6;

    invoke-direct {p0, v0}, Liy6;-><init>(Lv48;)V

    return-object p0
.end method

.method public final o0(Ls18;)J
    .locals 10

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :cond_0
    :goto_0
    iget-object v4, p0, Liy6;->b:Lv48;

    const-wide/16 v5, 0x2000

    iget-object v7, p0, Liy6;->c:Lbu0;

    invoke-interface {v4, v7, v5, v6}, Lv48;->t0(Lbu0;J)J

    move-result-wide v4

    const-wide/16 v8, -0x1

    cmp-long v4, v4, v8

    if-eqz v4, :cond_1

    invoke-virtual {v7}, Lbu0;->v()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_0

    add-long/2addr v2, v4

    invoke-interface {p1, v7, v4, v5}, Ls18;->H(Lbu0;J)V

    goto :goto_0

    :cond_1
    iget-wide v4, v7, Lbu0;->c:J

    cmp-long p0, v4, v0

    if-lez p0, :cond_2

    add-long/2addr v2, v4

    invoke-interface {p1, v7, v4, v5}, Ls18;->H(Lbu0;J)V

    :cond_2
    return-wide v2
.end method

.method public final p()I
    .locals 2

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Liy6;->c0(J)V

    iget-object p0, p0, Liy6;->c:Lbu0;

    invoke-virtual {p0}, Lbu0;->readInt()I

    move-result p0

    invoke-static {p0}, Lh;->d(I)I

    move-result p0

    return p0
.end method

.method public final r()Lwv8;
    .locals 0

    iget-object p0, p0, Liy6;->b:Lv48;

    invoke-interface {p0}, Lv48;->r()Lwv8;

    move-result-object p0

    return-object p0
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Liy6;->c:Lbu0;

    iget-wide v1, v0, Lbu0;->c:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object p0, p0, Liy6;->b:Lv48;

    const-wide/16 v1, 0x2000

    invoke-interface {p0, v0, v1, v2}, Lv48;->t0(Lbu0;J)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p0, v1, v3

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {v0, p1}, Lbu0;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method public final readByte()B
    .locals 2

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Liy6;->c0(J)V

    iget-object p0, p0, Liy6;->c:Lbu0;

    invoke-virtual {p0}, Lbu0;->readByte()B

    move-result p0

    return p0
.end method

.method public final readInt()I
    .locals 2

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Liy6;->c0(J)V

    iget-object p0, p0, Liy6;->c:Lbu0;

    invoke-virtual {p0}, Lbu0;->readInt()I

    move-result p0

    return p0
.end method

.method public final readShort()S
    .locals 2

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Liy6;->c0(J)V

    iget-object p0, p0, Liy6;->c:Lbu0;

    invoke-virtual {p0}, Lbu0;->readShort()S

    move-result p0

    return p0
.end method

.method public final request(J)Z
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_3

    iget-boolean v0, p0, Liy6;->d:Z

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Liy6;->c:Lbu0;

    iget-wide v2, v0, Lbu0;->c:J

    cmp-long v2, v2, p1

    if-gez v2, :cond_1

    iget-object v2, p0, Liy6;->b:Lv48;

    const-wide/16 v3, 0x2000

    invoke-interface {v2, v0, v3, v4}, Lv48;->t0(Lbu0;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const-string p0, "closed"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return v1

    :cond_3
    const-string p0, "byteCount < 0: "

    invoke-static {p1, p2, p0}, Lr01;->c(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    return v1
.end method

.method public final skip(J)V
    .locals 5

    iget-boolean v0, p0, Liy6;->d:Z

    if-nez v0, :cond_3

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    iget-object v2, p0, Liy6;->c:Lbu0;

    iget-wide v3, v2, Lbu0;->c:J

    cmp-long v0, v3, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Liy6;->b:Lv48;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v2, v3, v4}, Lv48;->t0(Lbu0;J)J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Ln7;->e()V

    return-void

    :cond_1
    :goto_1
    iget-wide v0, v2, Lbu0;->c:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lbu0;->skip(J)V

    sub-long/2addr p1, v0

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    const-string p0, "closed"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final t0(Lbu0;J)J
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3

    iget-boolean v3, p0, Liy6;->d:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Liy6;->c:Lbu0;

    iget-wide v4, v3, Lbu0;->c:J

    cmp-long v4, v4, v0

    if-nez v4, :cond_1

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    iget-object p0, p0, Liy6;->b:Lv48;

    const-wide/16 v0, 0x2000

    invoke-interface {p0, v3, v0, v1}, Lv48;->t0(Lbu0;J)J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long p0, v0, v4

    if-nez p0, :cond_1

    return-wide v4

    :cond_1
    iget-wide v0, v3, Lbu0;->c:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-virtual {v3, p1, p2, p3}, Lbu0;->t0(Lbu0;J)J

    move-result-wide p0

    return-wide p0

    :cond_2
    const-string p0, "closed"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-wide v0

    :cond_3
    const-string p0, "byteCount < 0: "

    invoke-static {p2, p3, p0}, Lr01;->c(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Liy6;->b:Lv48;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final v()J
    .locals 19

    move-object/from16 v0, p0

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Liy6;->c0(J)V

    iget-object v0, v0, Liy6;->c:Lbu0;

    iget-wide v3, v0, Lbu0;->c:J

    cmp-long v3, v3, v1

    if-ltz v3, :cond_2

    iget-object v3, v0, Lbu0;->b:Lgl7;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v3, Lgl7;->b:I

    iget v5, v3, Lgl7;->c:I

    sub-int v6, v5, v4

    int-to-long v6, v6

    cmp-long v6, v6, v1

    const/16 v9, 0x38

    const/16 v10, 0x8

    const/16 v11, 0x20

    const-wide/16 v12, 0xff

    if-gez v6, :cond_0

    invoke-virtual {v0}, Lbu0;->readInt()I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    shl-long/2addr v1, v11

    invoke-virtual {v0}, Lbu0;->readInt()I

    move-result v0

    int-to-long v5, v0

    and-long/2addr v3, v5

    or-long v0, v1, v3

    const/16 p0, 0x18

    const/16 v18, 0x28

    goto :goto_1

    :cond_0
    iget-object v6, v3, Lgl7;->a:[B

    add-int/lit8 v14, v4, 0x1

    aget-byte v15, v6, v4

    move-wide/from16 v16, v1

    int-to-long v1, v15

    and-long/2addr v1, v12

    shl-long/2addr v1, v9

    add-int/lit8 v15, v4, 0x2

    aget-byte v14, v6, v14

    const/16 p0, 0x18

    const/16 v18, 0x28

    int-to-long v7, v14

    and-long/2addr v7, v12

    const/16 v14, 0x30

    shl-long/2addr v7, v14

    or-long/2addr v1, v7

    add-int/lit8 v7, v4, 0x3

    aget-byte v8, v6, v15

    int-to-long v14, v8

    and-long/2addr v14, v12

    shl-long v14, v14, v18

    or-long/2addr v1, v14

    add-int/lit8 v8, v4, 0x4

    aget-byte v7, v6, v7

    int-to-long v14, v7

    and-long/2addr v14, v12

    shl-long/2addr v14, v11

    or-long/2addr v1, v14

    add-int/lit8 v7, v4, 0x5

    aget-byte v8, v6, v8

    int-to-long v14, v8

    and-long/2addr v14, v12

    shl-long v14, v14, p0

    or-long/2addr v1, v14

    add-int/lit8 v8, v4, 0x6

    aget-byte v7, v6, v7

    int-to-long v14, v7

    and-long/2addr v14, v12

    const/16 v7, 0x10

    shl-long/2addr v14, v7

    or-long/2addr v1, v14

    add-int/lit8 v7, v4, 0x7

    aget-byte v8, v6, v8

    int-to-long v14, v8

    and-long/2addr v14, v12

    shl-long/2addr v14, v10

    or-long/2addr v1, v14

    add-int/2addr v4, v10

    aget-byte v6, v6, v7

    int-to-long v6, v6

    and-long/2addr v6, v12

    or-long/2addr v1, v6

    iget-wide v6, v0, Lbu0;->c:J

    sub-long v6, v6, v16

    iput-wide v6, v0, Lbu0;->c:J

    if-ne v4, v5, :cond_1

    invoke-virtual {v3}, Lgl7;->a()Lgl7;

    move-result-object v4

    iput-object v4, v0, Lbu0;->b:Lgl7;

    invoke-static {v3}, Lil7;->a(Lgl7;)V

    :goto_0
    move-wide v0, v1

    goto :goto_1

    :cond_1
    iput v4, v3, Lgl7;->b:I

    goto :goto_0

    :goto_1
    const-wide/high16 v2, -0x100000000000000L

    and-long/2addr v2, v0

    ushr-long/2addr v2, v9

    const-wide/high16 v4, 0xff000000000000L

    and-long/2addr v4, v0

    ushr-long v4, v4, v18

    or-long/2addr v2, v4

    const-wide v4, 0xff0000000000L

    and-long/2addr v4, v0

    ushr-long v4, v4, p0

    or-long/2addr v2, v4

    const-wide v4, 0xff00000000L

    and-long/2addr v4, v0

    ushr-long/2addr v4, v10

    or-long/2addr v2, v4

    const-wide v4, 0xff000000L

    and-long/2addr v4, v0

    shl-long/2addr v4, v10

    or-long/2addr v2, v4

    const-wide/32 v4, 0xff0000

    and-long/2addr v4, v0

    shl-long v4, v4, p0

    or-long/2addr v2, v4

    const-wide/32 v4, 0xff00

    and-long/2addr v4, v0

    shl-long v4, v4, v18

    or-long/2addr v2, v4

    and-long/2addr v0, v12

    shl-long/2addr v0, v9

    or-long/2addr v0, v2

    goto :goto_2

    :cond_2
    invoke-static {}, Ln7;->e()V

    const-wide/16 v0, 0x0

    :goto_2
    return-wide v0
.end method

.method public final w0()Ljava/io/InputStream;
    .locals 1

    new-instance v0, Liy6$a;

    invoke-direct {v0, p0}, Liy6$a;-><init>(Liy6;)V

    return-object v0
.end method

.method public final y()S
    .locals 2

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Liy6;->c0(J)V

    iget-object p0, p0, Liy6;->c:Lbu0;

    invoke-virtual {p0}, Lbu0;->k0()S

    move-result p0

    return p0
.end method
