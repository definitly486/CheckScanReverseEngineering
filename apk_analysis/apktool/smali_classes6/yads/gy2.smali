.class public final Lyads/gy2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/qp4;


# instance fields
.field public final a:Lyads/ky2;

.field public final b:Lyads/jy2;

.field public c:J

.field public d:J


# direct methods
.method public constructor <init>(Lyads/ky2;Lyads/jy2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/gy2;->a:Lyads/ky2;

    iput-object p2, p0, Lyads/gy2;->b:Lyads/jy2;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lyads/gy2;->c:J

    iput-wide p1, p0, Lyads/gy2;->d:J

    return-void
.end method


# virtual methods
.method public final a(Lyads/wk0;)J
    .locals 6

    .line 24
    iget-wide v0, p0, Lyads/gy2;->d:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    const-wide/16 v2, -0x1

    if-ltz p1, :cond_0

    const-wide/16 v4, 0x2

    add-long/2addr v0, v4

    neg-long v0, v0

    .line 25
    iput-wide v2, p0, Lyads/gy2;->d:J

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public final a()Lyads/sh5;
    .locals 4

    iget-wide v0, p0, Lyads/gy2;->c:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    new-instance v2, Lyads/iy2;

    iget-object p0, p0, Lyads/gy2;->a:Lyads/ky2;

    invoke-direct {v2, p0, v0, v1}, Lyads/iy2;-><init>(Lyads/ky2;J)V

    return-object v2

    :cond_0
    invoke-static {}, Lud;->g()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final a(J)V
    .locals 2

    .line 21
    iget-object v0, p0, Lyads/gy2;->b:Lyads/jy2;

    iget-object v0, v0, Lyads/jy2;->a:[J

    const/4 v1, 0x1

    .line 22
    invoke-static {v0, p1, p2, v1}, Lyads/u56;->b([JJZ)I

    move-result p1

    .line 23
    aget-wide p1, v0, p1

    iput-wide p1, p0, Lyads/gy2;->d:J

    return-void
.end method
