.class public final Lyads/ik0;
.super Lyads/as;
.source "SourceFile"


# instance fields
.field public final e:Lyads/hk0;


# direct methods
.method public constructor <init>(Lyads/hk0;JJ)V
    .locals 0

    invoke-direct {p0, p2, p3, p4, p5}, Lyads/as;-><init>(JJ)V

    iput-object p1, p0, Lyads/ik0;->e:Lyads/hk0;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    iget-wide v0, p0, Lyads/as;->d:J

    iget-wide v2, p0, Lyads/as;->b:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lyads/as;->c:J

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-object p0, p0, Lyads/ik0;->e:Lyads/hk0;

    invoke-virtual {p0, v0, v1}, Lyads/hk0;->a(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {}, Lqz0;->e()V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final b()J
    .locals 5

    iget-wide v0, p0, Lyads/as;->d:J

    iget-wide v2, p0, Lyads/as;->b:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lyads/as;->c:J

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-object p0, p0, Lyads/ik0;->e:Lyads/hk0;

    iget-object v2, p0, Lyads/hk0;->d:Lyads/qc0;

    iget-wide v3, p0, Lyads/hk0;->f:J

    sub-long/2addr v0, v3

    invoke-interface {v2, v0, v1}, Lyads/qc0;->a(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {}, Lqz0;->e()V

    const-wide/16 v0, 0x0

    return-wide v0
.end method
