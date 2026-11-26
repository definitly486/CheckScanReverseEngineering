.class public final Lyads/g83;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/zm2;


# static fields
.field public static final l:[F


# instance fields
.field public final a:Lyads/s56;

.field public final b:Lyads/os4;

.field public final c:[Z

.field public final d:Lyads/e83;

.field public final e:Lyads/md4;

.field public f:Lyads/f83;

.field public g:J

.field public h:Ljava/lang/String;

.field public i:Lyads/k06;

.field public j:Z

.field public k:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lyads/g83;->l:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lyads/s56;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/g83;->a:Lyads/s56;

    const/4 p1, 0x4

    new-array p1, p1, [Z

    iput-object p1, p0, Lyads/g83;->c:[Z

    new-instance p1, Lyads/e83;

    invoke-direct {p1}, Lyads/e83;-><init>()V

    iput-object p1, p0, Lyads/g83;->d:Lyads/e83;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lyads/g83;->k:J

    new-instance p1, Lyads/md4;

    const/16 v0, 0xb2

    invoke-direct {p1, v0}, Lyads/md4;-><init>(I)V

    iput-object p1, p0, Lyads/g83;->e:Lyads/md4;

    new-instance p1, Lyads/os4;

    invoke-direct {p1}, Lyads/os4;-><init>()V

    iput-object p1, p0, Lyads/g83;->b:Lyads/os4;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 774
    iget-object v0, p0, Lyads/g83;->c:[Z

    invoke-static {v0}, Lyads/qd4;->a([Z)V

    .line 775
    iget-object v0, p0, Lyads/g83;->d:Lyads/e83;

    const/4 v1, 0x0

    .line 776
    iput-boolean v1, v0, Lyads/e83;->a:Z

    .line 777
    iput v1, v0, Lyads/e83;->c:I

    .line 778
    iput v1, v0, Lyads/e83;->b:I

    .line 779
    iget-object v0, p0, Lyads/g83;->f:Lyads/f83;

    if-eqz v0, :cond_0

    .line 780
    iput-boolean v1, v0, Lyads/f83;->b:Z

    .line 781
    iput-boolean v1, v0, Lyads/f83;->c:Z

    .line 782
    iput-boolean v1, v0, Lyads/f83;->d:Z

    const/4 v2, -0x1

    .line 783
    iput v2, v0, Lyads/f83;->e:I

    .line 784
    :cond_0
    iget-object v0, p0, Lyads/g83;->e:Lyads/md4;

    if-eqz v0, :cond_1

    .line 785
    iput-boolean v1, v0, Lyads/md4;->b:Z

    .line 786
    iput-boolean v1, v0, Lyads/md4;->c:Z

    :cond_1
    const-wide/16 v0, 0x0

    .line 787
    iput-wide v0, p0, Lyads/g83;->g:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 788
    iput-wide v0, p0, Lyads/g83;->k:J

    return-void
.end method

.method public final a(IJ)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p2, v0

    if-eqz p1, :cond_0

    .line 773
    iput-wide p2, p0, Lyads/g83;->k:J

    :cond_0
    return-void
.end method

.method public final a(Lyads/os4;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lyads/g83;->f:Lyads/f83;

    if-eqz v2, :cond_2b

    iget-object v2, v0, Lyads/g83;->i:Lyads/k06;

    if-eqz v2, :cond_2a

    iget v3, v1, Lyads/os4;->b:I

    iget v4, v1, Lyads/os4;->c:I

    iget-object v5, v1, Lyads/os4;->a:[B

    iget-wide v6, v0, Lyads/g83;->g:J

    sub-int v8, v4, v3

    int-to-long v9, v8

    add-long/2addr v6, v9

    iput-wide v6, v0, Lyads/g83;->g:J

    invoke-interface {v2, v8, v1}, Lyads/k06;->a(ILyads/os4;)V

    :goto_0
    iget-object v2, v0, Lyads/g83;->c:[Z

    invoke-static {v5, v3, v4, v2}, Lyads/qd4;->a([BII[Z)I

    move-result v2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v2, v4, :cond_5

    iget-boolean v1, v0, Lyads/g83;->j:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lyads/g83;->d:Lyads/e83;

    invoke-virtual {v1, v5, v3, v4}, Lyads/e83;->a([BII)V

    :cond_0
    iget-object v1, v0, Lyads/g83;->f:Lyads/f83;

    iget-boolean v2, v1, Lyads/f83;->c:Z

    if-eqz v2, :cond_3

    add-int/lit8 v2, v3, 0x1

    iget v8, v1, Lyads/f83;->f:I

    sub-int/2addr v2, v8

    if-ge v2, v4, :cond_2

    aget-byte v2, v5, v2

    and-int/lit16 v2, v2, 0xc0

    shr-int/lit8 v2, v2, 0x6

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v6, v7

    :goto_1
    iput-boolean v6, v1, Lyads/f83;->d:Z

    iput-boolean v7, v1, Lyads/f83;->c:Z

    goto :goto_2

    :cond_2
    sub-int v2, v4, v3

    add-int/2addr v2, v8

    iput v2, v1, Lyads/f83;->f:I

    :cond_3
    :goto_2
    iget-object v0, v0, Lyads/g83;->e:Lyads/md4;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v5, v3, v4}, Lyads/md4;->a([BII)V

    :cond_4
    return-void

    :cond_5
    iget-object v8, v1, Lyads/os4;->a:[B

    add-int/lit8 v9, v2, 0x3

    aget-byte v8, v8, v9

    and-int/lit16 v10, v8, 0xff

    sub-int v11, v2, v3

    iget-boolean v12, v0, Lyads/g83;->j:Z

    if-nez v12, :cond_1c

    if-lez v11, :cond_6

    iget-object v12, v0, Lyads/g83;->d:Lyads/e83;

    invoke-virtual {v12, v5, v3, v2}, Lyads/e83;->a([BII)V

    :cond_6
    if-gez v11, :cond_7

    neg-int v12, v11

    goto :goto_3

    :cond_7
    move v12, v7

    :goto_3
    iget-object v15, v0, Lyads/g83;->d:Lyads/e83;

    iget v7, v15, Lyads/e83;->b:I

    if-eqz v7, :cond_1a

    const-string v13, "Unexpected start code value"

    const/4 v14, 0x2

    move/from16 v16, v4

    const-string v4, "H263Reader"

    if-eq v7, v6, :cond_18

    if-eq v7, v14, :cond_16

    const/4 v6, 0x4

    const/4 v14, 0x3

    if-eq v7, v14, :cond_14

    if-ne v7, v6, :cond_13

    const/16 v7, 0xb3

    if-eq v10, v7, :cond_9

    const/16 v7, 0xb5

    if-ne v10, v7, :cond_8

    goto :goto_4

    :cond_8
    move/from16 v17, v9

    const/4 v7, 0x0

    goto/16 :goto_9

    :cond_9
    :goto_4
    iget v7, v15, Lyads/e83;->c:I

    sub-int/2addr v7, v12

    iput v7, v15, Lyads/e83;->c:I

    const/4 v7, 0x0

    iput-boolean v7, v15, Lyads/e83;->a:Z

    iget-object v7, v0, Lyads/g83;->i:Lyads/k06;

    iget v8, v15, Lyads/e83;->d:I

    iget-object v12, v0, Lyads/g83;->h:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, v15, Lyads/e83;->e:[B

    iget v14, v15, Lyads/e83;->c:I

    invoke-static {v13, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v13

    new-instance v14, Lyads/ns4;

    invoke-direct {v14, v13}, Lyads/ns4;-><init>([B)V

    invoke-virtual {v14, v8}, Lyads/ns4;->d(I)V

    invoke-virtual {v14, v6}, Lyads/ns4;->d(I)V

    invoke-virtual {v14}, Lyads/ns4;->f()V

    const/16 v8, 0x8

    invoke-virtual {v14, v8}, Lyads/ns4;->c(I)V

    invoke-virtual {v14}, Lyads/ns4;->e()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-virtual {v14, v6}, Lyads/ns4;->c(I)V

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Lyads/ns4;->c(I)V

    :cond_a
    invoke-virtual {v14, v6}, Lyads/ns4;->a(I)I

    move-result v6

    const-string v15, "Invalid aspect ratio"

    move/from16 v17, v9

    const/16 v9, 0xf

    if-ne v6, v9, :cond_c

    invoke-virtual {v14, v8}, Lyads/ns4;->a(I)I

    move-result v6

    invoke-virtual {v14, v8}, Lyads/ns4;->a(I)I

    move-result v8

    if-nez v8, :cond_b

    invoke-static {v4, v15}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_b
    int-to-float v6, v6

    int-to-float v8, v8

    div-float v15, v6, v8

    goto :goto_6

    :cond_c
    sget-object v8, Lyads/g83;->l:[F

    const/4 v9, 0x7

    if-ge v6, v9, :cond_d

    aget v15, v8, v6

    goto :goto_6

    :cond_d
    invoke-static {v4, v15}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :goto_6
    invoke-virtual {v14}, Lyads/ns4;->e()Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v6, 0x2

    invoke-virtual {v14, v6}, Lyads/ns4;->c(I)V

    const/4 v6, 0x1

    invoke-virtual {v14, v6}, Lyads/ns4;->c(I)V

    invoke-virtual {v14}, Lyads/ns4;->e()Z

    move-result v6

    if-eqz v6, :cond_e

    const/16 v6, 0xf

    invoke-virtual {v14, v6}, Lyads/ns4;->c(I)V

    invoke-virtual {v14}, Lyads/ns4;->f()V

    invoke-virtual {v14, v6}, Lyads/ns4;->c(I)V

    invoke-virtual {v14}, Lyads/ns4;->f()V

    invoke-virtual {v14, v6}, Lyads/ns4;->c(I)V

    invoke-virtual {v14}, Lyads/ns4;->f()V

    const/4 v8, 0x3

    invoke-virtual {v14, v8}, Lyads/ns4;->c(I)V

    const/16 v8, 0xb

    invoke-virtual {v14, v8}, Lyads/ns4;->c(I)V

    invoke-virtual {v14}, Lyads/ns4;->f()V

    invoke-virtual {v14, v6}, Lyads/ns4;->c(I)V

    invoke-virtual {v14}, Lyads/ns4;->f()V

    :cond_e
    const/4 v6, 0x2

    invoke-virtual {v14, v6}, Lyads/ns4;->a(I)I

    move-result v6

    if-eqz v6, :cond_f

    const-string v6, "Unhandled video object layer shape"

    invoke-static {v4, v6}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    invoke-virtual {v14}, Lyads/ns4;->f()V

    const/16 v6, 0x10

    invoke-virtual {v14, v6}, Lyads/ns4;->a(I)I

    move-result v6

    invoke-virtual {v14}, Lyads/ns4;->f()V

    invoke-virtual {v14}, Lyads/ns4;->e()Z

    move-result v8

    if-eqz v8, :cond_12

    if-nez v6, :cond_10

    const-string v6, "Invalid vop_increment_time_resolution"

    invoke-static {v4, v6}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_10
    add-int/lit8 v6, v6, -0x1

    const/4 v4, 0x0

    :goto_7
    if-lez v6, :cond_11

    add-int/lit8 v4, v4, 0x1

    shr-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_11
    invoke-virtual {v14, v4}, Lyads/ns4;->c(I)V

    :cond_12
    :goto_8
    invoke-virtual {v14}, Lyads/ns4;->f()V

    const/16 v4, 0xd

    invoke-virtual {v14, v4}, Lyads/ns4;->a(I)I

    move-result v6

    invoke-virtual {v14}, Lyads/ns4;->f()V

    invoke-virtual {v14, v4}, Lyads/ns4;->a(I)I

    move-result v4

    invoke-virtual {v14}, Lyads/ns4;->f()V

    invoke-virtual {v14}, Lyads/ns4;->f()V

    new-instance v8, Lyads/uz2;

    invoke-direct {v8}, Lyads/uz2;-><init>()V

    iput-object v12, v8, Lyads/uz2;->a:Ljava/lang/String;

    const-string v9, "video/mp4v-es"

    iput-object v9, v8, Lyads/uz2;->k:Ljava/lang/String;

    iput v6, v8, Lyads/uz2;->p:I

    iput v4, v8, Lyads/uz2;->q:I

    iput v15, v8, Lyads/uz2;->t:F

    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v8, Lyads/uz2;->m:Ljava/util/List;

    new-instance v4, Lyads/vz2;

    invoke-direct {v4, v8}, Lyads/vz2;-><init>(Lyads/uz2;)V

    invoke-interface {v7, v4}, Lyads/k06;->a(Lyads/vz2;)V

    const/4 v6, 0x1

    iput-boolean v6, v0, Lyads/g83;->j:Z

    goto :goto_a

    :cond_13
    invoke-static {}, Lud;->g()V

    return-void

    :cond_14
    move/from16 v17, v9

    and-int/lit16 v7, v8, 0xf0

    const/16 v8, 0x20

    if-eq v7, v8, :cond_15

    invoke-static {v4, v13}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    iput-boolean v7, v15, Lyads/e83;->a:Z

    iput v7, v15, Lyads/e83;->c:I

    iput v7, v15, Lyads/e83;->b:I

    goto :goto_9

    :cond_15
    const/4 v7, 0x0

    iget v4, v15, Lyads/e83;->c:I

    iput v4, v15, Lyads/e83;->d:I

    iput v6, v15, Lyads/e83;->b:I

    goto :goto_9

    :cond_16
    move/from16 v17, v9

    const/4 v7, 0x0

    const/16 v6, 0x1f

    if-le v10, v6, :cond_17

    invoke-static {v4, v13}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v7, v15, Lyads/e83;->a:Z

    iput v7, v15, Lyads/e83;->c:I

    iput v7, v15, Lyads/e83;->b:I

    goto :goto_9

    :cond_17
    const/4 v14, 0x3

    iput v14, v15, Lyads/e83;->b:I

    goto :goto_9

    :cond_18
    move/from16 v17, v9

    const/16 v6, 0xb5

    const/4 v7, 0x0

    if-eq v10, v6, :cond_19

    invoke-static {v4, v13}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v7, v15, Lyads/e83;->a:Z

    iput v7, v15, Lyads/e83;->c:I

    iput v7, v15, Lyads/e83;->b:I

    goto :goto_9

    :cond_19
    const/4 v6, 0x2

    iput v6, v15, Lyads/e83;->b:I

    goto :goto_9

    :cond_1a
    move/from16 v16, v4

    move/from16 v17, v9

    const/4 v7, 0x0

    const/16 v4, 0xb0

    if-ne v10, v4, :cond_1b

    const/4 v6, 0x1

    iput v6, v15, Lyads/e83;->b:I

    iput-boolean v6, v15, Lyads/e83;->a:Z

    :cond_1b
    :goto_9
    sget-object v4, Lyads/e83;->f:[B

    const/4 v14, 0x3

    invoke-virtual {v15, v4, v7, v14}, Lyads/e83;->a([BII)V

    goto :goto_a

    :cond_1c
    move/from16 v16, v4

    move/from16 v17, v9

    :goto_a
    iget-object v4, v0, Lyads/g83;->f:Lyads/f83;

    iget-boolean v6, v4, Lyads/f83;->c:Z

    if-eqz v6, :cond_1f

    add-int/lit8 v6, v3, 0x1

    iget v7, v4, Lyads/f83;->f:I

    sub-int/2addr v6, v7

    if-ge v6, v2, :cond_1e

    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xc0

    shr-int/lit8 v6, v6, 0x6

    if-nez v6, :cond_1d

    const/4 v6, 0x1

    goto :goto_b

    :cond_1d
    const/4 v6, 0x0

    :goto_b
    iput-boolean v6, v4, Lyads/f83;->d:Z

    const/4 v7, 0x0

    iput-boolean v7, v4, Lyads/f83;->c:Z

    goto :goto_c

    :cond_1e
    add-int/2addr v7, v11

    iput v7, v4, Lyads/f83;->f:I

    :cond_1f
    :goto_c
    iget-object v4, v0, Lyads/g83;->e:Lyads/md4;

    if-eqz v4, :cond_23

    if-lez v11, :cond_20

    invoke-virtual {v4, v5, v3, v2}, Lyads/md4;->a([BII)V

    const/4 v3, 0x0

    goto :goto_d

    :cond_20
    neg-int v3, v11

    :goto_d
    iget-object v4, v0, Lyads/g83;->e:Lyads/md4;

    invoke-virtual {v4, v3}, Lyads/md4;->a(I)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, v0, Lyads/g83;->e:Lyads/md4;

    iget-object v4, v3, Lyads/md4;->d:[B

    iget v3, v3, Lyads/md4;->e:I

    invoke-static {v4, v3}, Lyads/qd4;->a([BI)I

    move-result v3

    iget-object v4, v0, Lyads/g83;->b:Lyads/os4;

    sget v6, Lyads/u56;->a:I

    iget-object v6, v0, Lyads/g83;->e:Lyads/md4;

    iget-object v6, v6, Lyads/md4;->d:[B

    iput-object v6, v4, Lyads/os4;->a:[B

    iput v3, v4, Lyads/os4;->c:I

    const/4 v7, 0x0

    iput v7, v4, Lyads/os4;->b:I

    iget-object v6, v0, Lyads/g83;->a:Lyads/s56;

    iget-wide v7, v0, Lyads/g83;->k:J

    const/16 v9, 0x9

    if-ge v3, v9, :cond_21

    goto :goto_e

    :cond_21
    invoke-virtual {v4}, Lyads/os4;->a()I

    move-result v3

    invoke-virtual {v4}, Lyads/os4;->a()I

    move-result v9

    invoke-virtual {v4}, Lyads/os4;->k()I

    move-result v11

    const/16 v12, 0x1b2

    if-ne v3, v12, :cond_22

    const v3, 0x47413934

    if-ne v9, v3, :cond_22

    const/4 v14, 0x3

    if-ne v11, v14, :cond_22

    iget-object v3, v6, Lyads/s56;->b:[Lyads/k06;

    invoke-static {v7, v8, v4, v3}, Lyads/ry;->b(JLyads/os4;[Lyads/k06;)V

    :cond_22
    :goto_e
    const/16 v3, 0xb2

    if-ne v10, v3, :cond_23

    iget-object v3, v1, Lyads/os4;->a:[B

    add-int/lit8 v4, v2, 0x2

    aget-byte v3, v3, v4

    const/4 v6, 0x1

    if-ne v3, v6, :cond_24

    iget-object v3, v0, Lyads/g83;->e:Lyads/md4;

    invoke-virtual {v3, v10}, Lyads/md4;->b(I)V

    goto :goto_f

    :cond_23
    const/4 v6, 0x1

    :cond_24
    :goto_f
    sub-int v4, v16, v2

    iget-wide v2, v0, Lyads/g83;->g:J

    int-to-long v7, v4

    sub-long/2addr v2, v7

    iget-object v7, v0, Lyads/g83;->f:Lyads/f83;

    iget-boolean v8, v0, Lyads/g83;->j:Z

    iget v9, v7, Lyads/f83;->e:I

    const/16 v11, 0xb6

    if-ne v9, v11, :cond_25

    if-eqz v8, :cond_25

    iget-boolean v8, v7, Lyads/f83;->b:Z

    if-eqz v8, :cond_25

    iget-wide v8, v7, Lyads/f83;->h:J

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v12, v8, v12

    if-eqz v12, :cond_25

    iget-wide v12, v7, Lyads/f83;->g:J

    sub-long v12, v2, v12

    long-to-int v12, v12

    iget-boolean v13, v7, Lyads/f83;->d:Z

    iget-object v14, v7, Lyads/f83;->a:Lyads/k06;

    const/16 v24, 0x0

    move/from16 v23, v4

    move-wide/from16 v19, v8

    move/from16 v22, v12

    move/from16 v21, v13

    move-object/from16 v18, v14

    invoke-interface/range {v18 .. v24}, Lyads/k06;->a(JIIILyads/j06;)V

    :cond_25
    iget v4, v7, Lyads/f83;->e:I

    const/16 v8, 0xb3

    if-eq v4, v8, :cond_26

    iput-wide v2, v7, Lyads/f83;->g:J

    :cond_26
    iget-object v2, v0, Lyads/g83;->f:Lyads/f83;

    iget-wide v3, v0, Lyads/g83;->k:J

    iput v10, v2, Lyads/f83;->e:I

    const/4 v7, 0x0

    iput-boolean v7, v2, Lyads/f83;->d:Z

    if-eq v10, v11, :cond_28

    if-ne v10, v8, :cond_27

    goto :goto_10

    :cond_27
    const/4 v7, 0x0

    goto :goto_11

    :cond_28
    :goto_10
    move v7, v6

    :goto_11
    iput-boolean v7, v2, Lyads/f83;->b:Z

    if-ne v10, v11, :cond_29

    goto :goto_12

    :cond_29
    const/4 v6, 0x0

    :goto_12
    iput-boolean v6, v2, Lyads/f83;->c:Z

    const/4 v7, 0x0

    iput v7, v2, Lyads/f83;->f:I

    iput-wide v3, v2, Lyads/f83;->h:J

    move/from16 v4, v16

    move/from16 v3, v17

    goto/16 :goto_0

    :cond_2a
    invoke-static {}, Lud;->g()V

    return-void

    :cond_2b
    invoke-static {}, Lud;->g()V

    return-void
.end method

.method public final a(Lyads/zs2;Lyads/t26;)V
    .locals 2

    .line 763
    invoke-virtual {p2}, Lyads/t26;->a()V

    .line 764
    invoke-virtual {p2}, Lyads/t26;->b()V

    .line 765
    iget-object v0, p2, Lyads/t26;->e:Ljava/lang/String;

    .line 766
    iput-object v0, p0, Lyads/g83;->h:Ljava/lang/String;

    .line 767
    invoke-virtual {p2}, Lyads/t26;->b()V

    .line 768
    iget v0, p2, Lyads/t26;->d:I

    const/4 v1, 0x2

    .line 769
    invoke-interface {p1, v0, v1}, Lyads/zs2;->a(II)Lyads/k06;

    move-result-object v0

    iput-object v0, p0, Lyads/g83;->i:Lyads/k06;

    .line 770
    new-instance v1, Lyads/f83;

    invoke-direct {v1, v0}, Lyads/f83;-><init>(Lyads/k06;)V

    iput-object v1, p0, Lyads/g83;->f:Lyads/f83;

    .line 771
    iget-object p0, p0, Lyads/g83;->a:Lyads/s56;

    .line 772
    invoke-virtual {p0, p1, p2}, Lyads/s56;->a(Lyads/zs2;Lyads/t26;)V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
