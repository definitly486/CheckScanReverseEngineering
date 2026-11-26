.class public final Lyads/oj6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ws2;


# instance fields
.field public a:Lyads/zs2;

.field public b:Lyads/k06;

.field public c:I

.field public d:J

.field public e:Lyads/mj6;

.field public f:I

.field public g:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lyads/oj6;->c:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lyads/oj6;->d:J

    const/4 v2, -0x1

    iput v2, p0, Lyads/oj6;->f:I

    iput-wide v0, p0, Lyads/oj6;->g:J

    return-void
.end method

.method public static synthetic a()[Lyads/ws2;
    .locals 3

    .line 587
    new-instance v0, Lyads/oj6;

    invoke-direct {v0}, Lyads/oj6;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lyads/ws2;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method


# virtual methods
.method public final a(Lyads/xs2;Lyads/qx4;)I
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Lyads/oj6;->b:Lyads/k06;

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    sget v1, Lyads/u56;->a:I

    iget v1, v0, Lyads/oj6;->c:I

    const/4 v3, -0x1

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-eqz v1, :cond_14

    const/4 v6, 0x2

    const-wide/16 v7, -0x1

    const/16 v9, 0x8

    if-eq v1, v5, :cond_12

    const/4 v10, 0x3

    if-eq v1, v6, :cond_6

    if-eq v1, v10, :cond_3

    if-ne v1, v4, :cond_2

    iget-wide v4, v0, Lyads/oj6;->g:J

    cmp-long v1, v4, v7

    if-eqz v1, :cond_1

    move-object/from16 v1, p1

    check-cast v1, Lyads/wk0;

    iget-wide v6, v1, Lyads/wk0;->d:J

    sub-long/2addr v4, v6

    iget-object v0, v0, Lyads/oj6;->e:Lyads/mj6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v1, v4, v5}, Lyads/mj6;->a(Lyads/wk0;J)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    return v2

    :cond_1
    invoke-static {}, Lud;->g()V

    return v2

    :cond_2
    invoke-static {}, Lud;->g()V

    return v2

    :cond_3
    move-object/from16 v1, p1

    check-cast v1, Lyads/wk0;

    iput v2, v1, Lyads/wk0;->f:I

    new-instance v3, Lyads/os4;

    invoke-direct {v3, v9}, Lyads/os4;-><init>(I)V

    const v5, 0x64617461

    invoke-static {v5, v1, v3}, Lyads/rj6;->a(ILyads/wk0;Lyads/os4;)Lyads/qj6;

    move-result-object v3

    invoke-virtual {v1, v9}, Lyads/wk0;->a(I)V

    iget-wide v5, v1, Lyads/wk0;->d:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v9, v3, Lyads/qj6;->b:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->intValue()I

    move-result v5

    iput v5, v0, Lyads/oj6;->f:I

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-wide v9, v0, Lyads/oj6;->d:J

    cmp-long v3, v9, v7

    if-eqz v3, :cond_4

    const-wide v11, 0xffffffffL

    cmp-long v3, v5, v11

    if-nez v3, :cond_4

    move-wide v5, v9

    :cond_4
    iget v3, v0, Lyads/oj6;->f:I

    int-to-long v9, v3

    add-long/2addr v9, v5

    iput-wide v9, v0, Lyads/oj6;->g:J

    iget-wide v5, v1, Lyads/wk0;->c:J

    cmp-long v1, v5, v7

    if-eqz v1, :cond_5

    cmp-long v1, v9, v5

    if-lez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Data exceeds input length: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v7, v0, Lyads/oj6;->g:J

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WavExtractor"

    invoke-static {v3, v1}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v5, v0, Lyads/oj6;->g:J

    :cond_5
    iget-object v1, v0, Lyads/oj6;->e:Lyads/mj6;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v0, Lyads/oj6;->f:I

    iget-wide v5, v0, Lyads/oj6;->g:J

    invoke-interface {v1, v3, v5, v6}, Lyads/mj6;->a(IJ)V

    iput v4, v0, Lyads/oj6;->c:I

    return v2

    :cond_6
    new-instance v1, Lyads/os4;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Lyads/os4;-><init>(I)V

    move-object/from16 v6, p1

    check-cast v6, Lyads/wk0;

    const v7, 0x666d7420

    invoke-static {v7, v6, v1}, Lyads/rj6;->a(ILyads/wk0;Lyads/os4;)Lyads/qj6;

    move-result-object v7

    iget-wide v8, v7, Lyads/qj6;->b:J

    const-wide/16 v11, 0x10

    cmp-long v8, v8, v11

    if-ltz v8, :cond_11

    iget-object v8, v1, Lyads/os4;->a:[B

    invoke-virtual {v6, v8, v2, v3, v2}, Lyads/wk0;->b([BIIZ)Z

    invoke-virtual {v1, v2}, Lyads/os4;->e(I)V

    invoke-virtual {v1}, Lyads/os4;->f()I

    move-result v12

    invoke-virtual {v1}, Lyads/os4;->f()I

    move-result v13

    invoke-virtual {v1}, Lyads/os4;->c()I

    move-result v14

    const-string v8, "Top bit not zero: "

    if-ltz v14, :cond_10

    invoke-virtual {v1}, Lyads/os4;->c()I

    move-result v9

    if-ltz v9, :cond_f

    invoke-virtual {v1}, Lyads/os4;->f()I

    move-result v15

    invoke-virtual {v1}, Lyads/os4;->f()I

    move-result v16

    iget-wide v7, v7, Lyads/qj6;->b:J

    long-to-int v1, v7

    sub-int/2addr v1, v3

    if-lez v1, :cond_7

    new-array v3, v1, [B

    invoke-virtual {v6, v3, v2, v1, v2}, Lyads/wk0;->b([BIIZ)Z

    :goto_0
    move-object/from16 v17, v3

    goto :goto_1

    :cond_7
    sget-object v3, Lyads/u56;->f:[B

    goto :goto_0

    :goto_1
    iget-wide v7, v6, Lyads/wk0;->d:J

    iget v1, v6, Lyads/wk0;->f:I

    move/from16 p2, v2

    int-to-long v2, v1

    add-long/2addr v2, v7

    sub-long/2addr v2, v7

    long-to-int v1, v2

    invoke-virtual {v6, v1}, Lyads/wk0;->a(I)V

    new-instance v21, Lyads/pj6;

    move-object/from16 v11, v21

    invoke-direct/range {v11 .. v17}, Lyads/pj6;-><init>(IIIII[B)V

    move/from16 v1, v16

    const/16 v2, 0x11

    if-ne v12, v2, :cond_8

    new-instance v1, Lyads/lj6;

    iget-object v2, v0, Lyads/oj6;->a:Lyads/zs2;

    iget-object v3, v0, Lyads/oj6;->b:Lyads/k06;

    invoke-direct {v1, v2, v3, v11}, Lyads/lj6;-><init>(Lyads/zs2;Lyads/k06;Lyads/pj6;)V

    iput-object v1, v0, Lyads/oj6;->e:Lyads/mj6;

    goto/16 :goto_5

    :cond_8
    const/4 v2, 0x6

    if-ne v12, v2, :cond_9

    new-instance v18, Lyads/nj6;

    iget-object v1, v0, Lyads/oj6;->a:Lyads/zs2;

    iget-object v2, v0, Lyads/oj6;->b:Lyads/k06;

    const-string v22, "audio/g711-alaw"

    const/16 v23, -0x1

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v11

    invoke-direct/range {v18 .. v23}, Lyads/nj6;-><init>(Lyads/zs2;Lyads/k06;Lyads/pj6;Ljava/lang/String;I)V

    move-object/from16 v1, v18

    iput-object v1, v0, Lyads/oj6;->e:Lyads/mj6;

    goto :goto_5

    :cond_9
    move-object/from16 v21, v11

    const/4 v2, 0x7

    if-ne v12, v2, :cond_a

    new-instance v18, Lyads/nj6;

    iget-object v1, v0, Lyads/oj6;->a:Lyads/zs2;

    iget-object v2, v0, Lyads/oj6;->b:Lyads/k06;

    const-string v22, "audio/g711-mlaw"

    const/16 v23, -0x1

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    invoke-direct/range {v18 .. v23}, Lyads/nj6;-><init>(Lyads/zs2;Lyads/k06;Lyads/pj6;Ljava/lang/String;I)V

    move-object/from16 v1, v18

    iput-object v1, v0, Lyads/oj6;->e:Lyads/mj6;

    goto :goto_5

    :cond_a
    if-eq v12, v5, :cond_d

    if-eq v12, v10, :cond_b

    const v2, 0xfffe

    if-eq v12, v2, :cond_d

    goto :goto_3

    :cond_b
    const/16 v2, 0x20

    if-ne v1, v2, :cond_c

    :goto_2
    move/from16 v23, v4

    goto :goto_4

    :cond_c
    :goto_3
    move/from16 v23, p2

    goto :goto_4

    :cond_d
    invoke-static {v1}, Lyads/u56;->b(I)I

    move-result v4

    goto :goto_2

    :goto_4
    if-eqz v23, :cond_e

    new-instance v18, Lyads/nj6;

    iget-object v1, v0, Lyads/oj6;->a:Lyads/zs2;

    iget-object v2, v0, Lyads/oj6;->b:Lyads/k06;

    const-string v22, "audio/raw"

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    invoke-direct/range {v18 .. v23}, Lyads/nj6;-><init>(Lyads/zs2;Lyads/k06;Lyads/pj6;Ljava/lang/String;I)V

    move-object/from16 v1, v18

    iput-object v1, v0, Lyads/oj6;->e:Lyads/mj6;

    :goto_5
    iput v10, v0, Lyads/oj6;->c:I

    return p2

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported WAV format type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyads/xs4;->a(Ljava/lang/String;)Lyads/xs4;

    move-result-object v0

    throw v0

    :cond_f
    move/from16 p2, v2

    invoke-static {v9, v8}, Lyads/vx4;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return p2

    :cond_10
    move/from16 p2, v2

    invoke-static {v14, v8}, Lyads/vx4;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return p2

    :cond_11
    move/from16 p2, v2

    invoke-static {}, Lud;->g()V

    return p2

    :cond_12
    move/from16 p2, v2

    new-instance v1, Lyads/os4;

    invoke-direct {v1, v9}, Lyads/os4;-><init>(I)V

    move-object/from16 v2, p1

    check-cast v2, Lyads/wk0;

    invoke-static {v2, v1}, Lyads/qj6;->a(Lyads/wk0;Lyads/os4;)Lyads/qj6;

    move-result-object v3

    iget v4, v3, Lyads/qj6;->a:I

    const v5, 0x64733634

    if-eq v4, v5, :cond_13

    move/from16 v10, p2

    iput v10, v2, Lyads/wk0;->f:I

    goto :goto_6

    :cond_13
    move/from16 v10, p2

    invoke-virtual {v2, v9, v10}, Lyads/wk0;->a(IZ)Z

    invoke-virtual {v1, v10}, Lyads/os4;->e(I)V

    iget-object v4, v1, Lyads/os4;->a:[B

    invoke-virtual {v2, v4, v10, v9, v10}, Lyads/wk0;->b([BIIZ)Z

    invoke-virtual {v1}, Lyads/os4;->d()J

    move-result-wide v7

    iget-wide v3, v3, Lyads/qj6;->b:J

    long-to-int v1, v3

    add-int/2addr v1, v9

    invoke-virtual {v2, v1}, Lyads/wk0;->a(I)V

    :goto_6
    iput-wide v7, v0, Lyads/oj6;->d:J

    iput v6, v0, Lyads/oj6;->c:I

    return v10

    :cond_14
    move v10, v2

    move-object/from16 v1, p1

    check-cast v1, Lyads/wk0;

    iget-wide v6, v1, Lyads/wk0;->d:J

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-nez v2, :cond_17

    iget v2, v0, Lyads/oj6;->f:I

    if-eq v2, v3, :cond_15

    invoke-virtual {v1, v2}, Lyads/wk0;->a(I)V

    iput v4, v0, Lyads/oj6;->c:I

    return v10

    :cond_15
    invoke-static {v1}, Lyads/rj6;->a(Lyads/wk0;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-wide v2, v1, Lyads/wk0;->d:J

    iget v4, v1, Lyads/wk0;->f:I

    int-to-long v6, v4

    add-long/2addr v6, v2

    sub-long/2addr v6, v2

    long-to-int v2, v6

    invoke-virtual {v1, v2}, Lyads/wk0;->a(I)V

    iput v5, v0, Lyads/oj6;->c:I

    return v10

    :cond_16
    const-string v0, "Unsupported or unrecognized wav file type."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return v10

    :cond_17
    invoke-static {}, Lud;->g()V

    return v10

    :cond_18
    move v10, v2

    invoke-static {}, Lud;->g()V

    return v10
.end method

.method public final a(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 584
    :goto_0
    iput p1, p0, Lyads/oj6;->c:I

    .line 585
    iget-object p0, p0, Lyads/oj6;->e:Lyads/mj6;

    if-eqz p0, :cond_1

    .line 586
    invoke-interface {p0, p3, p4}, Lyads/mj6;->a(J)V

    :cond_1
    return-void
.end method

.method public final a(Lyads/zs2;)V
    .locals 2

    .line 581
    iput-object p1, p0, Lyads/oj6;->a:Lyads/zs2;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 582
    invoke-interface {p1, v0, v1}, Lyads/zs2;->a(II)Lyads/k06;

    move-result-object v0

    iput-object v0, p0, Lyads/oj6;->b:Lyads/k06;

    .line 583
    invoke-interface {p1}, Lyads/zs2;->a()V

    return-void
.end method

.method public final a(Lyads/xs2;)Z
    .locals 0

    .line 580
    check-cast p1, Lyads/wk0;

    invoke-static {p1}, Lyads/rj6;->a(Lyads/wk0;)Z

    move-result p0

    return p0
.end method

.method public final release()V
    .locals 0

    return-void
.end method
