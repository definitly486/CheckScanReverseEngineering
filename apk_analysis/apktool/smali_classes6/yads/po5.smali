.class public final Lyads/po5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/mm;


# instance fields
.field public b:I

.field public c:F

.field public d:F

.field public e:Lyads/km;

.field public f:Lyads/km;

.field public g:Lyads/km;

.field public h:Lyads/km;

.field public i:Z

.field public j:Lyads/oo5;

.field public k:Ljava/nio/ByteBuffer;

.field public l:Ljava/nio/ShortBuffer;

.field public m:Ljava/nio/ByteBuffer;

.field public n:J

.field public o:J

.field public p:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lyads/po5;->c:F

    iput v0, p0, Lyads/po5;->d:F

    sget-object v0, Lyads/km;->e:Lyads/km;

    iput-object v0, p0, Lyads/po5;->e:Lyads/km;

    iput-object v0, p0, Lyads/po5;->f:Lyads/km;

    iput-object v0, p0, Lyads/po5;->g:Lyads/km;

    iput-object v0, p0, Lyads/po5;->h:Lyads/km;

    sget-object v0, Lyads/mm;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lyads/po5;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lyads/po5;->l:Ljava/nio/ShortBuffer;

    iput-object v0, p0, Lyads/po5;->m:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lyads/po5;->b:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/nio/ByteBuffer;
    .locals 7

    iget-object v0, p0, Lyads/po5;->j:Lyads/oo5;

    if-eqz v0, :cond_1

    iget v1, v0, Lyads/oo5;->m:I

    iget v2, v0, Lyads/oo5;->b:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_1

    iget-object v2, p0, Lyads/po5;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    if-ge v2, v1, :cond_0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lyads/po5;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    iput-object v2, p0, Lyads/po5;->l:Ljava/nio/ShortBuffer;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lyads/po5;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v2, p0, Lyads/po5;->l:Ljava/nio/ShortBuffer;

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    :goto_0
    iget-object v2, p0, Lyads/po5;->l:Ljava/nio/ShortBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    iget v4, v0, Lyads/oo5;->b:I

    div-int/2addr v3, v4

    iget v4, v0, Lyads/oo5;->m:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, v0, Lyads/oo5;->l:[S

    iget v5, v0, Lyads/oo5;->b:I

    mul-int/2addr v5, v3

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v5}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    iget v2, v0, Lyads/oo5;->m:I

    sub-int/2addr v2, v3

    iput v2, v0, Lyads/oo5;->m:I

    iget-object v4, v0, Lyads/oo5;->l:[S

    iget v0, v0, Lyads/oo5;->b:I

    mul-int/2addr v3, v0

    mul-int/2addr v2, v0

    invoke-static {v4, v3, v4, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide v2, p0, Lyads/po5;->o:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lyads/po5;->o:J

    iget-object v0, p0, Lyads/po5;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lyads/po5;->k:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lyads/po5;->m:Ljava/nio/ByteBuffer;

    :cond_1
    iget-object v0, p0, Lyads/po5;->m:Ljava/nio/ByteBuffer;

    sget-object v1, Lyads/mm;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lyads/po5;->m:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final a(Lyads/km;)Lyads/km;
    .locals 3

    .line 124
    iget v0, p1, Lyads/km;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 125
    iget v0, p0, Lyads/po5;->b:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 126
    iget v0, p1, Lyads/km;->a:I

    .line 127
    :cond_0
    iput-object p1, p0, Lyads/po5;->e:Lyads/km;

    .line 128
    new-instance v2, Lyads/km;

    iget p1, p1, Lyads/km;->b:I

    invoke-direct {v2, v0, p1, v1}, Lyads/km;-><init>(III)V

    iput-object v2, p0, Lyads/po5;->f:Lyads/km;

    const/4 p1, 0x1

    .line 129
    iput-boolean p1, p0, Lyads/po5;->i:Z

    return-object v2

    .line 130
    :cond_1
    new-instance p0, Lyads/lm;

    invoke-direct {p0, p1}, Lyads/lm;-><init>(Lyads/km;)V

    throw p0
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 7

    .line 112
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lyads/po5;->j:Lyads/oo5;

    .line 114
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    .line 116
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    .line 117
    iget-wide v3, p0, Lyads/po5;->n:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lyads/po5;->n:J

    .line 118
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    iget v3, v0, Lyads/oo5;->b:I

    div-int/2addr p0, v3

    mul-int/2addr v3, p0

    mul-int/lit8 v3, v3, 0x2

    .line 119
    iget-object v4, v0, Lyads/oo5;->j:[S

    iget v5, v0, Lyads/oo5;->k:I

    invoke-virtual {v0, v4, v5, p0}, Lyads/oo5;->b([SII)[S

    move-result-object v4

    iput-object v4, v0, Lyads/oo5;->j:[S

    .line 120
    iget v5, v0, Lyads/oo5;->k:I

    iget v6, v0, Lyads/oo5;->b:I

    mul-int/2addr v5, v6

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v4, v5, v3}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 121
    iget v1, v0, Lyads/oo5;->k:I

    add-int/2addr v1, p0

    iput v1, v0, Lyads/oo5;->k:I

    .line 122
    invoke-virtual {v0}, Lyads/oo5;->a()V

    .line 123
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    add-int/2addr p0, v2

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final b()V
    .locals 8

    iget-object v0, p0, Lyads/po5;->j:Lyads/oo5;

    if-eqz v0, :cond_2

    iget v1, v0, Lyads/oo5;->k:I

    iget v2, v0, Lyads/oo5;->c:F

    iget v3, v0, Lyads/oo5;->d:F

    div-float/2addr v2, v3

    iget v4, v0, Lyads/oo5;->e:F

    mul-float/2addr v4, v3

    iget v3, v0, Lyads/oo5;->m:I

    int-to-float v5, v1

    div-float/2addr v5, v2

    iget v2, v0, Lyads/oo5;->o:I

    int-to-float v2, v2

    add-float/2addr v5, v2

    div-float/2addr v5, v4

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v5, v2

    float-to-int v2, v5

    add-int/2addr v3, v2

    iget-object v2, v0, Lyads/oo5;->j:[S

    iget v4, v0, Lyads/oo5;->h:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    invoke-virtual {v0, v2, v1, v4}, Lyads/oo5;->b([SII)[S

    move-result-object v2

    iput-object v2, v0, Lyads/oo5;->j:[S

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    iget v5, v0, Lyads/oo5;->h:I

    mul-int/lit8 v5, v5, 0x2

    iget v6, v0, Lyads/oo5;->b:I

    mul-int v7, v5, v6

    if-ge v4, v7, :cond_0

    iget-object v5, v0, Lyads/oo5;->j:[S

    mul-int/2addr v6, v1

    add-int/2addr v6, v4

    aput-short v2, v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget v1, v0, Lyads/oo5;->k:I

    add-int/2addr v5, v1

    iput v5, v0, Lyads/oo5;->k:I

    invoke-virtual {v0}, Lyads/oo5;->a()V

    iget v1, v0, Lyads/oo5;->m:I

    if-le v1, v3, :cond_1

    iput v3, v0, Lyads/oo5;->m:I

    :cond_1
    iput v2, v0, Lyads/oo5;->k:I

    iput v2, v0, Lyads/oo5;->r:I

    iput v2, v0, Lyads/oo5;->o:I

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/po5;->p:Z

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lyads/po5;->p:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lyads/po5;->j:Lyads/oo5;

    if-eqz p0, :cond_0

    iget v0, p0, Lyads/oo5;->m:I

    iget p0, p0, Lyads/oo5;->b:I

    mul-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final d()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lyads/po5;->c:F

    iput v0, p0, Lyads/po5;->d:F

    sget-object v0, Lyads/km;->e:Lyads/km;

    iput-object v0, p0, Lyads/po5;->e:Lyads/km;

    iput-object v0, p0, Lyads/po5;->f:Lyads/km;

    iput-object v0, p0, Lyads/po5;->g:Lyads/km;

    iput-object v0, p0, Lyads/po5;->h:Lyads/km;

    sget-object v0, Lyads/mm;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lyads/po5;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lyads/po5;->l:Ljava/nio/ShortBuffer;

    iput-object v0, p0, Lyads/po5;->m:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lyads/po5;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyads/po5;->i:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lyads/po5;->j:Lyads/oo5;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lyads/po5;->n:J

    iput-wide v1, p0, Lyads/po5;->o:J

    iput-boolean v0, p0, Lyads/po5;->p:Z

    return-void
.end method

.method public final flush()V
    .locals 10

    invoke-virtual {p0}, Lyads/po5;->isActive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lyads/po5;->e:Lyads/km;

    iput-object v0, p0, Lyads/po5;->g:Lyads/km;

    iget-object v2, p0, Lyads/po5;->f:Lyads/km;

    iput-object v2, p0, Lyads/po5;->h:Lyads/km;

    iget-boolean v3, p0, Lyads/po5;->i:Z

    if-eqz v3, :cond_0

    new-instance v4, Lyads/oo5;

    iget v5, v0, Lyads/km;->a:I

    iget v6, v0, Lyads/km;->b:I

    iget v7, p0, Lyads/po5;->c:F

    iget v8, p0, Lyads/po5;->d:F

    iget v9, v2, Lyads/km;->a:I

    invoke-direct/range {v4 .. v9}, Lyads/oo5;-><init>(IIFFI)V

    iput-object v4, p0, Lyads/po5;->j:Lyads/oo5;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lyads/po5;->j:Lyads/oo5;

    if-eqz v0, :cond_1

    iput v1, v0, Lyads/oo5;->k:I

    iput v1, v0, Lyads/oo5;->m:I

    iput v1, v0, Lyads/oo5;->o:I

    iput v1, v0, Lyads/oo5;->p:I

    iput v1, v0, Lyads/oo5;->q:I

    iput v1, v0, Lyads/oo5;->r:I

    iput v1, v0, Lyads/oo5;->s:I

    iput v1, v0, Lyads/oo5;->t:I

    iput v1, v0, Lyads/oo5;->u:I

    iput v1, v0, Lyads/oo5;->v:I

    :cond_1
    :goto_0
    sget-object v0, Lyads/mm;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lyads/po5;->m:Ljava/nio/ByteBuffer;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lyads/po5;->n:J

    iput-wide v2, p0, Lyads/po5;->o:J

    iput-boolean v1, p0, Lyads/po5;->p:Z

    return-void
.end method

.method public final isActive()Z
    .locals 3

    iget-object v0, p0, Lyads/po5;->f:Lyads/km;

    iget v0, v0, Lyads/km;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lyads/po5;->c:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x38d1b717    # 1.0E-4f

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lyads/po5;->d:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lyads/po5;->f:Lyads/km;

    iget v0, v0, Lyads/km;->a:I

    iget-object p0, p0, Lyads/po5;->e:Lyads/km;

    iget p0, p0, Lyads/km;->a:I

    if-eq v0, p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
