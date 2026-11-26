.class public final Lyads/iy2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/sh5;


# instance fields
.field public final a:Lyads/ky2;

.field public final b:J


# direct methods
.method public constructor <init>(Lyads/ky2;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/iy2;->a:Lyads/ky2;

    iput-wide p2, p0, Lyads/iy2;->b:J

    return-void
.end method


# virtual methods
.method public final b(J)Lyads/qh5;
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Lyads/iy2;->a:Lyads/ky2;

    iget-object v4, v3, Lyads/ky2;->k:Lyads/jy2;

    if-eqz v4, :cond_4

    iget-object v5, v4, Lyads/jy2;->a:[J

    iget-object v4, v4, Lyads/jy2;->b:[J

    invoke-virtual {v3, v1, v2}, Lyads/ky2;->a(J)J

    move-result-wide v6

    const/4 v3, 0x0

    invoke-static {v5, v6, v7, v3}, Lyads/u56;->b([JJZ)I

    move-result v3

    const-wide/16 v6, 0x0

    const/4 v8, -0x1

    if-ne v3, v8, :cond_0

    move-wide v9, v6

    goto :goto_0

    :cond_0
    aget-wide v9, v5, v3

    :goto_0
    if-ne v3, v8, :cond_1

    goto :goto_1

    :cond_1
    aget-wide v6, v4, v3

    :goto_1
    const-wide/32 v11, 0xf4240

    mul-long/2addr v9, v11

    iget-object v8, v0, Lyads/iy2;->a:Lyads/ky2;

    iget v8, v8, Lyads/ky2;->e:I

    int-to-long v13, v8

    div-long/2addr v9, v13

    move-wide v15, v11

    iget-wide v11, v0, Lyads/iy2;->b:J

    add-long/2addr v6, v11

    new-instance v0, Lyads/uh5;

    invoke-direct {v0, v9, v10, v6, v7}, Lyads/uh5;-><init>(JJ)V

    cmp-long v1, v9, v1

    if-eqz v1, :cond_3

    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    if-ne v3, v1, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    aget-wide v1, v5, v3

    aget-wide v3, v4, v3

    mul-long/2addr v1, v15

    div-long/2addr v1, v13

    add-long/2addr v11, v3

    new-instance v3, Lyads/uh5;

    invoke-direct {v3, v1, v2, v11, v12}, Lyads/uh5;-><init>(JJ)V

    new-instance v1, Lyads/qh5;

    invoke-direct {v1, v0, v3}, Lyads/qh5;-><init>(Lyads/uh5;Lyads/uh5;)V

    return-object v1

    :cond_3
    :goto_2
    new-instance v1, Lyads/qh5;

    invoke-direct {v1, v0, v0}, Lyads/qh5;-><init>(Lyads/uh5;Lyads/uh5;)V

    return-object v1

    :cond_4
    invoke-static {}, Lud;->g()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Z
    .locals 0

    .line 97
    const/4 p0, 0x1

    return p0
.end method

.method public final c()J
    .locals 4

    iget-object p0, p0, Lyads/iy2;->a:Lyads/ky2;

    iget-wide v0, p0, Lyads/ky2;->j:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_0
    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget p0, p0, Lyads/ky2;->e:I

    int-to-long v2, p0

    div-long/2addr v0, v2

    return-wide v0
.end method
