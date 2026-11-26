.class public final Lyads/ua4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ws2;


# instance fields
.field public final a:Lyads/os4;

.field public final b:Lyads/ab4;

.field public final c:Lyads/f23;

.field public final d:Lyads/ob3;

.field public final e:Lyads/cm2;

.field public f:Lyads/zs2;

.field public g:Lyads/k06;

.field public h:Lyads/k06;

.field public i:I

.field public j:Lyads/h84;

.field public k:J

.field public l:J

.field public m:J

.field public n:I

.field public o:Lyads/wh5;

.field public p:Z

.field public q:Z

.field public r:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/os4;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lyads/os4;-><init>(I)V

    iput-object v0, p0, Lyads/ua4;->a:Lyads/os4;

    new-instance v0, Lyads/ab4;

    invoke-direct {v0}, Lyads/ab4;-><init>()V

    iput-object v0, p0, Lyads/ua4;->b:Lyads/ab4;

    new-instance v0, Lyads/f23;

    invoke-direct {v0}, Lyads/f23;-><init>()V

    iput-object v0, p0, Lyads/ua4;->c:Lyads/f23;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lyads/ua4;->k:J

    new-instance v0, Lyads/ob3;

    invoke-direct {v0}, Lyads/ob3;-><init>()V

    iput-object v0, p0, Lyads/ua4;->d:Lyads/ob3;

    new-instance v0, Lyads/cm2;

    invoke-direct {v0}, Lyads/cm2;-><init>()V

    iput-object v0, p0, Lyads/ua4;->e:Lyads/cm2;

    iput-object v0, p0, Lyads/ua4;->h:Lyads/k06;

    return-void
.end method

