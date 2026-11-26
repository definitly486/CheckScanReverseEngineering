.class public final Lyads/wl6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/wh5;


# instance fields
.field public final a:J

.field public final b:I

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:[J


# direct methods
.method public constructor <init>(JIJJ[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lyads/wl6;->a:J

    iput p3, p0, Lyads/wl6;->b:I

    iput-wide p4, p0, Lyads/wl6;->c:J

    iput-object p8, p0, Lyads/wl6;->f:[J

    iput-wide p6, p0, Lyads/wl6;->d:J

    const-wide/16 p3, -0x1

    cmp-long p5, p6, p3

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    add-long p3, p1, p6

    :goto_0
    iput-wide p3, p0, Lyads/wl6;->e:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 87
    iget-wide v0, p0, Lyads/wl6;->e:J

    return-wide v0
.end method

.method public final a(J)J
    .locals 12

    iget-wide v0, p0, Lyads/wl6;->a:J

    sub-long/2addr p1, v0

    invoke-virtual {p0}, Lyads/wl6;->b()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_4

    iget v0, p0, Lyads/wl6;->b:I

    int-to-long v3, v0

    cmp-long v0, p1, v3

    if-gtz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lyads/wl6;->f:[J

    if-eqz v0, :cond_3

    long-to-double p1, p1

    const-wide/high16 v1, 0x4070000000000000L    # 256.0

    mul-double/2addr p1, v1

    iget-wide v1, p0, Lyads/wl6;->d:J

    long-to-double v1, v1

    div-double/2addr p1, v1

    double-to-long v1, p1

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lyads/u56;->b([JJZ)I

    move-result v1

    iget-wide v2, p0, Lyads/wl6;->c:J

    int-to-long v4, v1

    mul-long/2addr v4, v2

    const-wide/16 v6, 0x64

    div-long/2addr v4, v6

    aget-wide v8, v0, v1

    add-int/lit8 p0, v1, 0x1

    int-to-long v10, p0

    mul-long/2addr v2, v10

    div-long/2addr v2, v6

    const/16 v6, 0x63

    if-ne v1, v6, :cond_1

    const-wide/16 v0, 0x100

    goto :goto_0

    :cond_1
    aget-wide v6, v0, p0

    move-wide v0, v6

    :goto_0
    cmp-long p0, v8, v0

    if-nez p0, :cond_2

    const-wide/16 p0, 0x0

    goto :goto_1

    :cond_2
    long-to-double v6, v8

    sub-double/2addr p1, v6

    sub-long/2addr v0, v8

    long-to-double v0, v0

    div-double p0, p1, v0

    :goto_1
    sub-long/2addr v2, v4

    long-to-double v0, v2

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    add-long/2addr p0, v4

    return-wide p0

    :cond_3
    invoke-static {}, Lud;->g()V

    :cond_4
    :goto_2
    return-wide v1
.end method

.method public final b(J)Lyads/qh5;
    .locals 20

    move-object/from16 v0, p0

    invoke-virtual {v0}, Lyads/wl6;->b()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    new-instance v1, Lyads/qh5;

    new-instance v4, Lyads/uh5;

    iget-wide v5, v0, Lyads/wl6;->a:J

    iget v0, v0, Lyads/wl6;->b:I

    int-to-long v7, v0

    add-long/2addr v5, v7

    invoke-direct {v4, v2, v3, v5, v6}, Lyads/uh5;-><init>(JJ)V

    invoke-direct {v1, v4, v4}, Lyads/qh5;-><init>(Lyads/uh5;Lyads/uh5;)V

    return-object v1

    :cond_0
    iget-wide v4, v0, Lyads/wl6;->c:J

    sget v1, Lyads/u56;->a:I

    move-wide/from16 v6, p1

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    long-to-double v3, v1

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double/2addr v3, v5

    iget-wide v7, v0, Lyads/wl6;->c:J

    long-to-double v7, v7

    div-double/2addr v3, v7

    const-wide/16 v7, 0x0

    cmpg-double v9, v3, v7

    const-wide/high16 v10, 0x4070000000000000L    # 256.0

    if-gtz v9, :cond_1

    goto :goto_1

    :cond_1
    cmpl-double v5, v3, v5

    if-ltz v5, :cond_2

    move-wide v7, v10

    goto :goto_1

    :cond_2
    double-to-int v5, v3

    iget-object v6, v0, Lyads/wl6;->f:[J

    if-eqz v6, :cond_4

    aget-wide v7, v6, v5

    long-to-double v14, v7

    const/16 v7, 0x63

    if-ne v5, v7, :cond_3

    move-wide v12, v10

    goto :goto_0

    :cond_3
    add-int/lit8 v7, v5, 0x1

    aget-wide v7, v6, v7

    long-to-double v6, v7

    move-wide v12, v6

    :goto_0
    int-to-double v5, v5

    sub-double v16, v3, v5

    move-wide/from16 v18, v14

    invoke-static/range {v12 .. v19}, Ldh;->b(DDDD)D

    move-result-wide v7

    :goto_1
    div-double/2addr v7, v10

    iget-wide v3, v0, Lyads/wl6;->d:J

    long-to-double v3, v3

    mul-double/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    iget v5, v0, Lyads/wl6;->b:I

    int-to-long v5, v5

    iget-wide v7, v0, Lyads/wl6;->d:J

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    new-instance v5, Lyads/qh5;

    new-instance v6, Lyads/uh5;

    iget-wide v7, v0, Lyads/wl6;->a:J

    add-long/2addr v7, v3

    invoke-direct {v6, v1, v2, v7, v8}, Lyads/uh5;-><init>(JJ)V

    invoke-direct {v5, v6, v6}, Lyads/qh5;-><init>(Lyads/uh5;Lyads/uh5;)V

    return-object v5

    :cond_4
    invoke-static {}, Lud;->g()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Z
    .locals 0

    .line 137
    iget-object p0, p0, Lyads/wl6;->f:[J

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lyads/wl6;->c:J

    return-wide v0
.end method
