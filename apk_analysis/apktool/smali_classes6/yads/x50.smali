.class public final Lyads/x50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/wh5;
.implements Lyads/sh5;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:I

.field public final d:J

.field public final e:I

.field public final f:J

.field public final g:Z


# direct methods
.method public constructor <init>(JJLyads/ab4;Z)V
    .locals 2

    iget v0, p5, Lyads/ab4;->f:I

    iget p5, p5, Lyads/ab4;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lyads/x50;->a:J

    iput-wide p3, p0, Lyads/x50;->b:J

    const/4 v1, -0x1

    if-ne p5, v1, :cond_0

    const/4 p5, 0x1

    :cond_0
    iput p5, p0, Lyads/x50;->c:I

    iput v0, p0, Lyads/x50;->e:I

    iput-boolean p6, p0, Lyads/x50;->g:Z

    const-wide/16 p5, -0x1

    cmp-long v1, p1, p5

    if-nez v1, :cond_1

    iput-wide p5, p0, Lyads/x50;->d:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lyads/x50;->f:J

    return-void

    :cond_1
    sub-long p5, p1, p3

    iput-wide p5, p0, Lyads/x50;->d:J

    invoke-static {v0, p1, p2, p3, p4}, Lyads/x50;->a(IJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lyads/x50;->f:J

    return-void
.end method

.method public static a(IJJ)J
    .locals 0

    sub-long/2addr p1, p3

    const-wide/16 p3, 0x0

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const-wide/32 p3, 0x7a1200

    mul-long/2addr p1, p3

    int-to-long p3, p0

    div-long/2addr p1, p3

    return-wide p1
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 15
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final a(J)J
    .locals 2

    .line 14
    iget-wide v0, p0, Lyads/x50;->b:J

    iget p0, p0, Lyads/x50;->e:I

    invoke-static {p0, p1, p2, v0, v1}, Lyads/x50;->a(IJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final b(J)Lyads/qh5;
    .locals 11

    iget-wide v0, p0, Lyads/x50;->d:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    const-wide/16 v5, 0x0

    if-nez v4, :cond_0

    iget-boolean v7, p0, Lyads/x50;->g:Z

    if-nez v7, :cond_0

    new-instance p1, Lyads/qh5;

    new-instance p2, Lyads/uh5;

    iget-wide v0, p0, Lyads/x50;->b:J

    invoke-direct {p2, v5, v6, v0, v1}, Lyads/uh5;-><init>(JJ)V

    invoke-direct {p1, p2, p2}, Lyads/qh5;-><init>(Lyads/uh5;Lyads/uh5;)V

    return-object p1

    :cond_0
    iget v7, p0, Lyads/x50;->e:I

    int-to-long v7, v7

    mul-long/2addr v7, p1

    const-wide/32 v9, 0x7a1200

    div-long/2addr v7, v9

    iget v9, p0, Lyads/x50;->c:I

    int-to-long v9, v9

    div-long/2addr v7, v9

    mul-long/2addr v7, v9

    if-eqz v4, :cond_1

    sub-long/2addr v0, v9

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    :cond_1
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-wide v4, p0, Lyads/x50;->b:J

    add-long/2addr v0, v4

    iget v6, p0, Lyads/x50;->e:I

    invoke-static {v6, v0, v1, v4, v5}, Lyads/x50;->a(IJJ)J

    move-result-wide v4

    new-instance v6, Lyads/uh5;

    invoke-direct {v6, v4, v5, v0, v1}, Lyads/uh5;-><init>(JJ)V

    iget-wide v7, p0, Lyads/x50;->d:J

    cmp-long v2, v7, v2

    if-eqz v2, :cond_3

    cmp-long p1, v4, p1

    if-gez p1, :cond_3

    iget p1, p0, Lyads/x50;->c:I

    int-to-long p1, p1

    add-long/2addr v0, p1

    iget-wide p1, p0, Lyads/x50;->a:J

    cmp-long p1, v0, p1

    if-ltz p1, :cond_2

    goto :goto_0

    :cond_2
    iget-wide p1, p0, Lyads/x50;->b:J

    iget p0, p0, Lyads/x50;->e:I

    invoke-static {p0, v0, v1, p1, p2}, Lyads/x50;->a(IJJ)J

    move-result-wide p0

    new-instance p2, Lyads/uh5;

    invoke-direct {p2, p0, p1, v0, v1}, Lyads/uh5;-><init>(JJ)V

    new-instance p0, Lyads/qh5;

    invoke-direct {p0, v6, p2}, Lyads/qh5;-><init>(Lyads/uh5;Lyads/uh5;)V

    return-object p0

    :cond_3
    :goto_0
    new-instance p0, Lyads/qh5;

    invoke-direct {p0, v6, v6}, Lyads/qh5;-><init>(Lyads/uh5;Lyads/uh5;)V

    return-object p0
.end method

.method public final b()Z
    .locals 4

    .line 111
    iget-wide v0, p0, Lyads/x50;->d:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lyads/x50;->g:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lyads/x50;->f:J

    return-wide v0
.end method
