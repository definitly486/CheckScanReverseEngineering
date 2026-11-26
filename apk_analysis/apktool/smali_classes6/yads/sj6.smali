.class public final Lyads/sj6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/sh5;


# instance fields
.field public final a:Lyads/pj6;

.field public final b:I

.field public final c:J

.field public final d:J

.field public final e:J


# direct methods
.method public constructor <init>(Lyads/pj6;IJJ)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/sj6;->a:Lyads/pj6;

    iput p2, p0, Lyads/sj6;->b:I

    iput-wide p3, p0, Lyads/sj6;->c:J

    sub-long/2addr p5, p3

    iget p3, p1, Lyads/pj6;->c:I

    int-to-long p3, p3

    div-long/2addr p5, p3

    iput-wide p5, p0, Lyads/sj6;->d:J

    int-to-long p2, p2

    mul-long v0, p5, p2

    iget p1, p1, Lyads/pj6;->b:I

    int-to-long v4, p1

    const-wide/32 v2, 0xf4240

    invoke-static/range {v0 .. v5}, Lyads/u56;->a(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lyads/sj6;->e:J

    return-void
.end method


# virtual methods
.method public final b(J)Lyads/qh5;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lyads/sj6;->a:Lyads/pj6;

    iget v1, v1, Lyads/pj6;->b:I

    int-to-long v1, v1

    mul-long v1, v1, p1

    iget v3, v0, Lyads/sj6;->b:I

    int-to-long v3, v3

    const-wide/32 v5, 0xf4240

    mul-long/2addr v3, v5

    div-long/2addr v1, v3

    iget-wide v3, v0, Lyads/sj6;->d:J

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    sget v7, Lyads/u56;->a:I

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iget-wide v3, v0, Lyads/sj6;->c:J

    iget-object v7, v0, Lyads/sj6;->a:Lyads/pj6;

    iget v8, v7, Lyads/pj6;->c:I

    int-to-long v8, v8

    mul-long/2addr v8, v1

    add-long/2addr v8, v3

    iget v3, v0, Lyads/sj6;->b:I

    int-to-long v3, v3

    mul-long v10, v1, v3

    iget v3, v7, Lyads/pj6;->b:I

    int-to-long v14, v3

    const-wide/32 v12, 0xf4240

    invoke-static/range {v10 .. v15}, Lyads/u56;->a(JJJ)J

    move-result-wide v3

    new-instance v7, Lyads/uh5;

    invoke-direct {v7, v3, v4, v8, v9}, Lyads/uh5;-><init>(JJ)V

    cmp-long v3, v3, p1

    if-gez v3, :cond_1

    iget-wide v3, v0, Lyads/sj6;->d:J

    sub-long/2addr v3, v5

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    add-long/2addr v1, v5

    iget-wide v3, v0, Lyads/sj6;->c:J

    iget-object v5, v0, Lyads/sj6;->a:Lyads/pj6;

    iget v6, v5, Lyads/pj6;->c:I

    int-to-long v8, v6

    mul-long/2addr v8, v1

    add-long/2addr v8, v3

    iget v0, v0, Lyads/sj6;->b:I

    int-to-long v3, v0

    mul-long v10, v1, v3

    iget v0, v5, Lyads/pj6;->b:I

    int-to-long v14, v0

    const-wide/32 v12, 0xf4240

    invoke-static/range {v10 .. v15}, Lyads/u56;->a(JJJ)J

    move-result-wide v0

    new-instance v2, Lyads/uh5;

    invoke-direct {v2, v0, v1, v8, v9}, Lyads/uh5;-><init>(JJ)V

    new-instance v0, Lyads/qh5;

    invoke-direct {v0, v7, v2}, Lyads/qh5;-><init>(Lyads/uh5;Lyads/uh5;)V

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Lyads/qh5;

    invoke-direct {v0, v7, v7}, Lyads/qh5;-><init>(Lyads/uh5;Lyads/uh5;)V

    return-object v0
.end method

.method public final b()Z
    .locals 0

    .line 117
    const/4 p0, 0x1

    return p0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lyads/sj6;->e:J

    return-wide v0
.end method
