.class public final Lyads/py2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ws2;


# instance fields
.field public final a:Lyads/os4;

.field public final b:Lyads/os4;

.field public final c:Lyads/os4;

.field public final d:Lyads/os4;

.field public final e:Lyads/hd5;

.field public f:Lyads/zs2;

.field public g:I

.field public h:Z

.field public i:J

.field public j:I

.field public k:I

.field public l:I

.field public m:J

.field public n:Z

.field public o:Lyads/um;

.field public p:Lyads/df6;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/os4;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lyads/os4;-><init>(I)V

    iput-object v0, p0, Lyads/py2;->a:Lyads/os4;

    new-instance v0, Lyads/os4;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lyads/os4;-><init>(I)V

    iput-object v0, p0, Lyads/py2;->b:Lyads/os4;

    new-instance v0, Lyads/os4;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lyads/os4;-><init>(I)V

    iput-object v0, p0, Lyads/py2;->c:Lyads/os4;

    new-instance v0, Lyads/os4;

    invoke-direct {v0}, Lyads/os4;-><init>()V

    iput-object v0, p0, Lyads/py2;->d:Lyads/os4;

    new-instance v0, Lyads/hd5;

    invoke-direct {v0}, Lyads/hd5;-><init>()V

    iput-object v0, p0, Lyads/py2;->e:Lyads/hd5;

    const/4 v0, 0x1

    iput v0, p0, Lyads/py2;->g:I

    return-void
.end method

