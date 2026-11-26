.class public final Lyads/ul0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/qp4;


# instance fields
.field public final a:Lyads/pp4;

.field public final b:J

.field public final c:J

.field public final d:Lyads/fs5;

.field public e:I

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public j:J

.field public k:J

.field public l:J


# direct methods
.method public constructor <init>(Lyads/fs5;JJJJZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_2

    cmp-long v0, p4, p2

    if-lez v0, :cond_2

    iput-object p1, p0, Lyads/ul0;->d:Lyads/fs5;

    iput-wide p2, p0, Lyads/ul0;->b:J

    iput-wide p4, p0, Lyads/ul0;->c:J

    sub-long/2addr p4, p2

    cmp-long p1, p6, p4

    if-eqz p1, :cond_1

    if-eqz p10, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lyads/ul0;->e:I

    goto :goto_1

    :cond_1
    :goto_0
    iput-wide p8, p0, Lyads/ul0;->f:J

    const/4 p1, 0x4

    iput p1, p0, Lyads/ul0;->e:I

    :goto_1
    new-instance p1, Lyads/pp4;

    invoke-direct {p1}, Lyads/pp4;-><init>()V

    iput-object p1, p0, Lyads/ul0;->a:Lyads/pp4;

    return-void

    :cond_2
    invoke-static {}, Lmi2;->b()V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final a(Lyads/wk0;)J
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lyads/ul0;->e:I

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x4

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    if-eqz v2, :cond_d

    if-eq v2, v5, :cond_c

    const/4 v5, 0x2

    const/4 v12, 0x3

    if-eq v2, v5, :cond_2

    if-eq v2, v12, :cond_1

    if-ne v2, v6, :cond_0

    return-wide v7

    :cond_0
    invoke-static {}, Lud;->g()V

    return-wide v3

    :cond_1
    move-wide/from16 v22, v7

    const-wide/16 v15, 0x2

    goto/16 :goto_5

    :cond_2
    iget-wide v13, v0, Lyads/ul0;->i:J

    const-wide/16 v15, 0x2

    iget-wide v10, v0, Lyads/ul0;->j:J

    cmp-long v2, v13, v10

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    iget-wide v13, v1, Lyads/wk0;->d:J

    iget-object v2, v0, Lyads/ul0;->a:Lyads/pp4;

    invoke-virtual {v2, v1, v10, v11}, Lyads/pp4;->a(Lyads/wk0;J)Z

    move-result v2

    if-nez v2, :cond_5

    iget-wide v10, v0, Lyads/ul0;->i:J

    cmp-long v2, v10, v13

    if-eqz v2, :cond_4

    :goto_0
    move-wide/from16 v22, v7

    goto/16 :goto_4

    :cond_4
    const-string v0, "No ogg page can be found."

    invoke-static {v0}, Lki0;->d(Ljava/lang/String;)V

    return-wide v3

    :cond_5
    iget-object v2, v0, Lyads/ul0;->a:Lyads/pp4;

    invoke-virtual {v2, v1, v9}, Lyads/pp4;->a(Lyads/wk0;Z)Z

    iput v9, v1, Lyads/wk0;->f:I

    iget-wide v10, v0, Lyads/ul0;->h:J

    iget-object v2, v0, Lyads/ul0;->a:Lyads/pp4;

    move-wide/from16 v17, v3

    iget-wide v3, v2, Lyads/pp4;->b:J

    sub-long/2addr v10, v3

    iget v5, v2, Lyads/pp4;->d:I

    iget v2, v2, Lyads/pp4;->e:I

    add-int/2addr v5, v2

    cmp-long v2, v17, v10

    if-gtz v2, :cond_6

    const-wide/32 v19, 0x11940

    cmp-long v2, v10, v19

    if-gez v2, :cond_6

    :goto_1
    move-wide v10, v7

    move-wide/from16 v22, v10

    goto :goto_4

    :cond_6
    cmp-long v2, v10, v17

    if-gez v2, :cond_7

    iput-wide v13, v0, Lyads/ul0;->j:J

    iput-wide v3, v0, Lyads/ul0;->l:J

    move-wide/from16 v20, v10

    goto :goto_2

    :cond_7
    iget-wide v13, v1, Lyads/wk0;->d:J

    move-wide/from16 v20, v10

    int-to-long v9, v5

    add-long/2addr v13, v9

    iput-wide v13, v0, Lyads/ul0;->i:J

    iput-wide v3, v0, Lyads/ul0;->k:J

    :goto_2
    iget-wide v3, v0, Lyads/ul0;->j:J

    iget-wide v10, v0, Lyads/ul0;->i:J

    sub-long v13, v3, v10

    const-wide/32 v17, 0x186a0

    cmp-long v9, v13, v17

    if-gez v9, :cond_8

    iput-wide v10, v0, Lyads/ul0;->j:J

    goto :goto_0

    :cond_8
    move-wide/from16 v22, v7

    int-to-long v6, v5

    const-wide/16 v17, 0x1

    if-gtz v2, :cond_9

    move-wide/from16 v24, v15

    goto :goto_3

    :cond_9
    move-wide/from16 v24, v17

    :goto_3
    mul-long v6, v6, v24

    move-wide/from16 v24, v13

    iget-wide v12, v1, Lyads/wk0;->d:J

    sub-long/2addr v12, v6

    mul-long v5, v24, v20

    iget-wide v7, v0, Lyads/ul0;->l:J

    move-wide/from16 v20, v3

    iget-wide v2, v0, Lyads/ul0;->k:J

    sub-long/2addr v7, v2

    div-long/2addr v5, v7

    add-long/2addr v5, v12

    sub-long v2, v20, v17

    sget v7, Lyads/u56;->a:I

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    :goto_4
    cmp-long v2, v10, v22

    if-eqz v2, :cond_a

    return-wide v10

    :cond_a
    const/4 v2, 0x3

    iput v2, v0, Lyads/ul0;->e:I

    :goto_5
    iget-object v2, v0, Lyads/ul0;->a:Lyads/pp4;

    move-wide/from16 v3, v22

    invoke-virtual {v2, v1, v3, v4}, Lyads/pp4;->a(Lyads/wk0;J)Z

    iget-object v2, v0, Lyads/ul0;->a:Lyads/pp4;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lyads/pp4;->a(Lyads/wk0;Z)Z

    iget-object v2, v0, Lyads/ul0;->a:Lyads/pp4;

    iget-wide v4, v2, Lyads/pp4;->b:J

    iget-wide v6, v0, Lyads/ul0;->h:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_b

    iput v3, v1, Lyads/wk0;->f:I

    const/4 v9, 0x4

    iput v9, v0, Lyads/ul0;->e:I

    iget-wide v0, v0, Lyads/ul0;->k:J

    add-long/2addr v0, v15

    neg-long v0, v0

    return-wide v0

    :cond_b
    iget v3, v2, Lyads/pp4;->d:I

    iget v2, v2, Lyads/pp4;->e:I

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lyads/wk0;->a(I)V

    iget-wide v2, v1, Lyads/wk0;->d:J

    iput-wide v2, v0, Lyads/ul0;->i:J

    iget-object v2, v0, Lyads/ul0;->a:Lyads/pp4;

    iget-wide v2, v2, Lyads/pp4;->b:J

    iput-wide v2, v0, Lyads/ul0;->k:J

    const-wide/16 v22, -0x1

    goto :goto_5

    :cond_c
    move-wide/from16 v17, v3

    goto :goto_6

    :cond_d
    move-wide/from16 v17, v3

    iget-wide v2, v1, Lyads/wk0;->d:J

    iput-wide v2, v0, Lyads/ul0;->g:J

    iput v5, v0, Lyads/ul0;->e:I

    iget-wide v6, v0, Lyads/ul0;->c:J

    const-wide/32 v10, 0xff1b

    sub-long/2addr v6, v10

    cmp-long v2, v6, v2

    if-lez v2, :cond_e

    return-wide v6

    :cond_e
    :goto_6
    iget-object v2, v0, Lyads/ul0;->a:Lyads/pp4;

    const/4 v3, 0x0

    iput v3, v2, Lyads/pp4;->a:I

    move-wide/from16 v6, v17

    iput-wide v6, v2, Lyads/pp4;->b:J

    iput v3, v2, Lyads/pp4;->c:I

    iput v3, v2, Lyads/pp4;->d:I

    iput v3, v2, Lyads/pp4;->e:I

    const-wide/16 v6, -0x1

    invoke-virtual {v2, v1, v6, v7}, Lyads/pp4;->a(Lyads/wk0;J)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, v0, Lyads/ul0;->a:Lyads/pp4;

    invoke-virtual {v2, v1, v3}, Lyads/pp4;->a(Lyads/wk0;Z)Z

    iget-object v2, v0, Lyads/ul0;->a:Lyads/pp4;

    iget v3, v2, Lyads/pp4;->d:I

    iget v2, v2, Lyads/pp4;->e:I

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lyads/wk0;->a(I)V

    iget-object v2, v0, Lyads/ul0;->a:Lyads/pp4;

    iget-wide v2, v2, Lyads/pp4;->b:J

    :goto_7
    iget-object v4, v0, Lyads/ul0;->a:Lyads/pp4;

    iget v6, v4, Lyads/pp4;->a:I

    const/4 v9, 0x4

    and-int/2addr v6, v9

    if-eq v6, v9, :cond_f

    const-wide/16 v6, -0x1

    invoke-virtual {v4, v1, v6, v7}, Lyads/pp4;->a(Lyads/wk0;J)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-wide v10, v1, Lyads/wk0;->d:J

    iget-wide v12, v0, Lyads/ul0;->c:J

    cmp-long v4, v10, v12

    if-gez v4, :cond_f

    iget-object v4, v0, Lyads/ul0;->a:Lyads/pp4;

    invoke-virtual {v4, v1, v5}, Lyads/pp4;->a(Lyads/wk0;Z)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, v0, Lyads/ul0;->a:Lyads/pp4;

    iget v8, v4, Lyads/pp4;->d:I

    iget v4, v4, Lyads/pp4;->e:I

    add-int/2addr v8, v4

    :try_start_0
    invoke-virtual {v1, v8}, Lyads/wk0;->a(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, v0, Lyads/ul0;->a:Lyads/pp4;

    iget-wide v2, v2, Lyads/pp4;->b:J

    goto :goto_7

    :catch_0
    :cond_f
    iput-wide v2, v0, Lyads/ul0;->f:J

    const/4 v9, 0x4

    iput v9, v0, Lyads/ul0;->e:I

    iget-wide v0, v0, Lyads/ul0;->g:J

    return-wide v0

    :cond_10
    invoke-static {}, Ln7;->e()V

    const-wide/16 v17, 0x0

    return-wide v17
.end method

.method public final a()Lyads/sh5;
    .locals 4

    .line 375
    iget-wide v0, p0, Lyads/ul0;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Lyads/tl0;

    invoke-direct {v0, p0}, Lyads/tl0;-><init>(Lyads/ul0;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final a(J)V
    .locals 4

    .line 376
    iget-wide v0, p0, Lyads/ul0;->f:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    sget v2, Lyads/u56;->a:I

    .line 377
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 378
    iput-wide p1, p0, Lyads/ul0;->h:J

    const/4 p1, 0x2

    .line 379
    iput p1, p0, Lyads/ul0;->e:I

    .line 380
    iget-wide p1, p0, Lyads/ul0;->b:J

    iput-wide p1, p0, Lyads/ul0;->i:J

    .line 381
    iget-wide p1, p0, Lyads/ul0;->c:J

    iput-wide p1, p0, Lyads/ul0;->j:J

    .line 382
    iput-wide v0, p0, Lyads/ul0;->k:J

    .line 383
    iget-wide p1, p0, Lyads/ul0;->f:J

    iput-wide p1, p0, Lyads/ul0;->l:J

    return-void
.end method