.method public static a()[Lyads/ws2;
    .locals 3

    .line 1164
    new-instance v0, Lyads/ua4;

    .line 1165
    invoke-direct {v0}, Lyads/ua4;-><init>()V

    const/4 v1, 0x1

    .line 1166
    new-array v1, v1, [Lyads/ws2;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method


# virtual methods
.method public final a(Lyads/xs2;Lyads/qx4;)I
    .locals 41

    move-object/from16 v0, p0

    iget-object v2, v0, Lyads/ua4;->g:Lyads/k06;

    const/4 v3, 0x0

    if-eqz v2, :cond_2f

    sget v2, Lyads/u56;->a:I

    iget v2, v0, Lyads/ua4;->i:I

    if-nez v2, :cond_0

    :try_start_0
    move-object/from16 v2, p1

    check-cast v2, Lyads/wk0;

    invoke-virtual {v0, v2, v3}, Lyads/ua4;->a(Lyads/wk0;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/32 v16, 0xf4240

    goto/16 :goto_1a

    :cond_0
    :goto_0
    iget-object v2, v0, Lyads/ua4;->o:Lyads/wh5;

    const/4 v12, 0x1

    if-nez v2, :cond_24

    new-instance v2, Lyads/os4;

    iget-object v13, v0, Lyads/ua4;->b:Lyads/ab4;

    iget v13, v13, Lyads/ab4;->c:I

    invoke-direct {v2, v13}, Lyads/os4;-><init>(I)V

    iget-object v13, v2, Lyads/os4;->a:[B

    iget-object v14, v0, Lyads/ua4;->b:Lyads/ab4;

    iget v14, v14, Lyads/ab4;->c:I

    move-object/from16 v15, p1

    check-cast v15, Lyads/wk0;

    invoke-virtual {v15, v13, v3, v14, v3}, Lyads/wk0;->b([BIIZ)Z

    iget-object v13, v0, Lyads/ua4;->b:Lyads/ab4;

    iget v14, v13, Lyads/ab4;->a:I

    and-int/2addr v14, v12

    iget v13, v13, Lyads/ab4;->e:I

    const-wide/32 v16, 0xf4240

    const/16 v4, 0x24

    if-eqz v14, :cond_1

    if-eq v13, v12, :cond_2

    move v5, v4

    goto :goto_1

    :cond_1
    if-eq v13, v12, :cond_3

    :cond_2
    const/16 v5, 0x15

    goto :goto_1

    :cond_3
    const/16 v5, 0xd

    :goto_1
    iget v13, v2, Lyads/os4;->c:I

    add-int/lit8 v14, v5, 0x4

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    const v7, 0x58696e67

    const v8, 0x56425249

    const-wide/16 v20, 0x0

    const v9, 0x496e666f

    if-lt v13, v14, :cond_4

    invoke-virtual {v2, v5}, Lyads/os4;->e(I)V

    invoke-virtual {v2}, Lyads/os4;->a()I

    move-result v10

    if-eq v10, v7, :cond_6

    if-ne v10, v9, :cond_4

    goto :goto_2

    :cond_4
    iget v10, v2, Lyads/os4;->c:I

    const/16 v13, 0x28

    if-lt v10, v13, :cond_5

    invoke-virtual {v2, v4}, Lyads/os4;->e(I)V

    invoke-virtual {v2}, Lyads/os4;->a()I

    move-result v4

    if-ne v4, v8, :cond_5

    move v10, v8

    goto :goto_2

    :cond_5
    move v10, v3

    :cond_6
    :goto_2
    const-string v4, ", "

    const/16 p2, 0x0

    const-wide/16 v22, -0x1

    if-eq v10, v7, :cond_7

    if-ne v10, v9, :cond_8

    :cond_7
    move-object/from16 v27, v2

    move-object v2, v4

    move-object v13, v15

    goto/16 :goto_8

    :cond_8
    if-ne v10, v8, :cond_11

    iget-wide v7, v15, Lyads/wk0;->c:J

    iget-wide v9, v15, Lyads/wk0;->d:J

    iget-object v5, v0, Lyads/ua4;->b:Lyads/ab4;

    iget v14, v2, Lyads/os4;->b:I

    add-int/lit8 v14, v14, 0xa

    invoke-virtual {v2, v14}, Lyads/os4;->e(I)V

    invoke-virtual {v2}, Lyads/os4;->a()I

    move-result v14

    if-gtz v14, :cond_9

    move-object v13, v15

    goto :goto_5

    :cond_9
    iget v6, v5, Lyads/ab4;->d:I

    move-object/from16 v31, v4

    int-to-long v3, v14

    const/16 v14, 0x7d00

    if-lt v6, v14, :cond_a

    const/16 v14, 0x480

    goto :goto_3

    :cond_a
    const/16 v14, 0x240

    :goto_3
    int-to-long v13, v14

    mul-long v26, v13, v16

    int-to-long v13, v6

    move-wide/from16 v24, v3

    move-wide/from16 v28, v13

    invoke-static/range {v24 .. v29}, Lyads/u56;->a(JJJ)J

    move-result-wide v35

    invoke-virtual {v2}, Lyads/os4;->p()I

    move-result v3

    invoke-virtual {v2}, Lyads/os4;->p()I

    move-result v4

    invoke-virtual {v2}, Lyads/os4;->p()I

    move-result v6

    iget v13, v2, Lyads/os4;->b:I

    const/4 v14, 0x2

    add-int/2addr v13, v14

    invoke-virtual {v2, v13}, Lyads/os4;->e(I)V

    iget v5, v5, Lyads/ab4;->c:I

    move-object v13, v15

    int-to-long v14, v5

    add-long/2addr v14, v9

    new-array v5, v3, [J

    new-array v11, v3, [J

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v3, :cond_f

    move-object/from16 v27, v2

    int-to-long v1, v12

    mul-long v1, v1, v35

    move-wide/from16 v28, v1

    int-to-long v1, v3

    div-long v1, v28, v1

    aput-wide v1, v5, v12

    invoke-static {v9, v10, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    aput-wide v1, v11, v12

    const/4 v1, 0x1

    if-eq v6, v1, :cond_e

    const/4 v1, 0x2

    if-eq v6, v1, :cond_d

    const/4 v2, 0x3

    if-eq v6, v2, :cond_c

    const/4 v2, 0x4

    if-eq v6, v2, :cond_b

    :goto_5
    move-object/from16 v32, p2

    goto :goto_7

    :cond_b
    invoke-virtual/range {v27 .. v27}, Lyads/os4;->n()I

    move-result v2

    goto :goto_6

    :cond_c
    invoke-virtual/range {v27 .. v27}, Lyads/os4;->m()I

    move-result v2

    goto :goto_6

    :cond_d
    invoke-virtual/range {v27 .. v27}, Lyads/os4;->p()I

    move-result v2

    goto :goto_6

    :cond_e
    const/4 v1, 0x2

    invoke-virtual/range {v27 .. v27}, Lyads/os4;->k()I

    move-result v2

    :goto_6
    int-to-long v1, v2

    move-wide/from16 v28, v1

    int-to-long v1, v4

    mul-long v1, v1, v28

    add-long/2addr v9, v1

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, v27

    goto :goto_4

    :cond_f
    cmp-long v1, v7, v22

    if-eqz v1, :cond_10

    cmp-long v1, v7, v9

    if-eqz v1, :cond_10

    const-string v1, "VBRI data size mismatch: "

    move-object/from16 v2, v31

    invoke-static {v7, v8, v1, v2}, Lxp;->f(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VbriSeeker"

    invoke-static {v2, v1}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    new-instance v32, Lyads/x86;

    move-object/from16 v33, v5

    move-wide/from16 v37, v9

    move-object/from16 v34, v11

    invoke-direct/range {v32 .. v38}, Lyads/x86;-><init>([J[JJJ)V

    :goto_7
    iget-object v1, v0, Lyads/ua4;->b:Lyads/ab4;

    iget v1, v1, Lyads/ab4;->c:I

    invoke-virtual {v13, v1}, Lyads/wk0;->a(I)V

    goto/16 :goto_d

    :cond_11
    move v1, v3

    move-object v13, v15

    iput v1, v13, Lyads/wk0;->f:I

    move-object/from16 v32, p2

    goto/16 :goto_d

    :goto_8
    iget-wide v3, v13, Lyads/wk0;->c:J

    iget-wide v6, v13, Lyads/wk0;->d:J

    iget-object v1, v0, Lyads/ua4;->b:Lyads/ab4;

    iget v8, v1, Lyads/ab4;->g:I

    iget v11, v1, Lyads/ab4;->d:I

    invoke-virtual/range {v27 .. v27}, Lyads/os4;->a()I

    move-result v12

    and-int/lit8 v14, v12, 0x1

    const/4 v15, 0x1

    if-ne v14, v15, :cond_12

    invoke-virtual/range {v27 .. v27}, Lyads/os4;->n()I

    move-result v14

    if-nez v14, :cond_13

    :cond_12
    move/from16 v28, v10

    goto :goto_a

    :cond_13
    int-to-long v14, v14

    move/from16 v28, v10

    int-to-long v9, v8

    mul-long v34, v9, v16

    int-to-long v8, v11

    move-wide/from16 v36, v8

    move-wide/from16 v32, v14

    invoke-static/range {v32 .. v37}, Lyads/u56;->a(JJJ)J

    move-result-wide v36

    const/4 v8, 0x6

    and-int/lit8 v9, v12, 0x6

    if-eq v9, v8, :cond_14

    new-instance v32, Lyads/wl6;

    iget v1, v1, Lyads/ab4;->c:I

    const-wide/16 v38, -0x1

    const/16 v40, 0x0

    move/from16 v35, v1

    move-wide/from16 v33, v6

    invoke-direct/range {v32 .. v40}, Lyads/wl6;-><init>(JIJJ[J)V

    goto :goto_b

    :cond_14
    move-wide/from16 v33, v6

    invoke-virtual/range {v27 .. v27}, Lyads/os4;->l()J

    move-result-wide v38

    const/16 v6, 0x64

    new-array v7, v6, [J

    const/4 v8, 0x0

    :goto_9
    if-ge v8, v6, :cond_15

    invoke-virtual/range {v27 .. v27}, Lyads/os4;->k()I

    move-result v9

    int-to-long v9, v9

    aput-wide v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_15
    cmp-long v6, v3, v22

    if-eqz v6, :cond_16

    add-long v8, v33, v38

    cmp-long v6, v3, v8

    if-eqz v6, :cond_16

    const-string v6, "XING data size mismatch: "

    invoke-static {v3, v4, v6, v2}, Lxp;->f(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XingSeeker"

    invoke-static {v3, v2}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    new-instance v32, Lyads/wl6;

    iget v1, v1, Lyads/ab4;->c:I

    move/from16 v35, v1

    move-object/from16 v40, v7

    invoke-direct/range {v32 .. v40}, Lyads/wl6;-><init>(JIJJ[J)V

    goto :goto_b

    :goto_a
    move-object/from16 v32, p2

    :goto_b
    if-eqz v32, :cond_19

    iget-object v1, v0, Lyads/ua4;->c:Lyads/f23;

    iget v2, v1, Lyads/f23;->a:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_17

    iget v1, v1, Lyads/f23;->b:I

    if-eq v1, v3, :cond_17

    goto :goto_c

    :cond_17
    const/4 v1, 0x0

    iput v1, v13, Lyads/wk0;->f:I

    add-int/lit16 v5, v5, 0x8d

    invoke-virtual {v13, v5, v1}, Lyads/wk0;->a(IZ)Z

    iget-object v2, v0, Lyads/ua4;->a:Lyads/os4;

    iget-object v2, v2, Lyads/os4;->a:[B

    const/4 v3, 0x3

    invoke-virtual {v13, v2, v1, v3, v1}, Lyads/wk0;->b([BIIZ)Z

    iget-object v2, v0, Lyads/ua4;->a:Lyads/os4;

    invoke-virtual {v2, v1}, Lyads/os4;->e(I)V

    iget-object v1, v0, Lyads/ua4;->c:Lyads/f23;

    iget-object v2, v0, Lyads/ua4;->a:Lyads/os4;

    invoke-virtual {v2}, Lyads/os4;->m()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    shr-int/lit8 v3, v2, 0xc

    and-int/lit16 v2, v2, 0xfff

    if-gtz v3, :cond_18

    if-lez v2, :cond_19

    :cond_18
    iput v3, v1, Lyads/f23;->a:I

    iput v2, v1, Lyads/f23;->b:I

    :cond_19
    :goto_c
    iget-object v1, v0, Lyads/ua4;->b:Lyads/ab4;

    iget v1, v1, Lyads/ab4;->c:I

    invoke-virtual {v13, v1}, Lyads/wk0;->a(I)V

    if-eqz v32, :cond_1a

    invoke-virtual/range {v32 .. v32}, Lyads/wl6;->b()Z

    move-result v1

    if-nez v1, :cond_1a

    move/from16 v3, v28

    const v1, 0x496e666f

    if-ne v3, v1, :cond_1a

    iget-object v1, v0, Lyads/ua4;->a:Lyads/os4;

    iget-object v1, v1, Lyads/os4;->a:[B

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v13, v1, v3, v2, v3}, Lyads/wk0;->b([BIIZ)Z

    iget-object v1, v0, Lyads/ua4;->a:Lyads/os4;

    invoke-virtual {v1, v3}, Lyads/os4;->e(I)V

    iget-object v1, v0, Lyads/ua4;->b:Lyads/ab4;

    iget-object v2, v0, Lyads/ua4;->a:Lyads/os4;

    invoke-virtual {v2}, Lyads/os4;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lyads/ab4;->a(I)Z

    new-instance v3, Lyads/x50;

    iget-wide v4, v13, Lyads/wk0;->c:J

    iget-wide v6, v13, Lyads/wk0;->d:J

    iget-object v8, v0, Lyads/ua4;->b:Lyads/ab4;

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lyads/x50;-><init>(JJLyads/ab4;Z)V

    move-object/from16 v32, v3

    :cond_1a
    :goto_d
    iget-object v1, v0, Lyads/ua4;->j:Lyads/h84;

    iget-wide v2, v13, Lyads/wk0;->d:J

    if-eqz v1, :cond_1f

    iget-object v4, v1, Lyads/h84;->b:[Lyads/g84;

    array-length v4, v4

    const/4 v5, 0x0

    :goto_e
    if-ge v5, v4, :cond_1f

    iget-object v6, v1, Lyads/h84;->b:[Lyads/g84;

    aget-object v7, v6, v5

    instance-of v8, v7, Lyads/e94;

    if-eqz v8, :cond_1e

    check-cast v7, Lyads/e94;

    array-length v4, v6

    const/4 v5, 0x0

    :goto_f
    if-ge v5, v4, :cond_1c

    iget-object v6, v1, Lyads/h84;->b:[Lyads/g84;

    aget-object v6, v6, v5

    instance-of v8, v6, Lyads/gw5;

    if-eqz v8, :cond_1b

    check-cast v6, Lyads/gw5;

    iget-object v8, v6, Lyads/nb3;->b:Ljava/lang/String;

    const-string v9, "TLEN"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    iget-object v1, v6, Lyads/gw5;->d:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lyads/u56;->a(J)J

    move-result-wide v4

    goto :goto_10

    :cond_1b
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_1c
    move-wide/from16 v4, v18

    :goto_10
    iget-object v1, v7, Lyads/e94;->f:[I

    array-length v1, v1

    add-int/lit8 v6, v1, 0x1

    new-array v8, v6, [J

    new-array v6, v6, [J

    const/16 v30, 0x0

    aput-wide v2, v8, v30

    aput-wide v20, v6, v30

    move-wide v9, v2

    const/4 v2, 0x1

    :goto_11
    if-gt v2, v1, :cond_1d

    iget v3, v7, Lyads/e94;->d:I

    iget-object v11, v7, Lyads/e94;->f:[I

    add-int/lit8 v12, v2, -0x1

    aget v11, v11, v12

    add-int/2addr v3, v11

    int-to-long v14, v3

    add-long/2addr v9, v14

    iget v3, v7, Lyads/e94;->e:I

    iget-object v11, v7, Lyads/e94;->g:[I

    aget v11, v11, v12

    add-int/2addr v3, v11

    int-to-long v11, v3

    add-long v20, v20, v11

    aput-wide v9, v8, v2

    aput-wide v20, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1d
    new-instance v1, Lyads/f94;

    invoke-direct {v1, v4, v5, v8, v6}, Lyads/f94;-><init>(J[J[J)V

    goto :goto_12

    :cond_1e
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_1f
    move-object/from16 v1, p2

    :goto_12
    iget-boolean v2, v0, Lyads/ua4;->p:Z

    if-eqz v2, :cond_20

    new-instance v1, Lyads/vh5;

    invoke-direct {v1}, Lyads/vh5;-><init>()V

    goto :goto_14

    :cond_20
    if-eqz v1, :cond_21

    move-object/from16 v32, v1

    goto :goto_13

    :cond_21
    if-eqz v32, :cond_22

    goto :goto_13

    :cond_22
    move-object/from16 v32, p2

    :goto_13
    if-eqz v32, :cond_23

    invoke-interface/range {v32 .. v32}, Lyads/sh5;->b()Z

    move-object/from16 v1, v32

    goto :goto_14

    :cond_23
    iget-object v1, v0, Lyads/ua4;->a:Lyads/os4;

    iget-object v1, v1, Lyads/os4;->a:[B

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v13, v1, v3, v2, v3}, Lyads/wk0;->b([BIIZ)Z

    iget-object v1, v0, Lyads/ua4;->a:Lyads/os4;

    invoke-virtual {v1, v3}, Lyads/os4;->e(I)V

    iget-object v1, v0, Lyads/ua4;->b:Lyads/ab4;

    iget-object v2, v0, Lyads/ua4;->a:Lyads/os4;

    invoke-virtual {v2}, Lyads/os4;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lyads/ab4;->a(I)Z

    new-instance v3, Lyads/x50;

    iget-wide v4, v13, Lyads/wk0;->c:J

    iget-wide v6, v13, Lyads/wk0;->d:J

    iget-object v8, v0, Lyads/ua4;->b:Lyads/ab4;

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lyads/x50;-><init>(JJLyads/ab4;Z)V

    move-object v1, v3

    :goto_14
    iput-object v1, v0, Lyads/ua4;->o:Lyads/wh5;

    iget-object v2, v0, Lyads/ua4;->f:Lyads/zs2;

    invoke-interface {v2, v1}, Lyads/zs2;->a(Lyads/sh5;)V

    iget-object v1, v0, Lyads/ua4;->h:Lyads/k06;

    new-instance v2, Lyads/uz2;

    invoke-direct {v2}, Lyads/uz2;-><init>()V

    iget-object v3, v0, Lyads/ua4;->b:Lyads/ab4;

    iget-object v4, v3, Lyads/ab4;->b:Ljava/lang/String;

    iput-object v4, v2, Lyads/uz2;->k:Ljava/lang/String;

    const/16 v4, 0x1000

    iput v4, v2, Lyads/uz2;->l:I

    iget v4, v3, Lyads/ab4;->e:I

    iput v4, v2, Lyads/uz2;->x:I

    iget v3, v3, Lyads/ab4;->d:I

    iput v3, v2, Lyads/uz2;->y:I

    iget-object v3, v0, Lyads/ua4;->c:Lyads/f23;

    iget v4, v3, Lyads/f23;->a:I

    iput v4, v2, Lyads/uz2;->A:I

    iget v3, v3, Lyads/f23;->b:I

    iput v3, v2, Lyads/uz2;->B:I

    iget-object v3, v0, Lyads/ua4;->j:Lyads/h84;

    iput-object v3, v2, Lyads/uz2;->i:Lyads/h84;

    new-instance v3, Lyads/vz2;

    invoke-direct {v3, v2}, Lyads/vz2;-><init>(Lyads/uz2;)V

    invoke-interface {v1, v3}, Lyads/k06;->a(Lyads/vz2;)V

    iget-wide v1, v13, Lyads/wk0;->d:J

    iput-wide v1, v0, Lyads/ua4;->m:J

    goto :goto_15

    :cond_24
    const/16 p2, 0x0

    const-wide/32 v16, 0xf4240

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v20, 0x0

    iget-wide v1, v0, Lyads/ua4;->m:J

    cmp-long v3, v1, v20

    if-eqz v3, :cond_25

    move-object/from16 v3, p1

    check-cast v3, Lyads/wk0;

    iget-wide v4, v3, Lyads/wk0;->d:J

    cmp-long v6, v4, v1

    if-gez v6, :cond_25

    sub-long/2addr v1, v4

    long-to-int v1, v1

    invoke-virtual {v3, v1}, Lyads/wk0;->a(I)V

    :cond_25
    :goto_15
    iget v1, v0, Lyads/ua4;->n:I

    if-nez v1, :cond_2a

    move-object/from16 v1, p1

    check-cast v1, Lyads/wk0;

    const/4 v3, 0x0

    iput v3, v1, Lyads/wk0;->f:I

    invoke-virtual {v0, v1}, Lyads/ua4;->a(Lyads/wk0;)Z

    move-result v2

    if-eqz v2, :cond_26

    goto/16 :goto_1a

    :cond_26
    iget-object v2, v0, Lyads/ua4;->a:Lyads/os4;

    invoke-virtual {v2, v3}, Lyads/os4;->e(I)V

    iget-object v2, v0, Lyads/ua4;->a:Lyads/os4;

    invoke-virtual {v2}, Lyads/os4;->a()I

    move-result v2

    iget v3, v0, Lyads/ua4;->i:I

    int-to-long v3, v3

    const v5, -0x1f400

    and-int/2addr v5, v2

    int-to-long v5, v5

    const-wide/32 v7, -0x1f400

    and-long/2addr v3, v7

    cmp-long v3, v5, v3

    if-nez v3, :cond_27

    invoke-static {v2}, Lyads/bb4;->a(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_28

    :cond_27
    const/4 v3, 0x0

    const/4 v15, 0x1

    goto :goto_16

    :cond_28
    iget-object v3, v0, Lyads/ua4;->b:Lyads/ab4;

    invoke-virtual {v3, v2}, Lyads/ab4;->a(I)Z

    iget-wide v2, v0, Lyads/ua4;->k:J

    cmp-long v4, v2, v18

    if-nez v4, :cond_29

    iget-object v2, v0, Lyads/ua4;->o:Lyads/wh5;

    iget-wide v3, v1, Lyads/wk0;->d:J

    invoke-interface {v2, v3, v4}, Lyads/wh5;->a(J)J

    move-result-wide v2

    iput-wide v2, v0, Lyads/ua4;->k:J

    :cond_29
    iget-object v4, v0, Lyads/ua4;->b:Lyads/ab4;

    iget v5, v4, Lyads/ab4;->c:I

    iput v5, v0, Lyads/ua4;->n:I

    iget-object v5, v0, Lyads/ua4;->o:Lyads/wh5;

    instance-of v6, v5, Lyads/of3;

    if-eqz v6, :cond_2a

    check-cast v5, Lyads/of3;

    iget-wide v6, v0, Lyads/ua4;->l:J

    iget v8, v4, Lyads/ab4;->g:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    mul-long v6, v6, v16

    iget v4, v4, Lyads/ab4;->d:I

    int-to-long v8, v4

    div-long/2addr v6, v8

    add-long/2addr v6, v2

    iget-wide v1, v1, Lyads/wk0;->d:J

    invoke-virtual {v5, v6, v7}, Lyads/of3;->c(J)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-boolean v1, v0, Lyads/ua4;->q:Z

    if-eqz v1, :cond_2a

    iget-wide v1, v0, Lyads/ua4;->r:J

    invoke-virtual {v5, v1, v2}, Lyads/of3;->c(J)Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v3, 0x0

    iput-boolean v3, v0, Lyads/ua4;->q:Z

    iget-object v1, v0, Lyads/ua4;->g:Lyads/k06;

    iput-object v1, v0, Lyads/ua4;->h:Lyads/k06;

    :cond_2a
    const/4 v15, 0x1

    goto :goto_19

    :cond_2b
    throw p2

    :goto_16
    invoke-virtual {v1, v15}, Lyads/wk0;->a(I)V

    iput v3, v0, Lyads/ua4;->i:I

    :goto_17
    const/4 v3, 0x0

    :goto_18
    const/4 v4, -0x1

    goto :goto_1b

    :goto_19
    iget-object v1, v0, Lyads/ua4;->h:Lyads/k06;

    iget v2, v0, Lyads/ua4;->n:I

    move-object/from16 v3, p1

    invoke-interface {v1, v3, v2, v15}, Lyads/k06;->a(Lyads/tc0;IZ)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2c

    :goto_1a
    const/4 v3, -0x1

    goto :goto_18

    :cond_2c
    iget v2, v0, Lyads/ua4;->n:I

    sub-int/2addr v2, v1

    iput v2, v0, Lyads/ua4;->n:I

    if-lez v2, :cond_2d

    goto :goto_17

    :cond_2d
    iget-object v3, v0, Lyads/ua4;->h:Lyads/k06;

    iget-wide v1, v0, Lyads/ua4;->l:J

    iget-wide v4, v0, Lyads/ua4;->k:J

    mul-long v1, v1, v16

    iget-object v6, v0, Lyads/ua4;->b:Lyads/ab4;

    iget v7, v6, Lyads/ab4;->d:I

    int-to-long v7, v7

    div-long/2addr v1, v7

    add-long/2addr v4, v1

    iget v7, v6, Lyads/ab4;->c:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x1

    invoke-interface/range {v3 .. v9}, Lyads/k06;->a(JIIILyads/j06;)V

    iget-wide v1, v0, Lyads/ua4;->l:J

    iget-object v3, v0, Lyads/ua4;->b:Lyads/ab4;

    iget v3, v3, Lyads/ab4;->g:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lyads/ua4;->l:J

    const/4 v3, 0x0

    iput v3, v0, Lyads/ua4;->n:I

    goto :goto_17

    :goto_1b
    if-ne v3, v4, :cond_2e

    iget-object v1, v0, Lyads/ua4;->o:Lyads/wh5;

    instance-of v2, v1, Lyads/of3;

    if-eqz v2, :cond_2e

    iget-wide v4, v0, Lyads/ua4;->l:J

    iget-wide v6, v0, Lyads/ua4;->k:J

    mul-long v4, v4, v16

    iget-object v2, v0, Lyads/ua4;->b:Lyads/ab4;

    iget v2, v2, Lyads/ab4;->d:I

    int-to-long v8, v2

    div-long/2addr v4, v8

    add-long/2addr v4, v6

    invoke-interface {v1}, Lyads/sh5;->c()J

    move-result-wide v1

    cmp-long v1, v1, v4

    if-eqz v1, :cond_2e

    iget-object v1, v0, Lyads/ua4;->o:Lyads/wh5;

    move-object v2, v1

    check-cast v2, Lyads/of3;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lyads/ua4;->f:Lyads/zs2;

    invoke-interface {v0, v1}, Lyads/zs2;->a(Lyads/sh5;)V

    :cond_2e
    return v3

    :cond_2f
    invoke-static {}, Lud;->g()V

    const/16 v30, 0x0

    return v30
.end method

.method public final a(JJ)V
    .locals 2

    const/4 p1, 0x0

    .line 1150
    iput p1, p0, Lyads/ua4;->i:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1151
    iput-wide v0, p0, Lyads/ua4;->k:J

    const-wide/16 v0, 0x0

    .line 1152
    iput-wide v0, p0, Lyads/ua4;->l:J

    .line 1153
    iput p1, p0, Lyads/ua4;->n:I

    .line 1154
    iput-wide p3, p0, Lyads/ua4;->r:J

    .line 1155
    iget-object p1, p0, Lyads/ua4;->o:Lyads/wh5;

    instance-of p2, p1, Lyads/of3;

    if-eqz p2, :cond_0

    check-cast p1, Lyads/of3;

    invoke-virtual {p1, p3, p4}, Lyads/of3;->c(J)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 1156
    iput-boolean p1, p0, Lyads/ua4;->q:Z

    .line 1157
    iget-object p1, p0, Lyads/ua4;->e:Lyads/cm2;

    iput-object p1, p0, Lyads/ua4;->h:Lyads/k06;

    :cond_0
    return-void
.end method

.method public final a(Lyads/zs2;)V
    .locals 2

    .line 1146
    iput-object p1, p0, Lyads/ua4;->f:Lyads/zs2;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1147
    invoke-interface {p1, v0, v1}, Lyads/zs2;->a(II)Lyads/k06;

    move-result-object p1

    iput-object p1, p0, Lyads/ua4;->g:Lyads/k06;

    .line 1148
    iput-object p1, p0, Lyads/ua4;->h:Lyads/k06;

    .line 1149
    iget-object p0, p0, Lyads/ua4;->f:Lyads/zs2;

    invoke-interface {p0}, Lyads/zs2;->a()V

    return-void
.end method

.method public final a(Lyads/wk0;)Z
    .locals 8

    .line 1158
    iget-object v0, p0, Lyads/ua4;->o:Lyads/wh5;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1159
    invoke-interface {v0}, Lyads/wh5;->a()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 1160
    iget-wide v4, p1, Lyads/wk0;->d:J

    iget v0, p1, Lyads/wk0;->f:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    const-wide/16 v6, 0x4

    sub-long/2addr v2, v6

    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    return v1

    .line 1161
    :cond_0
    :try_start_0
    iget-object p0, p0, Lyads/ua4;->a:Lyads/os4;

    .line 1162
    iget-object p0, p0, Lyads/os4;->a:[B

    const/4 v0, 0x0

    const/4 v2, 0x4

    .line 1163
    invoke-virtual {p1, p0, v0, v2, v1}, Lyads/wk0;->b([BIIZ)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p0, v1

    return p0

    :catch_0
    return v1
.end method

.method public final a(Lyads/wk0;Z)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz p2, :cond_0

    const v2, 0x8000

    goto :goto_0

    :cond_0
    const/high16 v2, 0x20000

    :goto_0
    const/4 v3, 0x0

    .line 1124
    iput v3, v1, Lyads/wk0;->f:I

    .line 1125
    iget-wide v4, v1, Lyads/wk0;->d:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    if-nez v4, :cond_3

    .line 1126
    iget-object v4, v0, Lyads/ua4;->d:Lyads/ob3;

    invoke-virtual {v4, v1, v5}, Lyads/ob3;->a(Lyads/wk0;Lyads/kb3;)Lyads/h84;

    move-result-object v4

    iput-object v4, v0, Lyads/ua4;->j:Lyads/h84;

    if-eqz v4, :cond_1

    .line 1127
    iget-object v6, v0, Lyads/ua4;->c:Lyads/f23;

    invoke-virtual {v6, v4}, Lyads/f23;->a(Lyads/h84;)V

    .line 1128
    :cond_1
    iget-wide v6, v1, Lyads/wk0;->d:J

    iget v4, v1, Lyads/wk0;->f:I

    int-to-long v8, v4

    add-long/2addr v6, v8

    long-to-int v4, v6

    if-nez p2, :cond_2

    .line 1129
    invoke-virtual {v1, v4}, Lyads/wk0;->a(I)V

    :cond_2
    move v6, v3

    :goto_1
    move v7, v6

    move v8, v7

    goto :goto_2

    :cond_3
    move v4, v3

    move v6, v4

    goto :goto_1

    .line 1130
    :goto_2
    invoke-virtual/range {p0 .. p1}, Lyads/ua4;->a(Lyads/wk0;)Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_5

    if-lez v7, :cond_4

    goto :goto_4

    .line 1131
    :cond_4
    invoke-static {}, Ln7;->e()V

    return v3

    .line 1132
    :cond_5
    iget-object v9, v0, Lyads/ua4;->a:Lyads/os4;

    invoke-virtual {v9, v3}, Lyads/os4;->e(I)V

    .line 1133
    iget-object v9, v0, Lyads/ua4;->a:Lyads/os4;

    invoke-virtual {v9}, Lyads/os4;->a()I

    move-result v9

    if-eqz v6, :cond_6

    int-to-long v11, v6

    const v13, -0x1f400

    and-int/2addr v13, v9

    int-to-long v13, v13

    const-wide/32 v15, -0x1f400

    and-long/2addr v11, v15

    cmp-long v11, v13, v11

    if-nez v11, :cond_7

    .line 1134
    :cond_6
    invoke-static {v9}, Lyads/bb4;->a(I)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_b

    :cond_7
    add-int/lit8 v6, v8, 0x1

    if-ne v8, v2, :cond_9

    if-eqz p2, :cond_8

    return v3

    .line 1135
    :cond_8
    const-string v0, "Searched too many bytes."

    .line 1136
    invoke-static {v0, v5}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return v3

    :cond_9
    if-eqz p2, :cond_a

    .line 1137
    iput v3, v1, Lyads/wk0;->f:I

    add-int v7, v4, v6

    .line 1138
    invoke-virtual {v1, v7, v3}, Lyads/wk0;->a(IZ)Z

    goto :goto_3

    .line 1139
    :cond_a
    invoke-virtual {v1, v10}, Lyads/wk0;->a(I)V

    :goto_3
    move v7, v3

    move v8, v6

    move v6, v7

    goto :goto_2

    :cond_b
    add-int/lit8 v7, v7, 0x1

    if-ne v7, v10, :cond_c

    .line 1140
    iget-object v6, v0, Lyads/ua4;->b:Lyads/ab4;

    invoke-virtual {v6, v9}, Lyads/ab4;->a(I)Z

    move v6, v9

    goto :goto_6

    :cond_c
    const/4 v9, 0x4

    if-ne v7, v9, :cond_e

    :goto_4
    if-eqz p2, :cond_d

    add-int/2addr v4, v8

    .line 1141
    invoke-virtual {v1, v4}, Lyads/wk0;->a(I)V

    goto :goto_5

    .line 1142
    :cond_d
    iput v3, v1, Lyads/wk0;->f:I

    .line 1143
    :goto_5
    iput v6, v0, Lyads/ua4;->i:I

    return v10

    :cond_e
    :goto_6
    add-int/lit8 v11, v11, -0x4

    .line 1144
    invoke-virtual {v1, v11, v3}, Lyads/wk0;->a(IZ)Z

    goto :goto_2
.end method

.method public final a(Lyads/xs2;)Z
    .locals 1

    .line 1145
    check-cast p1, Lyads/wk0;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lyads/ua4;->a(Lyads/wk0;Z)Z

    move-result p0

    return p0
.end method

.method public final release()V
    .locals 0

    return-void
.end method