.method public static synthetic a()[Lyads/ws2;
    .locals 3

    .line 1167
    new-instance v0, Lyads/py2;

    invoke-direct {v0}, Lyads/py2;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lyads/ws2;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method


# virtual methods
.method public final a(Lyads/xs2;Lyads/qx4;)I
    .locals 30

    move-object/from16 v0, p0

    iget-object v1, v0, Lyads/py2;->f:Lyads/zs2;

    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    :cond_0
    :goto_0
    iget v1, v0, Lyads/py2;->g:I

    const/4 v3, 0x5

    const/16 v4, 0x9

    const/16 v5, 0x8

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v1, v8, :cond_25

    const/4 v9, 0x3

    if-eq v1, v7, :cond_24

    if-eq v1, v9, :cond_22

    if-ne v1, v6, :cond_21

    iget-boolean v1, v0, Lyads/py2;->h:Z

    const-wide/16 v12, 0x0

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_1

    const-wide/16 v16, 0x3e8

    iget-wide v10, v0, Lyads/py2;->i:J

    move/from16 p2, v9

    move-wide/from16 v18, v10

    iget-wide v9, v0, Lyads/py2;->m:J

    add-long v10, v18, v9

    :goto_1
    move-wide/from16 v19, v10

    goto :goto_2

    :cond_1
    move/from16 p2, v9

    const-wide/16 v16, 0x3e8

    iget-object v1, v0, Lyads/py2;->e:Lyads/hd5;

    iget-wide v9, v1, Lyads/hd5;->b:J

    cmp-long v1, v9, v14

    if-nez v1, :cond_2

    move-wide/from16 v19, v12

    goto :goto_2

    :cond_2
    iget-wide v10, v0, Lyads/py2;->m:J

    goto :goto_1

    :goto_2
    iget v1, v0, Lyads/py2;->k:I

    const/4 v9, 0x7

    if-ne v1, v5, :cond_e

    iget-object v10, v0, Lyads/py2;->o:Lyads/um;

    if-eqz v10, :cond_e

    iget-boolean v1, v0, Lyads/py2;->n:Z

    if-nez v1, :cond_3

    iget-object v1, v0, Lyads/py2;->f:Lyads/zs2;

    new-instance v3, Lyads/rh5;

    invoke-direct {v3, v14, v15, v12, v13}, Lyads/rh5;-><init>(JJ)V

    invoke-interface {v1, v3}, Lyads/zs2;->a(Lyads/sh5;)V

    iput-boolean v8, v0, Lyads/py2;->n:Z

    :cond_3
    iget-object v1, v0, Lyads/py2;->o:Lyads/um;

    move-object/from16 v3, p1

    check-cast v3, Lyads/wk0;

    invoke-virtual {v0, v3}, Lyads/py2;->a(Lyads/wk0;)Lyads/os4;

    move-result-object v3

    iget-boolean v4, v1, Lyads/um;->b:Z

    const/16 v10, 0xa

    if-nez v4, :cond_9

    invoke-virtual {v3}, Lyads/os4;->k()I

    move-result v4

    shr-int/lit8 v11, v4, 0x4

    and-int/lit8 v11, v11, 0xf

    iput v11, v1, Lyads/um;->d:I

    if-ne v11, v7, :cond_4

    shr-int/lit8 v4, v4, 0x2

    and-int/lit8 v4, v4, 0x3

    sget-object v5, Lyads/um;->e:[I

    aget v4, v5, v4

    new-instance v5, Lyads/uz2;

    invoke-direct {v5}, Lyads/uz2;-><init>()V

    const-string v9, "audio/mpeg"

    iput-object v9, v5, Lyads/uz2;->k:Ljava/lang/String;

    iput v8, v5, Lyads/uz2;->x:I

    iput v4, v5, Lyads/uz2;->y:I

    new-instance v4, Lyads/vz2;

    invoke-direct {v4, v5}, Lyads/vz2;-><init>(Lyads/uz2;)V

    iget-object v5, v1, Lyads/bv5;->a:Lyads/k06;

    invoke-interface {v5, v4}, Lyads/k06;->a(Lyads/vz2;)V

    iput-boolean v8, v1, Lyads/um;->c:Z

    goto :goto_5

    :cond_4
    if-eq v11, v9, :cond_7

    if-ne v11, v5, :cond_5

    goto :goto_3

    :cond_5
    if-ne v11, v10, :cond_6

    goto :goto_5

    :cond_6
    new-instance v0, Lyads/av5;

    iget v1, v1, Lyads/um;->d:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Audio format not supported: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lyads/av5;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_3
    if-ne v11, v9, :cond_8

    const-string v4, "audio/g711-alaw"

    goto :goto_4

    :cond_8
    const-string v4, "audio/g711-mlaw"

    :goto_4
    new-instance v5, Lyads/uz2;

    invoke-direct {v5}, Lyads/uz2;-><init>()V

    iput-object v4, v5, Lyads/uz2;->k:Ljava/lang/String;

    iput v8, v5, Lyads/uz2;->x:I

    const/16 v4, 0x1f40

    iput v4, v5, Lyads/uz2;->y:I

    new-instance v4, Lyads/vz2;

    invoke-direct {v4, v5}, Lyads/vz2;-><init>(Lyads/uz2;)V

    iget-object v5, v1, Lyads/bv5;->a:Lyads/k06;

    invoke-interface {v5, v4}, Lyads/k06;->a(Lyads/vz2;)V

    iput-boolean v8, v1, Lyads/um;->c:Z

    :goto_5
    iput-boolean v8, v1, Lyads/um;->b:Z

    goto :goto_6

    :cond_9
    iget v4, v3, Lyads/os4;->b:I

    add-int/2addr v4, v8

    invoke-virtual {v3, v4}, Lyads/os4;->e(I)V

    :goto_6
    iget v4, v1, Lyads/um;->d:I

    if-ne v4, v7, :cond_a

    iget v4, v3, Lyads/os4;->c:I

    iget v5, v3, Lyads/os4;->b:I

    sub-int/2addr v4, v5

    iget-object v5, v1, Lyads/bv5;->a:Lyads/k06;

    invoke-interface {v5, v4, v3}, Lyads/k06;->a(ILyads/os4;)V

    iget-object v1, v1, Lyads/bv5;->a:Lyads/k06;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v21, 0x1

    move-object/from16 v18, v1

    move/from16 v22, v4

    invoke-interface/range {v18 .. v24}, Lyads/k06;->a(JIIILyads/j06;)V

    :goto_7
    move v1, v8

    move v3, v1

    :goto_8
    move-wide/from16 v23, v14

    goto/16 :goto_f

    :cond_a
    invoke-virtual {v3}, Lyads/os4;->k()I

    move-result v4

    if-nez v4, :cond_c

    iget-boolean v5, v1, Lyads/um;->c:Z

    if-nez v5, :cond_c

    iget v4, v3, Lyads/os4;->c:I

    iget v5, v3, Lyads/os4;->b:I

    sub-int/2addr v4, v5

    new-array v5, v4, [B

    invoke-virtual {v3, v5, v2, v4}, Lyads/os4;->a([BII)V

    new-instance v3, Lyads/ns4;

    invoke-direct {v3, v5}, Lyads/ns4;-><init>([B)V

    invoke-static {v3, v2}, Lyads/b;->a(Lyads/ns4;Z)Lyads/a;

    move-result-object v3

    new-instance v4, Lyads/uz2;

    invoke-direct {v4}, Lyads/uz2;-><init>()V

    const-string v9, "audio/mp4a-latm"

    iput-object v9, v4, Lyads/uz2;->k:Ljava/lang/String;

    iget-object v9, v3, Lyads/a;->c:Ljava/lang/String;

    iput-object v9, v4, Lyads/uz2;->h:Ljava/lang/String;

    iget v9, v3, Lyads/a;->b:I

    iput v9, v4, Lyads/uz2;->x:I

    iget v3, v3, Lyads/a;->a:I

    iput v3, v4, Lyads/uz2;->y:I

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v4, Lyads/uz2;->m:Ljava/util/List;

    new-instance v3, Lyads/vz2;

    invoke-direct {v3, v4}, Lyads/vz2;-><init>(Lyads/uz2;)V

    iget-object v4, v1, Lyads/bv5;->a:Lyads/k06;

    invoke-interface {v4, v3}, Lyads/k06;->a(Lyads/vz2;)V

    iput-boolean v8, v1, Lyads/um;->c:Z

    :cond_b
    :goto_9
    move v1, v2

    move v3, v8

    goto :goto_8

    :cond_c
    iget v5, v1, Lyads/um;->d:I

    if-ne v5, v10, :cond_d

    if-ne v4, v8, :cond_b

    :cond_d
    iget v4, v3, Lyads/os4;->c:I

    iget v5, v3, Lyads/os4;->b:I

    sub-int/2addr v4, v5

    iget-object v5, v1, Lyads/bv5;->a:Lyads/k06;

    invoke-interface {v5, v4, v3}, Lyads/k06;->a(ILyads/os4;)V

    iget-object v1, v1, Lyads/bv5;->a:Lyads/k06;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v21, 0x1

    move-object/from16 v18, v1

    move/from16 v22, v4

    invoke-interface/range {v18 .. v24}, Lyads/k06;->a(JIIILyads/j06;)V

    goto :goto_7

    :cond_e
    if-ne v1, v4, :cond_15

    iget-object v4, v0, Lyads/py2;->p:Lyads/df6;

    if-eqz v4, :cond_15

    iget-boolean v1, v0, Lyads/py2;->n:Z

    if-nez v1, :cond_f

    iget-object v1, v0, Lyads/py2;->f:Lyads/zs2;

    new-instance v4, Lyads/rh5;

    invoke-direct {v4, v14, v15, v12, v13}, Lyads/rh5;-><init>(JJ)V

    invoke-interface {v1, v4}, Lyads/zs2;->a(Lyads/sh5;)V

    iput-boolean v8, v0, Lyads/py2;->n:Z

    :cond_f
    iget-object v1, v0, Lyads/py2;->p:Lyads/df6;

    move-object/from16 v4, p1

    check-cast v4, Lyads/wk0;

    invoke-virtual {v0, v4}, Lyads/py2;->a(Lyads/wk0;)Lyads/os4;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Lyads/os4;->k()I

    move-result v10

    shr-int/lit8 v11, v10, 0x4

    and-int/lit8 v11, v11, 0xf

    and-int/lit8 v10, v10, 0xf

    if-ne v10, v9, :cond_14

    iput v11, v1, Lyads/df6;->g:I

    if-eq v11, v3, :cond_b

    invoke-virtual {v4}, Lyads/os4;->k()I

    move-result v3

    iget-object v9, v4, Lyads/os4;->a:[B

    iget v10, v4, Lyads/os4;->b:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v4, Lyads/os4;->b:I

    aget-byte v12, v9, v10

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    shr-int/2addr v12, v5

    add-int/lit8 v13, v10, 0x2

    iput v13, v4, Lyads/os4;->b:I

    aget-byte v11, v9, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v5, v11, 0x8

    or-int/2addr v5, v12

    add-int/lit8 v10, v10, 0x3

    iput v10, v4, Lyads/os4;->b:I

    aget-byte v9, v9, v13

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v5, v9

    int-to-long v11, v5

    mul-long v11, v11, v16

    add-long v24, v11, v19

    if-nez v3, :cond_10

    iget-boolean v5, v1, Lyads/df6;->e:Z

    if-nez v5, :cond_10

    new-instance v3, Lyads/os4;

    iget v5, v4, Lyads/os4;->c:I

    sub-int/2addr v5, v10

    new-array v5, v5, [B

    invoke-direct {v3, v5}, Lyads/os4;-><init>([B)V

    iget v9, v4, Lyads/os4;->c:I

    iget v10, v4, Lyads/os4;->b:I

    sub-int/2addr v9, v10

    invoke-virtual {v4, v5, v2, v9}, Lyads/os4;->a([BII)V

    invoke-static {v3}, Lyads/dn;->a(Lyads/os4;)Lyads/dn;

    move-result-object v3

    iget v4, v3, Lyads/dn;->b:I

    iput v4, v1, Lyads/df6;->d:I

    new-instance v4, Lyads/uz2;

    invoke-direct {v4}, Lyads/uz2;-><init>()V

    const-string v5, "video/avc"

    iput-object v5, v4, Lyads/uz2;->k:Ljava/lang/String;

    iget-object v5, v3, Lyads/dn;->f:Ljava/lang/String;

    iput-object v5, v4, Lyads/uz2;->h:Ljava/lang/String;

    iget v5, v3, Lyads/dn;->c:I

    iput v5, v4, Lyads/uz2;->p:I

    iget v5, v3, Lyads/dn;->d:I

    iput v5, v4, Lyads/uz2;->q:I

    iget v5, v3, Lyads/dn;->e:F

    iput v5, v4, Lyads/uz2;->t:F

    iget-object v3, v3, Lyads/dn;->a:Ljava/util/ArrayList;

    iput-object v3, v4, Lyads/uz2;->m:Ljava/util/List;

    new-instance v3, Lyads/vz2;

    invoke-direct {v3, v4}, Lyads/vz2;-><init>(Lyads/uz2;)V

    iget-object v4, v1, Lyads/bv5;->a:Lyads/k06;

    invoke-interface {v4, v3}, Lyads/k06;->a(Lyads/vz2;)V

    iput-boolean v8, v1, Lyads/df6;->e:Z

    goto/16 :goto_9

    :cond_10
    if-ne v3, v8, :cond_b

    iget-boolean v3, v1, Lyads/df6;->e:Z

    if-eqz v3, :cond_b

    iget v3, v1, Lyads/df6;->g:I

    if-ne v3, v8, :cond_11

    move/from16 v26, v8

    goto :goto_a

    :cond_11
    move/from16 v26, v2

    :goto_a
    iget-boolean v3, v1, Lyads/df6;->f:Z

    if-nez v3, :cond_12

    if-nez v26, :cond_12

    goto/16 :goto_9

    :cond_12
    iget-object v3, v1, Lyads/df6;->c:Lyads/os4;

    iget-object v3, v3, Lyads/os4;->a:[B

    aput-byte v2, v3, v2

    aput-byte v2, v3, v8

    aput-byte v2, v3, v7

    iget v3, v1, Lyads/df6;->d:I

    rsub-int/lit8 v3, v3, 0x4

    move/from16 v27, v2

    :goto_b
    iget v5, v4, Lyads/os4;->c:I

    iget v9, v4, Lyads/os4;->b:I

    sub-int/2addr v5, v9

    if-lez v5, :cond_13

    iget-object v5, v1, Lyads/df6;->c:Lyads/os4;

    iget-object v5, v5, Lyads/os4;->a:[B

    iget v9, v1, Lyads/df6;->d:I

    invoke-virtual {v4, v5, v3, v9}, Lyads/os4;->a([BII)V

    iget-object v5, v1, Lyads/df6;->c:Lyads/os4;

    invoke-virtual {v5, v2}, Lyads/os4;->e(I)V

    iget-object v5, v1, Lyads/df6;->c:Lyads/os4;

    invoke-virtual {v5}, Lyads/os4;->n()I

    move-result v5

    iget-object v9, v1, Lyads/df6;->b:Lyads/os4;

    invoke-virtual {v9, v2}, Lyads/os4;->e(I)V

    iget-object v9, v1, Lyads/bv5;->a:Lyads/k06;

    iget-object v10, v1, Lyads/df6;->b:Lyads/os4;

    invoke-interface {v9, v6, v10}, Lyads/k06;->a(ILyads/os4;)V

    add-int/lit8 v27, v27, 0x4

    iget-object v9, v1, Lyads/bv5;->a:Lyads/k06;

    invoke-interface {v9, v5, v4}, Lyads/k06;->a(ILyads/os4;)V

    add-int v27, v27, v5

    goto :goto_b

    :cond_13
    iget-object v3, v1, Lyads/bv5;->a:Lyads/k06;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v23, v3

    invoke-interface/range {v23 .. v29}, Lyads/k06;->a(JIIILyads/j06;)V

    iput-boolean v8, v1, Lyads/df6;->f:Z

    goto/16 :goto_7

    :cond_14
    new-instance v0, Lyads/av5;

    const-string v1, "Video format not supported: "

    invoke-static {v10, v1}, Lyads/vx4;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lyads/av5;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    const/16 v3, 0x12

    if-ne v1, v3, :cond_1e

    iget-boolean v1, v0, Lyads/py2;->n:Z

    if-nez v1, :cond_1e

    iget-object v1, v0, Lyads/py2;->e:Lyads/hd5;

    move-object/from16 v3, p1

    check-cast v3, Lyads/wk0;

    invoke-virtual {v0, v3}, Lyads/py2;->a(Lyads/wk0;)Lyads/os4;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Lyads/os4;->k()I

    move-result v4

    if-eq v4, v7, :cond_17

    :cond_16
    :goto_c
    move-wide/from16 v23, v14

    goto/16 :goto_e

    :cond_17
    invoke-static {v3}, Lyads/hd5;->b(Lyads/os4;)Ljava/lang/String;

    move-result-object v4

    const-string v9, "onMetaData"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    goto :goto_c

    :cond_18
    iget v4, v3, Lyads/os4;->c:I

    iget v9, v3, Lyads/os4;->b:I

    sub-int/2addr v4, v9

    if-nez v4, :cond_19

    goto :goto_c

    :cond_19
    invoke-virtual {v3}, Lyads/os4;->k()I

    move-result v4

    if-eq v4, v5, :cond_1a

    goto :goto_c

    :cond_1a
    invoke-static {v3}, Lyads/hd5;->a(Lyads/os4;)Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "duration"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/Double;

    const-wide v9, 0x412e848000000000L    # 1000000.0

    if-eqz v5, :cond_1b

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/16 v11, 0x0

    cmpl-double v11, v4, v11

    if-lez v11, :cond_1b

    mul-double/2addr v4, v9

    double-to-long v4, v4

    iput-wide v4, v1, Lyads/hd5;->b:J

    :cond_1b
    const-string v4, "keyframes"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/util/Map;

    if-eqz v4, :cond_16

    check-cast v3, Ljava/util/Map;

    const-string v4, "filepositions"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "times"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v4, Ljava/util/List;

    if-eqz v5, :cond_16

    instance-of v5, v3, Ljava/util/List;

    if-eqz v5, :cond_16

    check-cast v4, Ljava/util/List;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v11, v5, [J

    iput-object v11, v1, Lyads/hd5;->c:[J

    new-array v11, v5, [J

    iput-object v11, v1, Lyads/hd5;->d:[J

    move v11, v2

    :goto_d
    if-ge v11, v5, :cond_16

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-wide/from16 v16, v9

    instance-of v9, v13, Ljava/lang/Double;

    if-eqz v9, :cond_1c

    instance-of v9, v12, Ljava/lang/Double;

    if-eqz v9, :cond_1c

    iget-object v9, v1, Lyads/hd5;->c:[J

    check-cast v13, Ljava/lang/Double;

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    move-wide/from16 v23, v14

    mul-double v14, v18, v16

    double-to-long v13, v14

    aput-wide v13, v9, v11

    iget-object v9, v1, Lyads/hd5;->d:[J

    check-cast v12, Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->longValue()J

    move-result-wide v12

    aput-wide v12, v9, v11

    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v9, v16

    move-wide/from16 v14, v23

    goto :goto_d

    :cond_1c
    move-wide/from16 v23, v14

    new-array v3, v2, [J

    iput-object v3, v1, Lyads/hd5;->c:[J

    new-array v3, v2, [J

    iput-object v3, v1, Lyads/hd5;->d:[J

    :goto_e
    iget-object v1, v0, Lyads/py2;->e:Lyads/hd5;

    iget-wide v3, v1, Lyads/hd5;->b:J

    cmp-long v5, v3, v23

    if-eqz v5, :cond_1d

    iget-object v5, v0, Lyads/py2;->f:Lyads/zs2;

    new-instance v9, Lyads/nf3;

    iget-object v10, v1, Lyads/hd5;->d:[J

    iget-object v1, v1, Lyads/hd5;->c:[J

    invoke-direct {v9, v3, v4, v10, v1}, Lyads/nf3;-><init>(J[J[J)V

    invoke-interface {v5, v9}, Lyads/zs2;->a(Lyads/sh5;)V

    iput-boolean v8, v0, Lyads/py2;->n:Z

    :cond_1d
    move v1, v2

    move v3, v8

    goto :goto_f

    :cond_1e
    move-wide/from16 v23, v14

    iget v1, v0, Lyads/py2;->l:I

    move-object/from16 v3, p1

    check-cast v3, Lyads/wk0;

    invoke-virtual {v3, v1}, Lyads/wk0;->a(I)V

    move v1, v2

    move v3, v1

    :goto_f
    iget-boolean v4, v0, Lyads/py2;->h:Z

    if-nez v4, :cond_20

    if-eqz v1, :cond_20

    iput-boolean v8, v0, Lyads/py2;->h:Z

    iget-object v1, v0, Lyads/py2;->e:Lyads/hd5;

    iget-wide v4, v1, Lyads/hd5;->b:J

    cmp-long v1, v4, v23

    if-nez v1, :cond_1f

    iget-wide v4, v0, Lyads/py2;->m:J

    neg-long v12, v4

    goto :goto_10

    :cond_1f
    const-wide/16 v12, 0x0

    :goto_10
    iput-wide v12, v0, Lyads/py2;->i:J

    :cond_20
    iput v6, v0, Lyads/py2;->j:I

    iput v7, v0, Lyads/py2;->g:I

    if-eqz v3, :cond_0

    return v2

    :cond_21
    invoke-static {}, Lud;->g()V

    return v2

    :cond_22
    move/from16 p2, v9

    const-wide/16 v16, 0x3e8

    iget-object v1, v0, Lyads/py2;->c:Lyads/os4;

    iget-object v1, v1, Lyads/os4;->a:[B

    move-object/from16 v3, p1

    check-cast v3, Lyads/wk0;

    const/16 v4, 0xb

    invoke-virtual {v3, v1, v2, v4, v8}, Lyads/wk0;->a([BIIZ)Z

    move-result v1

    if-nez v1, :cond_23

    goto :goto_11

    :cond_23
    iget-object v1, v0, Lyads/py2;->c:Lyads/os4;

    invoke-virtual {v1, v2}, Lyads/os4;->e(I)V

    iget-object v1, v0, Lyads/py2;->c:Lyads/os4;

    invoke-virtual {v1}, Lyads/os4;->k()I

    move-result v1

    iput v1, v0, Lyads/py2;->k:I

    iget-object v1, v0, Lyads/py2;->c:Lyads/os4;

    invoke-virtual {v1}, Lyads/os4;->m()I

    move-result v1

    iput v1, v0, Lyads/py2;->l:I

    iget-object v1, v0, Lyads/py2;->c:Lyads/os4;

    invoke-virtual {v1}, Lyads/os4;->m()I

    move-result v1

    int-to-long v3, v1

    iput-wide v3, v0, Lyads/py2;->m:J

    iget-object v1, v0, Lyads/py2;->c:Lyads/os4;

    invoke-virtual {v1}, Lyads/os4;->k()I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    int-to-long v3, v1

    iget-wide v7, v0, Lyads/py2;->m:J

    or-long/2addr v3, v7

    mul-long v3, v3, v16

    iput-wide v3, v0, Lyads/py2;->m:J

    iget-object v1, v0, Lyads/py2;->c:Lyads/os4;

    iget v3, v1, Lyads/os4;->b:I

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v1, v3}, Lyads/os4;->e(I)V

    iput v6, v0, Lyads/py2;->g:I

    goto/16 :goto_0

    :cond_24
    move/from16 p2, v9

    iget v1, v0, Lyads/py2;->j:I

    move-object/from16 v3, p1

    check-cast v3, Lyads/wk0;

    invoke-virtual {v3, v1}, Lyads/wk0;->a(I)V

    iput v2, v0, Lyads/py2;->j:I

    move/from16 v1, p2

    iput v1, v0, Lyads/py2;->g:I

    goto/16 :goto_0

    :cond_25
    iget-object v1, v0, Lyads/py2;->b:Lyads/os4;

    iget-object v1, v1, Lyads/os4;->a:[B

    move-object/from16 v9, p1

    check-cast v9, Lyads/wk0;

    invoke-virtual {v9, v1, v2, v4, v8}, Lyads/wk0;->a([BIIZ)Z

    move-result v1

    if-nez v1, :cond_26

    :goto_11
    const/4 v0, -0x1

    return v0

    :cond_26
    iget-object v1, v0, Lyads/py2;->b:Lyads/os4;

    invoke-virtual {v1, v2}, Lyads/os4;->e(I)V

    iget-object v1, v0, Lyads/py2;->b:Lyads/os4;

    iget v9, v1, Lyads/os4;->b:I

    add-int/2addr v9, v6

    invoke-virtual {v1, v9}, Lyads/os4;->e(I)V

    iget-object v1, v0, Lyads/py2;->b:Lyads/os4;

    invoke-virtual {v1}, Lyads/os4;->k()I

    move-result v1

    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_27

    move v6, v8

    goto :goto_12

    :cond_27
    move v6, v2

    :goto_12
    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_28

    move v1, v8

    goto :goto_13

    :cond_28
    move v1, v2

    :goto_13
    if-eqz v6, :cond_29

    iget-object v6, v0, Lyads/py2;->o:Lyads/um;

    if-nez v6, :cond_29

    new-instance v6, Lyads/um;

    iget-object v9, v0, Lyads/py2;->f:Lyads/zs2;

    invoke-interface {v9, v5, v8}, Lyads/zs2;->a(II)Lyads/k06;

    move-result-object v5

    invoke-direct {v6, v5}, Lyads/um;-><init>(Lyads/k06;)V

    iput-object v6, v0, Lyads/py2;->o:Lyads/um;

    :cond_29
    if-eqz v1, :cond_2a

    iget-object v1, v0, Lyads/py2;->p:Lyads/df6;

    if-nez v1, :cond_2a

    new-instance v1, Lyads/df6;

    iget-object v5, v0, Lyads/py2;->f:Lyads/zs2;

    invoke-interface {v5, v4, v7}, Lyads/zs2;->a(II)Lyads/k06;

    move-result-object v4

    invoke-direct {v1, v4}, Lyads/df6;-><init>(Lyads/k06;)V

    iput-object v1, v0, Lyads/py2;->p:Lyads/df6;

    :cond_2a
    iget-object v1, v0, Lyads/py2;->f:Lyads/zs2;

    invoke-interface {v1}, Lyads/zs2;->a()V

    iget-object v1, v0, Lyads/py2;->b:Lyads/os4;

    invoke-virtual {v1}, Lyads/os4;->a()I

    move-result v1

    sub-int/2addr v1, v3

    iput v1, v0, Lyads/py2;->j:I

    iput v7, v0, Lyads/py2;->g:I

    goto/16 :goto_0

    :cond_2b
    invoke-static {}, Lud;->g()V

    return v2
.end method

.method public final a(Lyads/wk0;)Lyads/os4;
    .locals 5

    .line 1168
    iget v0, p0, Lyads/py2;->l:I

    iget-object v1, p0, Lyads/py2;->d:Lyads/os4;

    .line 1169
    iget-object v2, v1, Lyads/os4;->a:[B

    .line 1170
    array-length v3, v2

    const/4 v4, 0x0

    if-le v0, v3, :cond_0

    .line 1171
    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    .line 1172
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    .line 1173
    iput-object v0, v1, Lyads/os4;->a:[B

    .line 1174
    iput v4, v1, Lyads/os4;->c:I

    .line 1175
    iput v4, v1, Lyads/os4;->b:I

    goto :goto_0

    .line 1176
    :cond_0
    invoke-virtual {v1, v4}, Lyads/os4;->e(I)V

    .line 1177
    :goto_0
    iget-object v0, p0, Lyads/py2;->d:Lyads/os4;

    iget v1, p0, Lyads/py2;->l:I

    invoke-virtual {v0, v1}, Lyads/os4;->d(I)V

    .line 1178
    iget-object v0, p0, Lyads/py2;->d:Lyads/os4;

    .line 1179
    iget-object v0, v0, Lyads/os4;->a:[B

    .line 1180
    iget v1, p0, Lyads/py2;->l:I

    .line 1181
    invoke-virtual {p1, v0, v4, v1, v4}, Lyads/wk0;->a([BIIZ)Z

    .line 1182
    iget-object p0, p0, Lyads/py2;->d:Lyads/os4;

    return-object p0
.end method

.method public final a(JJ)V
    .locals 0

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 1163
    iput p1, p0, Lyads/py2;->g:I

    .line 1164
    iput-boolean p2, p0, Lyads/py2;->h:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 1165
    iput p1, p0, Lyads/py2;->g:I

    .line 1166
    :goto_0
    iput p2, p0, Lyads/py2;->j:I

    return-void
.end method

.method public final a(Lyads/zs2;)V
    .locals 0

    .line 1162
    iput-object p1, p0, Lyads/py2;->f:Lyads/zs2;

    return-void
.end method

.method public final a(Lyads/xs2;)Z
    .locals 3

    .line 1139
    iget-object v0, p0, Lyads/py2;->a:Lyads/os4;

    .line 1140
    iget-object v0, v0, Lyads/os4;->a:[B

    .line 1141
    check-cast p1, Lyads/wk0;

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 1142
    invoke-virtual {p1, v0, v1, v2, v1}, Lyads/wk0;->b([BIIZ)Z

    .line 1143
    iget-object v0, p0, Lyads/py2;->a:Lyads/os4;

    invoke-virtual {v0, v1}, Lyads/os4;->e(I)V

    .line 1144
    iget-object v0, p0, Lyads/py2;->a:Lyads/os4;

    invoke-virtual {v0}, Lyads/os4;->m()I

    move-result v0

    const v2, 0x464c56

    if-eq v0, v2, :cond_0

    return v1

    .line 1145
    :cond_0
    iget-object v0, p0, Lyads/py2;->a:Lyads/os4;

    .line 1146
    iget-object v0, v0, Lyads/os4;->a:[B

    const/4 v2, 0x2

    .line 1147
    invoke-virtual {p1, v0, v1, v2, v1}, Lyads/wk0;->b([BIIZ)Z

    .line 1148
    iget-object v0, p0, Lyads/py2;->a:Lyads/os4;

    invoke-virtual {v0, v1}, Lyads/os4;->e(I)V

    .line 1149
    iget-object v0, p0, Lyads/py2;->a:Lyads/os4;

    invoke-virtual {v0}, Lyads/os4;->p()I

    move-result v0

    and-int/lit16 v0, v0, 0xfa

    if-eqz v0, :cond_1

    return v1

    .line 1150
    :cond_1
    iget-object v0, p0, Lyads/py2;->a:Lyads/os4;

    .line 1151
    iget-object v0, v0, Lyads/os4;->a:[B

    const/4 v2, 0x4

    .line 1152
    invoke-virtual {p1, v0, v1, v2, v1}, Lyads/wk0;->b([BIIZ)Z

    .line 1153
    iget-object v0, p0, Lyads/py2;->a:Lyads/os4;

    invoke-virtual {v0, v1}, Lyads/os4;->e(I)V

    .line 1154
    iget-object v0, p0, Lyads/py2;->a:Lyads/os4;

    invoke-virtual {v0}, Lyads/os4;->a()I

    move-result v0

    .line 1155
    iput v1, p1, Lyads/wk0;->f:I

    .line 1156
    invoke-virtual {p1, v0, v1}, Lyads/wk0;->a(IZ)Z

    .line 1157
    iget-object v0, p0, Lyads/py2;->a:Lyads/os4;

    .line 1158
    iget-object v0, v0, Lyads/os4;->a:[B

    .line 1159
    invoke-virtual {p1, v0, v1, v2, v1}, Lyads/wk0;->b([BIIZ)Z

    .line 1160
    iget-object p1, p0, Lyads/py2;->a:Lyads/os4;

    invoke-virtual {p1, v1}, Lyads/os4;->e(I)V

    .line 1161
    iget-object p0, p0, Lyads/py2;->a:Lyads/os4;

    invoke-virtual {p0}, Lyads/os4;->a()I

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public final release()V
    .locals 0

    return-void
.end method
