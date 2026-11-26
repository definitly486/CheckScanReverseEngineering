.class public abstract Lyads/zh5;
.super Lyads/ei5;
.source "SourceFile"


# instance fields
.field public final d:J

.field public final e:J

.field public final f:Ljava/util/List;

.field public final g:J

.field public final h:J

.field public final i:J


# direct methods
.method public constructor <init>(Lyads/y35;JJJJLjava/util/List;JJJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lyads/ei5;-><init>(Lyads/y35;JJ)V

    iput-wide p6, p0, Lyads/zh5;->d:J

    iput-wide p8, p0, Lyads/zh5;->e:J

    iput-object p10, p0, Lyads/zh5;->f:Ljava/util/List;

    iput-wide p11, p0, Lyads/zh5;->i:J

    iput-wide p13, p0, Lyads/zh5;->g:J

    move-wide p1, p15

    iput-wide p1, p0, Lyads/zh5;->h:J

    return-void
.end method


# virtual methods
.method public abstract a(J)J
.end method

.method public final a(JJ)J
    .locals 4

    invoke-virtual {p0, p1, p2}, Lyads/zh5;->a(J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lyads/zh5;->g:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lyads/zh5;->h:J

    sub-long/2addr p3, v2

    sub-long/2addr p3, v0

    invoke-virtual {p0, p3, p4, p1, p2}, Lyads/zh5;->c(JJ)J

    move-result-wide p1

    iget-wide p3, p0, Lyads/zh5;->d:J

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_1
    :goto_0
    iget-wide p0, p0, Lyads/zh5;->d:J

    return-wide p0
.end method

.method public abstract a(Lyads/m75;J)Lyads/y35;
.end method

.method public a()Z
    .locals 0

    .line 40
    iget-object p0, p0, Lyads/zh5;->f:Ljava/util/List;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b(J)J
    .locals 6

    .line 57
    iget-object v0, p0, Lyads/zh5;->f:Ljava/util/List;

    .line 58
    iget-wide v1, p0, Lyads/zh5;->d:J

    if-eqz v0, :cond_0

    sub-long/2addr p1, v1

    long-to-int p1, p1

    .line 59
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/ci5;

    iget-wide p1, p1, Lyads/ci5;->a:J

    iget-wide v0, p0, Lyads/ei5;->c:J

    sub-long/2addr p1, v0

    :goto_0
    move-wide v0, p1

    goto :goto_1

    :cond_0
    sub-long/2addr p1, v1

    .line 60
    iget-wide v0, p0, Lyads/zh5;->e:J

    mul-long/2addr p1, v0

    goto :goto_0

    .line 61
    :goto_1
    iget-wide v4, p0, Lyads/ei5;->b:J

    const-wide/32 v2, 0xf4240

    invoke-static/range {v0 .. v5}, Lyads/u56;->a(JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final b(JJ)J
    .locals 7

    iget-object v0, p0, Lyads/zh5;->f:Ljava/util/List;

    const-wide/32 v1, 0xf4240

    if-eqz v0, :cond_0

    iget-wide p3, p0, Lyads/zh5;->d:J

    sub-long/2addr p1, p3

    long-to-int p1, p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/ci5;

    iget-wide p1, p1, Lyads/ci5;->b:J

    mul-long/2addr p1, v1

    iget-wide p3, p0, Lyads/ei5;->b:J

    div-long/2addr p1, p3

    return-wide p1

    :cond_0
    invoke-virtual {p0, p3, p4}, Lyads/zh5;->a(J)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    iget-wide v5, p0, Lyads/zh5;->d:J

    add-long/2addr v5, v3

    const-wide/16 v3, 0x1

    sub-long/2addr v5, v3

    cmp-long v0, p1, v5

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lyads/zh5;->b(J)J

    move-result-wide p0

    sub-long/2addr p3, p0

    return-wide p3

    :cond_1
    iget-wide p1, p0, Lyads/zh5;->e:J

    mul-long/2addr p1, v1

    iget-wide p3, p0, Lyads/ei5;->b:J

    div-long/2addr p1, p3

    return-wide p1
.end method

.method public final c(JJ)J
    .locals 11

    iget-wide v0, p0, Lyads/zh5;->d:J

    invoke-virtual {p0, p3, p4}, Lyads/zh5;->a(J)J

    move-result-wide p3

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lyads/zh5;->f:Ljava/util/List;

    const-wide/16 v3, 0x1

    if-nez v2, :cond_3

    iget-wide v5, p0, Lyads/zh5;->e:J

    const-wide/32 v7, 0xf4240

    mul-long/2addr v5, v7

    iget-wide v7, p0, Lyads/ei5;->b:J

    div-long/2addr v5, v7

    iget-wide v7, p0, Lyads/zh5;->d:J

    div-long/2addr p1, v5

    add-long/2addr p1, v7

    cmp-long p0, p1, v0

    if-gez p0, :cond_1

    :goto_0
    return-wide v0

    :cond_1
    const-wide/16 v5, -0x1

    cmp-long p0, p3, v5

    if-nez p0, :cond_2

    return-wide p1

    :cond_2
    add-long/2addr v0, p3

    sub-long/2addr v0, v3

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_3
    add-long/2addr p3, v0

    sub-long/2addr p3, v3

    move-wide v5, v0

    :goto_1
    cmp-long v2, v5, p3

    if-gtz v2, :cond_6

    sub-long v7, p3, v5

    const-wide/16 v9, 0x2

    div-long/2addr v7, v9

    add-long/2addr v7, v5

    invoke-virtual {p0, v7, v8}, Lyads/zh5;->b(J)J

    move-result-wide v9

    cmp-long v2, v9, p1

    if-gez v2, :cond_4

    add-long v5, v7, v3

    goto :goto_1

    :cond_4
    if-lez v2, :cond_5

    sub-long p3, v7, v3

    goto :goto_1

    :cond_5
    return-wide v7

    :cond_6
    cmp-long p0, v5, v0

    if-nez p0, :cond_7

    return-wide v5

    :cond_7
    return-wide p3
.end method
