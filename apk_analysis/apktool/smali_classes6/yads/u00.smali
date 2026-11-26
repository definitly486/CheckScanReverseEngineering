.class public final Lyads/u00;
.super Lyads/c03;
.source "SourceFile"


# instance fields
.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:Z


# direct methods
.method public constructor <init>(Lyads/kx5;JJ)V
    .locals 8

    invoke-direct {p0, p1}, Lyads/c03;-><init>(Lyads/kx5;)V

    invoke-virtual {p1}, Lyads/kx5;->a()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    new-instance v0, Lyads/jx5;

    invoke-direct {v0}, Lyads/jx5;-><init>()V

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v1, v0, v3, v4}, Lyads/kx5;->a(ILyads/jx5;J)Lyads/jx5;

    move-result-object p1

    invoke-static {v3, v4, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    iget-boolean v0, p1, Lyads/jx5;->m:Z

    if-nez v0, :cond_1

    cmp-long v0, p2, v3

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lyads/jx5;->i:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lyads/v00;

    invoke-direct {p0, v2}, Lyads/v00;-><init>(I)V

    throw p0

    :cond_1
    :goto_0
    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v0, p4, v5

    if-nez v0, :cond_2

    iget-wide p4, p1, Lyads/jx5;->o:J

    goto :goto_1

    :cond_2
    invoke-static {v3, v4, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p4

    :goto_1
    iget-wide v3, p1, Lyads/jx5;->o:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_5

    cmp-long v7, p4, v3

    if-lez v7, :cond_3

    move-wide p4, v3

    :cond_3
    cmp-long v7, p2, p4

    if-gtz v7, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Lyads/v00;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lyads/v00;-><init>(I)V

    throw p0

    :cond_5
    :goto_2
    iput-wide p2, p0, Lyads/u00;->d:J

    iput-wide p4, p0, Lyads/u00;->e:J

    cmp-long v7, p4, v5

    if-nez v7, :cond_6

    goto :goto_3

    :cond_6
    sub-long v5, p4, p2

    :goto_3
    iput-wide v5, p0, Lyads/u00;->f:J

    iget-boolean p1, p1, Lyads/jx5;->j:Z

    if-eqz p1, :cond_8

    if-eqz v7, :cond_7

    if-eqz v0, :cond_8

    cmp-long p1, p4, v3

    if-nez p1, :cond_8

    :cond_7
    move v1, v2

    :cond_8
    iput-boolean v1, p0, Lyads/u00;->g:Z

    return-void

    :cond_9
    new-instance p0, Lyads/v00;

    invoke-direct {p0, v1}, Lyads/v00;-><init>(I)V

    throw p0
.end method


# virtual methods
.method public final a(ILyads/hx5;Z)Lyads/hx5;
    .locals 10

    .line 79
    iget-object v2, p0, Lyads/c03;->c:Lyads/kx5;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p2, p3}, Lyads/kx5;->a(ILyads/hx5;Z)Lyads/hx5;

    .line 80
    iget-wide v2, p2, Lyads/hx5;->f:J

    .line 81
    iget-wide v4, p0, Lyads/u00;->d:J

    sub-long v6, v2, v4

    .line 82
    iget-wide v2, p0, Lyads/u00;->f:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sub-long v4, v2, v6

    .line 83
    :goto_0
    iget-object v0, p2, Lyads/hx5;->b:Ljava/lang/Object;

    iget-object v2, p2, Lyads/hx5;->c:Ljava/lang/Object;

    .line 84
    sget-object v8, Lyads/a6;->g:Lyads/a6;

    const/4 v9, 0x0

    const/4 v3, 0x0

    move-object v1, v0

    move-object v0, p2

    invoke-virtual/range {v0 .. v9}, Lyads/hx5;->a(Ljava/lang/Object;Ljava/lang/Object;IJJLyads/a6;Z)Lyads/hx5;

    move-result-object v0

    return-object v0
.end method

.method public final a(ILyads/jx5;J)Lyads/jx5;
    .locals 4

    iget-object p1, p0, Lyads/c03;->c:Lyads/kx5;

    const/4 p3, 0x0

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p3, p2, v0, v1}, Lyads/kx5;->a(ILyads/jx5;J)Lyads/jx5;

    iget-wide p3, p2, Lyads/jx5;->r:J

    iget-wide v0, p0, Lyads/u00;->d:J

    add-long/2addr p3, v0

    iput-wide p3, p2, Lyads/jx5;->r:J

    iget-wide p3, p0, Lyads/u00;->f:J

    iput-wide p3, p2, Lyads/jx5;->o:J

    iget-boolean p1, p0, Lyads/u00;->g:Z

    iput-boolean p1, p2, Lyads/jx5;->j:Z

    iget-wide p3, p2, Lyads/jx5;->n:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p3, v2

    if-eqz p1, :cond_1

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    iput-wide p3, p2, Lyads/jx5;->n:J

    iget-wide v0, p0, Lyads/u00;->e:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    :goto_0
    iget-wide v0, p0, Lyads/u00;->d:J

    sub-long/2addr p3, v0

    iput-wide p3, p2, Lyads/jx5;->n:J

    :cond_1
    invoke-static {v0, v1}, Lyads/u56;->b(J)J

    move-result-wide p0

    iget-wide p3, p2, Lyads/jx5;->f:J

    cmp-long v0, p3, v2

    if-eqz v0, :cond_2

    add-long/2addr p3, p0

    iput-wide p3, p2, Lyads/jx5;->f:J

    :cond_2
    iget-wide p3, p2, Lyads/jx5;->g:J

    cmp-long v0, p3, v2

    if-eqz v0, :cond_3

    add-long/2addr p3, p0

    iput-wide p3, p2, Lyads/jx5;->g:J

    :cond_3
    return-object p2
.end method
