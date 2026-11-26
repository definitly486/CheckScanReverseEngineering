.class public final Lyads/a84;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/z04;
.implements Lyads/y04;


# instance fields
.field public final b:Lyads/z04;

.field public final c:J

.field public d:Lyads/y04;


# direct methods
.method public constructor <init>(Lyads/z04;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/a84;->b:Lyads/z04;

    iput-wide p2, p0, Lyads/a84;->c:J

    return-void
.end method


# virtual methods
.method public final a(JLyads/th5;)J
    .locals 3

    .line 78
    iget-object v0, p0, Lyads/a84;->b:Lyads/z04;

    iget-wide v1, p0, Lyads/a84;->c:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2, p3}, Lyads/z04;->a(JLyads/th5;)J

    move-result-wide p1

    iget-wide v0, p0, Lyads/a84;->c:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public final a([Lyads/er2;[Z[Lyads/mc5;[ZJ)J
    .locals 9

    array-length v0, p3

    new-array v4, v0, [Lyads/mc5;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p3

    const/4 v8, 0x0

    if-ge v1, v2, :cond_1

    aget-object v2, p3, v1

    check-cast v2, Lyads/b84;

    if-eqz v2, :cond_0

    iget-object v8, v2, Lyads/b84;->b:Lyads/mc5;

    :cond_0
    aput-object v8, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lyads/a84;->b:Lyads/z04;

    iget-wide v2, p0, Lyads/a84;->c:J

    sub-long v6, p5, v2

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-interface/range {v1 .. v7}, Lyads/z04;->a([Lyads/er2;[Z[Lyads/mc5;[ZJ)J

    move-result-wide p1

    :goto_1
    array-length p4, p3

    if-ge v0, p4, :cond_5

    aget-object p4, v4, v0

    if-nez p4, :cond_2

    aput-object v8, p3, v0

    goto :goto_2

    :cond_2
    aget-object p5, p3, v0

    if-eqz p5, :cond_3

    check-cast p5, Lyads/b84;

    iget-object p5, p5, Lyads/b84;->b:Lyads/mc5;

    if-eq p5, p4, :cond_4

    :cond_3
    new-instance p5, Lyads/b84;

    iget-wide v1, p0, Lyads/a84;->c:J

    invoke-direct {p5, p4, v1, v2}, Lyads/b84;-><init>(Lyads/mc5;J)V

    aput-object p5, p3, v0

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iget-wide p3, p0, Lyads/a84;->c:J

    add-long/2addr p1, p3

    return-wide p1
.end method

.method public final a(J)V
    .locals 3

    .line 77
    iget-object v0, p0, Lyads/a84;->b:Lyads/z04;

    iget-wide v1, p0, Lyads/a84;->c:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lyads/z04;->a(J)V

    return-void
.end method

.method public final a(Lyads/ui5;)V
    .locals 0

    .line 73
    check-cast p1, Lyads/z04;

    .line 74
    iget-object p1, p0, Lyads/a84;->d:Lyads/y04;

    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    invoke-interface {p1, p0}, Lyads/ti5;->a(Lyads/ui5;)V

    return-void
.end method

.method public final a(Lyads/y04;J)V
    .locals 2

    .line 71
    iput-object p1, p0, Lyads/a84;->d:Lyads/y04;

    .line 72
    iget-object p1, p0, Lyads/a84;->b:Lyads/z04;

    iget-wide v0, p0, Lyads/a84;->c:J

    sub-long/2addr p2, v0

    invoke-interface {p1, p0, p2, p3}, Lyads/z04;->a(Lyads/y04;J)V

    return-void
.end method

.method public final a(Lyads/z04;)V
    .locals 0

    .line 79
    iget-object p1, p0, Lyads/a84;->d:Lyads/y04;

    .line 80
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    invoke-interface {p1, p0}, Lyads/y04;->a(Lyads/z04;)V

    return-void
.end method

.method public final c(J)Z
    .locals 3

    iget-object v0, p0, Lyads/a84;->b:Lyads/z04;

    iget-wide v1, p0, Lyads/a84;->c:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lyads/ui5;->c(J)Z

    move-result p0

    return p0
.end method

.method public final getBufferedPositionUs()J
    .locals 5

    iget-object v0, p0, Lyads/a84;->b:Lyads/z04;

    invoke-interface {v0}, Lyads/ui5;->getBufferedPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    iget-wide v2, p0, Lyads/a84;->c:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final getNextLoadPositionUs()J
    .locals 5

    iget-object v0, p0, Lyads/a84;->b:Lyads/z04;

    invoke-interface {v0}, Lyads/ui5;->getNextLoadPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    iget-wide v2, p0, Lyads/a84;->c:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final getTrackGroups()Lyads/g06;
    .locals 0

    iget-object p0, p0, Lyads/a84;->b:Lyads/z04;

    invoke-interface {p0}, Lyads/z04;->getTrackGroups()Lyads/g06;

    move-result-object p0

    return-object p0
.end method

.method public final isLoading()Z
    .locals 0

    iget-object p0, p0, Lyads/a84;->b:Lyads/z04;

    invoke-interface {p0}, Lyads/ui5;->isLoading()Z

    move-result p0

    return p0
.end method

.method public final maybeThrowPrepareError()V
    .locals 0

    iget-object p0, p0, Lyads/a84;->b:Lyads/z04;

    invoke-interface {p0}, Lyads/z04;->maybeThrowPrepareError()V

    return-void
.end method

.method public final readDiscontinuity()J
    .locals 5

    iget-object v0, p0, Lyads/a84;->b:Lyads/z04;

    invoke-interface {v0}, Lyads/z04;->readDiscontinuity()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    iget-wide v2, p0, Lyads/a84;->c:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final reevaluateBuffer(J)V
    .locals 3

    iget-object v0, p0, Lyads/a84;->b:Lyads/z04;

    iget-wide v1, p0, Lyads/a84;->c:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lyads/ui5;->reevaluateBuffer(J)V

    return-void
.end method

.method public final seekToUs(J)J
    .locals 3

    iget-object v0, p0, Lyads/a84;->b:Lyads/z04;

    iget-wide v1, p0, Lyads/a84;->c:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lyads/z04;->seekToUs(J)J

    move-result-wide p1

    iget-wide v0, p0, Lyads/a84;->c:J

    add-long/2addr p1, v0

    return-wide p1
.end method
