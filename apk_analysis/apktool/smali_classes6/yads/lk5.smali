.class public final Lyads/lk5;
.super Lyads/wp;
.source "SourceFile"


# instance fields
.field public final i:J

.field public final j:J

.field public final k:S

.field public l:I

.field public m:Z

.field public n:[B

.field public o:[B

.field public p:I

.field public q:I

.field public r:I

.field public s:Z

.field public t:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lyads/wp;-><init>()V

    const-wide/32 v0, 0x249f0

    iput-wide v0, p0, Lyads/lk5;->i:J

    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Lyads/lk5;->j:J

    const/16 v0, 0x400

    iput-short v0, p0, Lyads/lk5;->k:S

    sget-object v0, Lyads/u56;->f:[B

    iput-object v0, p0, Lyads/lk5;->n:[B

    iput-object v0, p0, Lyads/lk5;->o:[B

    return-void
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 10

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lyads/wp;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_12

    iget v0, p0, Lyads/lk5;->p:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    const/4 v3, 0x0

    if-eq v0, v2, :cond_5

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    :goto_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v4

    if-ge v1, v4, :cond_2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget-short v5, p0, Lyads/lk5;->k:S

    if-le v4, v5, :cond_1

    iget v4, p0, Lyads/lk5;->l:I

    div-int/2addr v1, v4

    mul-int/2addr v1, v4

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    :goto_2
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-wide v4, p0, Lyads/lk5;->t:J

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    iget v7, p0, Lyads/lk5;->l:I

    div-int/2addr v6, v7

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lyads/lk5;->t:J

    iget-object v4, p0, Lyads/lk5;->o:[B

    iget v5, p0, Lyads/lk5;->r:I

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    iget v7, p0, Lyads/lk5;->r:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v7, p0, Lyads/lk5;->r:I

    sub-int/2addr v7, v6

    sub-int/2addr v5, v7

    iget-object v8, p0, Lyads/lk5;->o:[B

    invoke-static {v4, v5, v8, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v4, p0, Lyads/lk5;->o:[B

    invoke-virtual {p1, v4, v7, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    if-ge v1, v0, :cond_0

    iget-object v1, p0, Lyads/lk5;->o:[B

    iget v4, p0, Lyads/lk5;->r:I

    invoke-virtual {p0, v4}, Lyads/wp;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v1, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-lez v4, :cond_3

    iput-boolean v2, p0, Lyads/lk5;->s:Z

    :cond_3
    iput v3, p0, Lyads/lk5;->p:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lud;->g()V

    return-void

    :cond_5
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v4

    :goto_3
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v5

    if-ge v4, v5, :cond_7

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget-short v6, p0, Lyads/lk5;->k:S

    if-le v5, v6, :cond_6

    iget v5, p0, Lyads/lk5;->l:I

    div-int/2addr v4, v5

    mul-int/2addr v4, v5

    goto :goto_4

    :cond_6
    add-int/lit8 v4, v4, 0x2

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v4

    :goto_4
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v5

    sub-int v5, v4, v5

    iget-object v6, p0, Lyads/lk5;->n:[B

    array-length v7, v6

    iget v8, p0, Lyads/lk5;->q:I

    sub-int/2addr v7, v8

    if-ge v4, v0, :cond_9

    if-ge v5, v7, :cond_9

    invoke-virtual {p0, v8}, Lyads/wp;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v6, v3, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-lez v8, :cond_8

    iput-boolean v2, p0, Lyads/lk5;->s:Z

    :cond_8
    iput v3, p0, Lyads/lk5;->q:I

    iput v3, p0, Lyads/lk5;->p:I

    goto/16 :goto_0

    :cond_9
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v5, p0, Lyads/lk5;->n:[B

    iget v6, p0, Lyads/lk5;->q:I

    invoke-virtual {p1, v5, v6, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget v5, p0, Lyads/lk5;->q:I

    add-int/2addr v5, v4

    iput v5, p0, Lyads/lk5;->q:I

    iget-object v4, p0, Lyads/lk5;->n:[B

    array-length v6, v4

    if-ne v5, v6, :cond_c

    iget-boolean v6, p0, Lyads/lk5;->s:Z

    if-eqz v6, :cond_b

    iget v5, p0, Lyads/lk5;->r:I

    invoke-virtual {p0, v5}, Lyads/wp;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6, v4, v3, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-lez v5, :cond_a

    iput-boolean v2, p0, Lyads/lk5;->s:Z

    :cond_a
    iget-wide v4, p0, Lyads/lk5;->t:J

    iget v2, p0, Lyads/lk5;->q:I

    iget v6, p0, Lyads/lk5;->r:I

    mul-int/2addr v6, v1

    sub-int v6, v2, v6

    iget v7, p0, Lyads/lk5;->l:I

    div-int/2addr v6, v7

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lyads/lk5;->t:J

    move v5, v2

    goto :goto_5

    :cond_b
    iget-wide v6, p0, Lyads/lk5;->t:J

    iget v2, p0, Lyads/lk5;->r:I

    sub-int v2, v5, v2

    iget v4, p0, Lyads/lk5;->l:I

    div-int/2addr v2, v4

    int-to-long v8, v2

    add-long/2addr v6, v8

    iput-wide v6, p0, Lyads/lk5;->t:J

    :goto_5
    iget-object v2, p0, Lyads/lk5;->n:[B

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    iget v6, p0, Lyads/lk5;->r:I

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v6, p0, Lyads/lk5;->r:I

    sub-int/2addr v6, v4

    sub-int/2addr v5, v6

    iget-object v7, p0, Lyads/lk5;->o:[B

    invoke-static {v2, v5, v7, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lyads/lk5;->o:[B

    invoke-virtual {p1, v2, v6, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iput v3, p0, Lyads/lk5;->q:I

    iput v1, p0, Lyads/lk5;->p:I

    :cond_c
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v3

    iget-object v4, p0, Lyads/lk5;->n:[B

    array-length v4, v4

    add-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_6
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    if-lt v3, v1, :cond_f

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-short v4, p0, Lyads/lk5;->k:S

    if-le v1, v4, :cond_e

    iget v1, p0, Lyads/lk5;->l:I

    div-int/2addr v3, v1

    mul-int/2addr v3, v1

    add-int/2addr v3, v1

    goto :goto_7

    :cond_e
    add-int/lit8 v3, v3, -0x2

    goto :goto_6

    :cond_f
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v3

    :goto_7
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    if-ne v3, v1, :cond_10

    iput v2, p0, Lyads/lk5;->p:I

    goto :goto_8

    :cond_10
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-virtual {p0, v1}, Lyads/wp;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-lez v1, :cond_11

    iput-boolean v2, p0, Lyads/lk5;->s:Z

    :cond_11
    :goto_8
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    :cond_12
    return-void
.end method

.method public final b(Lyads/km;)Lyads/km;
    .locals 2

    iget v0, p1, Lyads/km;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean p0, p0, Lyads/lk5;->m:Z

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    sget-object p0, Lyads/km;->e:Lyads/km;

    return-object p0

    :cond_1
    new-instance p0, Lyads/lm;

    invoke-direct {p0, p1}, Lyads/lm;-><init>(Lyads/km;)V

    throw p0
.end method

.method public final e()V
    .locals 8

    iget-boolean v0, p0, Lyads/lk5;->m:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lyads/wp;->b:Lyads/km;

    iget v1, v0, Lyads/km;->d:I

    iput v1, p0, Lyads/lk5;->l:I

    iget-wide v2, p0, Lyads/lk5;->i:J

    iget v0, v0, Lyads/km;->a:I

    int-to-long v4, v0

    mul-long/2addr v2, v4

    const-wide/32 v6, 0xf4240

    div-long/2addr v2, v6

    long-to-int v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lyads/lk5;->n:[B

    array-length v2, v2

    if-eq v2, v0, :cond_0

    new-array v0, v0, [B

    iput-object v0, p0, Lyads/lk5;->n:[B

    :cond_0
    iget-wide v2, p0, Lyads/lk5;->j:J

    mul-long/2addr v2, v4

    div-long/2addr v2, v6

    long-to-int v0, v2

    mul-int/2addr v0, v1

    iput v0, p0, Lyads/lk5;->r:I

    iget-object v1, p0, Lyads/lk5;->o:[B

    array-length v1, v1

    if-eq v1, v0, :cond_1

    new-array v0, v0, [B

    iput-object v0, p0, Lyads/lk5;->o:[B

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lyads/lk5;->p:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lyads/lk5;->t:J

    iput v0, p0, Lyads/lk5;->q:I

    iput-boolean v0, p0, Lyads/lk5;->s:Z

    return-void
.end method

.method public final f()V
    .locals 4

    iget v0, p0, Lyads/lk5;->q:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lyads/lk5;->n:[B

    invoke-virtual {p0, v0}, Lyads/wp;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/lk5;->s:Z

    :cond_0
    iget-boolean v0, p0, Lyads/lk5;->s:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lyads/lk5;->t:J

    iget v2, p0, Lyads/lk5;->r:I

    iget v3, p0, Lyads/lk5;->l:I

    div-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lyads/lk5;->t:J

    :cond_1
    return-void
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyads/lk5;->m:Z

    iput v0, p0, Lyads/lk5;->r:I

    sget-object v0, Lyads/u56;->f:[B

    iput-object v0, p0, Lyads/lk5;->n:[B

    iput-object v0, p0, Lyads/lk5;->o:[B

    return-void
.end method

.method public final isActive()Z
    .locals 0

    iget-boolean p0, p0, Lyads/lk5;->m:Z

    return p0
.end method
