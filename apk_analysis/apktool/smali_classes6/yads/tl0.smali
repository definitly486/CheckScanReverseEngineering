.class public final Lyads/tl0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/sh5;


# instance fields
.field public final synthetic a:Lyads/ul0;


# direct methods
.method public constructor <init>(Lyads/ul0;)V
    .locals 0

    iput-object p1, p0, Lyads/tl0;->a:Lyads/ul0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(J)Lyads/qh5;
    .locals 8

    iget-object p0, p0, Lyads/tl0;->a:Lyads/ul0;

    iget-object v0, p0, Lyads/ul0;->d:Lyads/fs5;

    iget v0, v0, Lyads/fs5;->i:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iget-wide v2, p0, Lyads/ul0;->b:J

    iget-wide v4, p0, Lyads/ul0;->c:J

    sub-long v6, v4, v2

    mul-long/2addr v6, v0

    iget-wide v0, p0, Lyads/ul0;->f:J

    div-long/2addr v6, v0

    add-long/2addr v6, v2

    const-wide/16 v0, 0x7530

    sub-long/2addr v6, v0

    const-wide/16 v0, 0x1

    sub-long/2addr v4, v0

    sget p0, Lyads/u56;->a:I

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    new-instance p0, Lyads/qh5;

    new-instance v2, Lyads/uh5;

    invoke-direct {v2, p1, p2, v0, v1}, Lyads/uh5;-><init>(JJ)V

    invoke-direct {p0, v2, v2}, Lyads/qh5;-><init>(Lyads/uh5;Lyads/uh5;)V

    return-object p0
.end method

.method public final b()Z
    .locals 0

    .line 50
    const/4 p0, 0x1

    return p0
.end method

.method public final c()J
    .locals 5

    iget-object p0, p0, Lyads/tl0;->a:Lyads/ul0;

    iget-object v0, p0, Lyads/ul0;->d:Lyads/fs5;

    iget-wide v1, p0, Lyads/ul0;->f:J

    const-wide/32 v3, 0xf4240

    mul-long/2addr v1, v3

    iget p0, v0, Lyads/fs5;->i:I

    int-to-long v3, p0

    div-long/2addr v1, v3

    return-wide v1
.end method
