.class public final Lyads/ob;
.super Lyads/ls;
.source "SourceFile"


# instance fields
.field public final g:Lyads/vn;

.field public final h:J

.field public final i:J

.field public final j:J

.field public final k:I

.field public final l:I

.field public final m:F

.field public final n:F

.field public final o:Lyads/oe3;

.field public final p:Lyads/du5;

.field public q:F

.field public r:I

.field public s:I

.field public t:J

.field public u:Lyads/zr;


# direct methods
.method public constructor <init>(Lyads/f06;[ILyads/vn;JJJLyads/oe3;)V
    .locals 1

    sget-object v0, Lyads/x00;->a:Lyads/du5;

    invoke-direct {p0, p1, p2}, Lyads/ls;-><init>(Lyads/f06;[I)V

    cmp-long p1, p8, p4

    if-gez p1, :cond_0

    const-string p1, "AdaptiveTrackSelection"

    const-string p2, "Adjusting minDurationToRetainAfterDiscardMs to be at least minDurationForQualityIncreaseMs"

    invoke-static {p1, p2}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide p8, p4

    :cond_0
    iput-object p3, p0, Lyads/ob;->g:Lyads/vn;

    const-wide/16 p1, 0x3e8

    mul-long/2addr p4, p1

    iput-wide p4, p0, Lyads/ob;->h:J

    mul-long/2addr p6, p1

    iput-wide p6, p0, Lyads/ob;->i:J

    mul-long/2addr p8, p1

    iput-wide p8, p0, Lyads/ob;->j:J

    const/16 p1, 0x4ff

    iput p1, p0, Lyads/ob;->k:I

    const/16 p1, 0x2cf

    iput p1, p0, Lyads/ob;->l:I

    const p1, 0x3f333333    # 0.7f

    iput p1, p0, Lyads/ob;->m:F

    const/high16 p1, 0x3f400000    # 0.75f

    iput p1, p0, Lyads/ob;->n:F

    invoke-static {p10}, Lyads/oe3;->a(Ljava/util/Collection;)Lyads/oe3;

    move-result-object p1

    iput-object p1, p0, Lyads/ob;->o:Lyads/oe3;

    iput-object v0, p0, Lyads/ob;->p:Lyads/du5;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lyads/ob;->q:F

    const/4 p1, 0x0

    iput p1, p0, Lyads/ob;->s:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lyads/ob;->t:J

    return-void
.end method

.method public static a(Ljava/util/ArrayList;[J)V
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v3, v2

    .line 256
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 257
    aget-wide v4, p1, v3

    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 258
    :cond_0
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 259
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/ke3;

    if-nez v3, :cond_1

    goto :goto_2

    .line 260
    :cond_1
    new-instance v4, Lyads/mb;

    aget-wide v5, p1, v2

    invoke-direct {v4, v0, v1, v5, v6}, Lyads/mb;-><init>(JJ)V

    invoke-virtual {v3, v4}, Lyads/ke3;->a(Ljava/lang/Object;)Lyads/ke3;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 8

    .line 238
    iget-object v0, p0, Lyads/ob;->g:Lyads/vn;

    .line 239
    check-cast v0, Lyads/zj0;

    monitor-enter v0

    .line 240
    :try_start_0
    iget-wide v1, v0, Lyads/zj0;->l:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    long-to-float v0, v1

    .line 241
    iget v1, p0, Lyads/ob;->m:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 242
    iget-object v2, p0, Lyads/ob;->g:Lyads/vn;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    long-to-float v0, v0

    .line 243
    iget v1, p0, Lyads/ob;->q:F

    div-float/2addr v0, v1

    float-to-long v0, v0

    .line 244
    iget-object v2, p0, Lyads/ob;->o:Lyads/oe3;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    move v3, v2

    .line 245
    :goto_0
    iget-object v4, p0, Lyads/ob;->o:Lyads/oe3;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    sub-int/2addr v4, v2

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lyads/ob;->o:Lyads/oe3;

    .line 246
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/mb;

    iget-wide v4, v4, Lyads/mb;->a:J

    cmp-long v4, v4, v0

    if-gez v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 247
    :cond_1
    iget-object v2, p0, Lyads/ob;->o:Lyads/oe3;

    add-int/lit8 v4, v3, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/mb;

    .line 248
    iget-object v4, p0, Lyads/ob;->o:Lyads/oe3;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/mb;

    .line 249
    iget-wide v4, v2, Lyads/mb;->a:J

    sub-long/2addr v0, v4

    long-to-float v0, v0

    iget-wide v6, v3, Lyads/mb;->a:J

    sub-long/2addr v6, v4

    long-to-float v1, v6

    div-float/2addr v0, v1

    .line 250
    iget-wide v1, v2, Lyads/mb;->b:J

    iget-wide v3, v3, Lyads/mb;->b:J

    sub-long/2addr v3, v1

    long-to-float v3, v3

    mul-float/2addr v0, v3

    float-to-long v3, v0

    add-long v0, v1, v3

    :goto_1
    const/4 v2, 0x0

    move v3, v2

    .line 251
    :goto_2
    iget v4, p0, Lyads/ls;->b:I

    if-ge v2, v4, :cond_5

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, p1, v4

    if-eqz v4, :cond_2

    .line 252
    invoke-virtual {p0, v2, p1, p2}, Lyads/ls;->b(IJ)Z

    move-result v4

    if-nez v4, :cond_4

    .line 253
    :cond_2
    invoke-virtual {p0, v2}, Lyads/ls;->a(I)Lyads/vz2;

    move-result-object v3

    .line 254
    iget v3, v3, Lyads/vz2;->i:I

    int-to-long v3, v3

    cmp-long v3, v3, v0

    if-gtz v3, :cond_3

    return v2

    :cond_3
    move v3, v2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return v3

    :catchall_0
    move-exception p0

    .line 255
    monitor-exit v0

    throw p0
.end method

.method public final a(JLjava/util/List;)I
    .locals 12

    .line 213
    iget-object v0, p0, Lyads/ob;->p:Lyads/du5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 215
    iget-wide v2, p0, Lyads/ob;->t:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 216
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p3}, Lyads/dq3;->a(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/zr;

    iget-object v3, p0, Lyads/ob;->u:Lyads/zr;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 217
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p0

    return p0

    .line 218
    :cond_1
    :goto_0
    iput-wide v0, p0, Lyads/ob;->t:J

    .line 219
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    invoke-static {p3}, Lyads/dq3;->a(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/zr;

    :goto_1
    iput-object v2, p0, Lyads/ob;->u:Lyads/zr;

    .line 220
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    return v3

    .line 221
    :cond_3
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    .line 222
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/zr;

    .line 223
    iget-wide v4, v4, Lyads/cz;->g:J

    sub-long/2addr v4, p1

    iget v6, p0, Lyads/ob;->q:F

    .line 224
    sget v7, Lyads/u56;->a:I

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v8, v6, v7

    if-nez v8, :cond_4

    goto :goto_2

    :cond_4
    long-to-double v4, v4

    float-to-double v8, v6

    div-double/2addr v4, v8

    .line 225
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    .line 226
    :goto_2
    iget-wide v8, p0, Lyads/ob;->j:J

    cmp-long v4, v4, v8

    if-gez v4, :cond_5

    goto :goto_6

    .line 227
    :cond_5
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_3

    .line 228
    :cond_6
    invoke-static {p3}, Lyads/dq3;->a(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/zr;

    .line 229
    iget-wide v4, v4, Lyads/cz;->g:J

    .line 230
    :goto_3
    invoke-virtual {p0, v0, v1}, Lyads/ob;->a(J)I

    move-result v0

    .line 231
    iget-object v1, p0, Lyads/ls;->d:[Lyads/vz2;

    aget-object v0, v1, v0

    :goto_4
    if-ge v3, v2, :cond_9

    .line 232
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/zr;

    .line 233
    iget-object v4, v1, Lyads/cz;->d:Lyads/vz2;

    .line 234
    iget-wide v5, v1, Lyads/cz;->g:J

    sub-long/2addr v5, p1

    .line 235
    iget v1, p0, Lyads/ob;->q:F

    cmpl-float v10, v1, v7

    if-nez v10, :cond_7

    goto :goto_5

    :cond_7
    long-to-double v5, v5

    float-to-double v10, v1

    div-double/2addr v5, v10

    .line 236
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    :goto_5
    cmp-long v1, v5, v8

    if-ltz v1, :cond_8

    .line 237
    iget v1, v4, Lyads/vz2;->i:I

    iget v5, v0, Lyads/vz2;->i:I

    if-ge v1, v5, :cond_8

    iget v1, v4, Lyads/vz2;->s:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_8

    iget v6, p0, Lyads/ob;->l:I

    if-gt v1, v6, :cond_8

    iget v4, v4, Lyads/vz2;->r:I

    if-eq v4, v5, :cond_8

    iget v5, p0, Lyads/ob;->k:I

    if-gt v4, v5, :cond_8

    iget v4, v0, Lyads/vz2;->s:I

    if-ge v1, v4, :cond_8

    return v3

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    :goto_6
    return v2
.end method

.method public final a()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 211
    iput-wide v0, p0, Lyads/ob;->t:J

    const/4 v0, 0x0

    .line 212
    iput-object v0, p0, Lyads/ob;->u:Lyads/zr;

    return-void
.end method

.method public final a(F)V
    .locals 0

    .line 210
    iput p1, p0, Lyads/ob;->q:F

    return-void
.end method

.method public final a(JJJLjava/util/List;[Lyads/ly3;)V
    .locals 7

    iget-object p1, p0, Lyads/ob;->p:Lyads/du5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget v0, p0, Lyads/ob;->r:I

    array-length v1, p8

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v0, v1, :cond_0

    aget-object v0, p8, v0

    invoke-interface {v0}, Lyads/ly3;->next()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lyads/ob;->r:I

    aget-object p8, p8, v0

    invoke-interface {p8}, Lyads/ly3;->a()J

    move-result-wide v0

    invoke-interface {p8}, Lyads/ly3;->b()J

    move-result-wide v4

    :goto_0
    sub-long/2addr v0, v4

    goto :goto_3

    :cond_0
    array-length v0, p8

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v4, p8, v1

    invoke-interface {v4}, Lyads/ly3;->next()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Lyads/ly3;->a()J

    move-result-wide v0

    invoke-interface {v4}, Lyads/ly3;->b()J

    move-result-wide v4

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {p7}, Ljava/util/List;->isEmpty()Z

    move-result p8

    if-eqz p8, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {p7}, Lyads/dq3;->a(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Lyads/zr;

    iget-wide v0, p8, Lyads/cz;->g:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    iget-wide v4, p8, Lyads/cz;->h:J

    cmp-long p8, v4, v2

    if-eqz p8, :cond_4

    sub-long v0, v4, v0

    goto :goto_3

    :cond_4
    :goto_2
    move-wide v0, v2

    :goto_3
    iget p8, p0, Lyads/ob;->s:I

    if-nez p8, :cond_5

    const/4 p3, 0x1

    iput p3, p0, Lyads/ob;->s:I

    invoke-virtual {p0, p1, p2}, Lyads/ob;->a(J)I

    move-result p1

    iput p1, p0, Lyads/ob;->r:I

    return-void

    :cond_5
    iget v4, p0, Lyads/ob;->r:I

    invoke-interface {p7}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_6

    move v5, v6

    goto :goto_4

    :cond_6
    invoke-static {p7}, Lyads/dq3;->a(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/zr;

    iget-object v5, v5, Lyads/cz;->d:Lyads/vz2;

    invoke-virtual {p0, v5}, Lyads/ls;->a(Lyads/vz2;)I

    move-result v5

    :goto_4
    if-eq v5, v6, :cond_7

    invoke-static {p7}, Lyads/dq3;->a(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lyads/zr;

    iget p8, p7, Lyads/cz;->e:I

    move v4, v5

    :cond_7
    invoke-virtual {p0, p1, p2}, Lyads/ob;->a(J)I

    move-result p7

    invoke-virtual {p0, v4, p1, p2}, Lyads/ls;->b(IJ)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lyads/ls;->d:[Lyads/vz2;

    aget-object p2, p1, v4

    aget-object p1, p1, p7

    cmp-long v5, p5, v2

    if-nez v5, :cond_8

    iget-wide p5, p0, Lyads/ob;->h:J

    goto :goto_5

    :cond_8
    cmp-long v2, v0, v2

    if-eqz v2, :cond_9

    sub-long/2addr p5, v0

    :cond_9
    long-to-float p5, p5

    iget p6, p0, Lyads/ob;->n:F

    mul-float/2addr p5, p6

    float-to-long p5, p5

    iget-wide v0, p0, Lyads/ob;->h:J

    invoke-static {p5, p6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p5

    :goto_5
    iget p1, p1, Lyads/vz2;->i:I

    iget p2, p2, Lyads/vz2;->i:I

    if-le p1, p2, :cond_a

    cmp-long p5, p3, p5

    if-gez p5, :cond_a

    goto :goto_6

    :cond_a
    if-ge p1, p2, :cond_b

    iget-wide p1, p0, Lyads/ob;->i:J

    cmp-long p1, p3, p1

    if-ltz p1, :cond_b

    :goto_6
    move p7, v4

    :cond_b
    if-ne p7, v4, :cond_c

    goto :goto_7

    :cond_c
    const/4 p8, 0x3

    :goto_7
    iput p8, p0, Lyads/ob;->s:I

    iput p7, p0, Lyads/ob;->r:I

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lyads/ob;->u:Lyads/zr;

    return-void
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Lyads/ob;->s:I

    return p0
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Lyads/ob;->r:I

    return p0
.end method

.method public final g()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
