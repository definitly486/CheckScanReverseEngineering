.class public final Lyads/m75;
.super Lyads/o75;
.source "SourceFile"

# interfaces
.implements Lyads/qc0;


# instance fields
.field public final f:Lyads/zh5;


# direct methods
.method public constructor <init>(Lyads/vz2;Lyads/oe3;Lyads/zh5;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lyads/o75;-><init>(Lyads/vz2;Lyads/oe3;Lyads/ei5;Ljava/util/ArrayList;)V

    iput-object p3, p0, Lyads/m75;->f:Lyads/zh5;

    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 0

    .line 7
    iget-object p0, p0, Lyads/m75;->f:Lyads/zh5;

    invoke-virtual {p0, p1, p2}, Lyads/zh5;->b(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final a(JJ)J
    .locals 0

    iget-object p0, p0, Lyads/m75;->f:Lyads/zh5;

    invoke-virtual {p0, p1, p2, p3, p4}, Lyads/zh5;->c(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final a()Z
    .locals 0

    .line 8
    iget-object p0, p0, Lyads/m75;->f:Lyads/zh5;

    invoke-virtual {p0}, Lyads/zh5;->a()Z

    move-result p0

    return p0
.end method

.method public final b()J
    .locals 2

    .line 8
    iget-object p0, p0, Lyads/m75;->f:Lyads/zh5;

    .line 9
    iget-wide v0, p0, Lyads/zh5;->d:J

    return-wide v0
.end method

.method public final b(JJ)J
    .locals 0

    .line 7
    iget-object p0, p0, Lyads/m75;->f:Lyads/zh5;

    invoke-virtual {p0, p1, p2, p3, p4}, Lyads/zh5;->b(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final b(J)Lyads/y35;
    .locals 1

    iget-object v0, p0, Lyads/m75;->f:Lyads/zh5;

    invoke-virtual {v0, p0, p1, p2}, Lyads/zh5;->a(Lyads/m75;J)Lyads/y35;

    move-result-object p0

    return-object p0
.end method

.method public final c(J)J
    .locals 0

    .line 8
    iget-object p0, p0, Lyads/m75;->f:Lyads/zh5;

    invoke-virtual {p0, p1, p2}, Lyads/zh5;->a(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final c(JJ)J
    .locals 0

    iget-object p0, p0, Lyads/m75;->f:Lyads/zh5;

    invoke-virtual {p0, p1, p2, p3, p4}, Lyads/zh5;->a(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    .line 7
    const/4 p0, 0x0

    return-object p0
.end method

.method public final d(JJ)J
    .locals 6

    iget-object p0, p0, Lyads/m75;->f:Lyads/zh5;

    iget-object v0, p0, Lyads/zh5;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    const-wide p0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lyads/zh5;->a(JJ)J

    move-result-wide v0

    invoke-virtual {p0, p1, p2}, Lyads/zh5;->a(J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lyads/zh5;->h:J

    sub-long v2, p3, v2

    iget-wide v4, p0, Lyads/zh5;->i:J

    add-long/2addr v2, v4

    invoke-virtual {p0, v2, v3, p1, p2}, Lyads/zh5;->c(JJ)J

    move-result-wide v2

    invoke-virtual {p0, p1, p2, p3, p4}, Lyads/zh5;->a(JJ)J

    move-result-wide p3

    sub-long/2addr v2, p3

    long-to-int p3, v2

    int-to-long v2, p3

    :goto_0
    add-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Lyads/zh5;->b(J)J

    move-result-wide p3

    invoke-virtual {p0, v2, v3, p1, p2}, Lyads/zh5;->b(JJ)J

    move-result-wide p1

    add-long/2addr p1, p3

    iget-wide p3, p0, Lyads/zh5;->i:J

    sub-long/2addr p1, p3

    return-wide p1
.end method

.method public final d()Lyads/qc0;
    .locals 0

    .line 59
    return-object p0
.end method

.method public final e(JJ)J
    .locals 4

    iget-object p0, p0, Lyads/m75;->f:Lyads/zh5;

    invoke-virtual {p0, p1, p2}, Lyads/zh5;->a(J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lyads/zh5;->h:J

    sub-long v0, p3, v0

    iget-wide v2, p0, Lyads/zh5;->i:J

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1, p1, p2}, Lyads/zh5;->c(JJ)J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, p3, p4}, Lyads/zh5;->a(JJ)J

    move-result-wide p0

    sub-long/2addr v0, p0

    long-to-int p0, v0

    int-to-long p0, p0

    return-wide p0
.end method

.method public final e()Lyads/y35;
    .locals 0

    .line 32
    const/4 p0, 0x0

    return-object p0
.end method
