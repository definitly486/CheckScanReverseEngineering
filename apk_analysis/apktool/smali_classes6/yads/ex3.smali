.class public final Lyads/ex3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/z04;
.implements Lyads/y04;


# instance fields
.field public final b:Lyads/h14;

.field public final c:J

.field public final d:Lyads/aj0;

.field public e:Lyads/cs;

.field public f:Lyads/z04;

.field public g:Lyads/y04;

.field public i:J


# direct methods
.method public constructor <init>(Lyads/h14;Lyads/aj0;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ex3;->b:Lyads/h14;

    iput-object p2, p0, Lyads/ex3;->d:Lyads/aj0;

    iput-wide p3, p0, Lyads/ex3;->c:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lyads/ex3;->i:J

    return-void
.end method


# virtual methods
.method public final a(JLyads/th5;)J
    .locals 1

    .line 47
    iget-object p0, p0, Lyads/ex3;->f:Lyads/z04;

    sget v0, Lyads/u56;->a:I

    invoke-interface {p0, p1, p2, p3}, Lyads/z04;->a(JLyads/th5;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final a([Lyads/er2;[Z[Lyads/mc5;[ZJ)J
    .locals 6

    .line 42
    iget-wide v0, p0, Lyads/ex3;->i:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lyads/ex3;->c:J

    cmp-long v4, p5, v4

    if-nez v4, :cond_0

    .line 43
    iput-wide v2, p0, Lyads/ex3;->i:J

    move-wide p5, v0

    .line 44
    :cond_0
    iget-object p0, p0, Lyads/ex3;->f:Lyads/z04;

    sget v0, Lyads/u56;->a:I

    .line 45
    invoke-interface/range {p0 .. p6}, Lyads/z04;->a([Lyads/er2;[Z[Lyads/mc5;[ZJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final a(J)V
    .locals 1

    .line 46
    iget-object p0, p0, Lyads/ex3;->f:Lyads/z04;

    sget v0, Lyads/u56;->a:I

    invoke-interface {p0, p1, p2}, Lyads/z04;->a(J)V

    return-void
.end method

.method public final a(Lyads/h14;)V
    .locals 6

    iget-wide v0, p0, Lyads/ex3;->c:J

    iget-wide v2, p0, Lyads/ex3;->i:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    move-wide v0, v2

    :cond_0
    iget-object v2, p0, Lyads/ex3;->e:Lyads/cs;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lyads/ex3;->d:Lyads/aj0;

    invoke-virtual {v2, p1, v3, v0, v1}, Lyads/cs;->a(Lyads/h14;Lyads/aj0;J)Lyads/z04;

    move-result-object p1

    iput-object p1, p0, Lyads/ex3;->f:Lyads/z04;

    iget-object v2, p0, Lyads/ex3;->g:Lyads/y04;

    if-eqz v2, :cond_1

    invoke-interface {p1, p0, v0, v1}, Lyads/z04;->a(Lyads/y04;J)V

    :cond_1
    return-void
.end method

.method public final a(Lyads/ui5;)V
    .locals 1

    .line 35
    check-cast p1, Lyads/z04;

    .line 36
    iget-object p1, p0, Lyads/ex3;->g:Lyads/y04;

    sget v0, Lyads/u56;->a:I

    invoke-interface {p1, p0}, Lyads/ti5;->a(Lyads/ui5;)V

    return-void
.end method

.method public final a(Lyads/y04;J)V
    .locals 4

    .line 37
    iput-object p1, p0, Lyads/ex3;->g:Lyads/y04;

    .line 38
    iget-object p1, p0, Lyads/ex3;->f:Lyads/z04;

    if-eqz p1, :cond_1

    .line 39
    iget-wide p2, p0, Lyads/ex3;->c:J

    .line 40
    iget-wide v0, p0, Lyads/ex3;->i:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    move-wide p2, v0

    .line 41
    :cond_0
    invoke-interface {p1, p0, p2, p3}, Lyads/z04;->a(Lyads/y04;J)V

    :cond_1
    return-void
.end method

.method public final a(Lyads/z04;)V
    .locals 1

    .line 48
    iget-object p1, p0, Lyads/ex3;->g:Lyads/y04;

    sget v0, Lyads/u56;->a:I

    invoke-interface {p1, p0}, Lyads/y04;->a(Lyads/z04;)V

    return-void
.end method

.method public final c(J)Z
    .locals 0

    iget-object p0, p0, Lyads/ex3;->f:Lyads/z04;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lyads/ui5;->c(J)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getBufferedPositionUs()J
    .locals 2

    iget-object p0, p0, Lyads/ex3;->f:Lyads/z04;

    sget v0, Lyads/u56;->a:I

    invoke-interface {p0}, Lyads/ui5;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getNextLoadPositionUs()J
    .locals 2

    iget-object p0, p0, Lyads/ex3;->f:Lyads/z04;

    sget v0, Lyads/u56;->a:I

    invoke-interface {p0}, Lyads/ui5;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getTrackGroups()Lyads/g06;
    .locals 1

    iget-object p0, p0, Lyads/ex3;->f:Lyads/z04;

    sget v0, Lyads/u56;->a:I

    invoke-interface {p0}, Lyads/z04;->getTrackGroups()Lyads/g06;

    move-result-object p0

    return-object p0
.end method

.method public final isLoading()Z
    .locals 0

    iget-object p0, p0, Lyads/ex3;->f:Lyads/z04;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lyads/ui5;->isLoading()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final maybeThrowPrepareError()V
    .locals 1

    iget-object v0, p0, Lyads/ex3;->f:Lyads/z04;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lyads/z04;->maybeThrowPrepareError()V

    return-void

    :cond_0
    iget-object p0, p0, Lyads/ex3;->e:Lyads/cs;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lyads/cs;->d()V

    :cond_1
    return-void
.end method

.method public final readDiscontinuity()J
    .locals 2

    iget-object p0, p0, Lyads/ex3;->f:Lyads/z04;

    sget v0, Lyads/u56;->a:I

    invoke-interface {p0}, Lyads/z04;->readDiscontinuity()J

    move-result-wide v0

    return-wide v0
.end method

.method public final reevaluateBuffer(J)V
    .locals 1

    iget-object p0, p0, Lyads/ex3;->f:Lyads/z04;

    sget v0, Lyads/u56;->a:I

    invoke-interface {p0, p1, p2}, Lyads/ui5;->reevaluateBuffer(J)V

    return-void
.end method

.method public final seekToUs(J)J
    .locals 1

    iget-object p0, p0, Lyads/ex3;->f:Lyads/z04;

    sget v0, Lyads/u56;->a:I

    invoke-interface {p0, p1, p2}, Lyads/z04;->seekToUs(J)J

    move-result-wide p0

    return-wide p0
.end method
