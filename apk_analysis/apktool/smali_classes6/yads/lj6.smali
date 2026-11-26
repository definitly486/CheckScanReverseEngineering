.class public final Lyads/lj6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/mj6;


# static fields
.field public static final m:[I

.field public static final n:[I


# instance fields
.field public final a:Lyads/zs2;

.field public final b:Lyads/k06;

.field public final c:Lyads/pj6;

.field public final d:I

.field public final e:[B

.field public final f:Lyads/os4;

.field public final g:I

.field public final h:Lyads/vz2;

.field public i:I

.field public j:J

.field public k:I

.field public l:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lyads/lj6;->m:[I

    const/16 v0, 0x59

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lyads/lj6;->n:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        0x2
        0x4
        0x6
        0x8
        -0x1
        -0x1
        -0x1
        -0x1
        0x2
        0x4
        0x6
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x10
        0x11
        0x13
        0x15
        0x17
        0x19
        0x1c
        0x1f
        0x22
        0x25
        0x29
        0x2d
        0x32
        0x37
        0x3c
        0x42
        0x49
        0x50
        0x58
        0x61
        0x6b
        0x76
        0x82
        0x8f
        0x9d
        0xad
        0xbe
        0xd1
        0xe6
        0xfd
        0x117
        0x133
        0x151
        0x173
        0x198
        0x1c1
        0x1ee
        0x220
        0x256
        0x292
        0x2d4
        0x31c
        0x36c
        0x3c3
        0x424
        0x48e
        0x502
        0x583
        0x610
        0x6ab
        0x756
        0x812
        0x8e0
        0x9c3
        0xabd
        0xbd0
        0xcff
        0xe4c
        0xfba
        0x114c
        0x1307
        0x14ee
        0x1706
        0x1954
        0x1bdc
        0x1ea5
        0x21b6
        0x2515
        0x28ca
        0x2cdf
        0x315b
        0x364b
        0x3bb9
        0x41b2
        0x4844
        0x4f7e
        0x5771
        0x602f
        0x69ce
        0x7462
        0x7fff
    .end array-data
.end method

.method public constructor <init>(Lyads/zs2;Lyads/k06;Lyads/pj6;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/lj6;->a:Lyads/zs2;

    iput-object p2, p0, Lyads/lj6;->b:Lyads/k06;

    iput-object p3, p0, Lyads/lj6;->c:Lyads/pj6;

    iget p1, p3, Lyads/pj6;->b:I

    div-int/lit8 p1, p1, 0xa

    const/4 p2, 0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lyads/lj6;->g:I

    iget-object v0, p3, Lyads/pj6;->e:[B

    array-length v1, v0

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    aget-byte v1, v0, p2

    const/4 v1, 0x2

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x3

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v2

    iput v0, p0, Lyads/lj6;->d:I

    iget v2, p3, Lyads/pj6;->a:I

    iget v3, p3, Lyads/pj6;->c:I

    mul-int/lit8 v4, v2, 0x4

    sub-int v4, v3, v4

    mul-int/lit8 v4, v4, 0x8

    iget v5, p3, Lyads/pj6;->d:I

    mul-int/2addr v5, v2

    div-int/2addr v4, v5

    add-int/2addr v4, p2

    if-ne v0, v4, :cond_0

    sget v4, Lyads/u56;->a:I

    add-int v4, p1, v0

    sub-int/2addr v4, p2

    div-int/2addr v4, v0

    mul-int/2addr v3, v4

    new-array p2, v3, [B

    iput-object p2, p0, Lyads/lj6;->e:[B

    new-instance p2, Lyads/os4;

    mul-int/lit8 v3, v0, 0x2

    mul-int/2addr v3, v2

    mul-int/2addr v3, v4

    invoke-direct {p2, v3}, Lyads/os4;-><init>(I)V

    iput-object p2, p0, Lyads/lj6;->f:Lyads/os4;

    iget p2, p3, Lyads/pj6;->b:I

    iget v3, p3, Lyads/pj6;->c:I

    mul-int/2addr v3, p2

    mul-int/lit8 v3, v3, 0x8

    div-int/2addr v3, v0

    new-instance v0, Lyads/uz2;

    invoke-direct {v0}, Lyads/uz2;-><init>()V

    const-string v4, "audio/raw"

    iput-object v4, v0, Lyads/uz2;->k:Ljava/lang/String;

    iput v3, v0, Lyads/uz2;->f:I

    iput v3, v0, Lyads/uz2;->g:I

    mul-int/2addr p1, v1

    mul-int/2addr p1, v2

    iput p1, v0, Lyads/uz2;->l:I

    iget p1, p3, Lyads/pj6;->a:I

    iput p1, v0, Lyads/uz2;->x:I

    iput p2, v0, Lyads/uz2;->y:I

    iput v1, v0, Lyads/uz2;->z:I

    new-instance p1, Lyads/vz2;

    invoke-direct {p1, v0}, Lyads/vz2;-><init>(Lyads/uz2;)V

    iput-object p1, p0, Lyads/lj6;->h:Lyads/vz2;

    return-void

    :cond_0
    const-string p0, "Expected frames per block: "

    const-string p1, "; got: "

    invoke-static {v4, v0, p0, p1}, Lrz0;->c(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method


# virtual methods
.method public final a(IJ)V
    .locals 8

    .line 443
    iget-object v0, p0, Lyads/lj6;->a:Lyads/zs2;

    new-instance v1, Lyads/sj6;

    iget-object v2, p0, Lyads/lj6;->c:Lyads/pj6;

    iget v3, p0, Lyads/lj6;->d:I

    int-to-long v4, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lyads/sj6;-><init>(Lyads/pj6;IJJ)V

    invoke-interface {v0, v1}, Lyads/zs2;->a(Lyads/sh5;)V

    .line 444
    iget-object p1, p0, Lyads/lj6;->b:Lyads/k06;

    iget-object p0, p0, Lyads/lj6;->h:Lyads/vz2;

    invoke-interface {p1, p0}, Lyads/k06;->a(Lyads/vz2;)V

    return-void
.end method

.method public final a(J)V
    .locals 1

    const/4 v0, 0x0

    .line 445
    iput v0, p0, Lyads/lj6;->i:I

    .line 446
    iput-wide p1, p0, Lyads/lj6;->j:J

    .line 447
    iput v0, p0, Lyads/lj6;->k:I

    const-wide/16 p1, 0x0

    .line 448
    iput-wide p1, p0, Lyads/lj6;->l:J

    return-void
.end method

.method public final a(Lyads/wk0;J)Z
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    iget v3, v0, Lyads/lj6;->g:I

    iget v4, v0, Lyads/lj6;->k:I

    iget-object v5, v0, Lyads/lj6;->c:Lyads/pj6;

    iget v6, v5, Lyads/pj6;->a:I

    mul-int/lit8 v6, v6, 0x2

    div-int/2addr v4, v6

    sub-int/2addr v3, v4

    iget v4, v0, Lyads/lj6;->d:I

    sget v6, Lyads/u56;->a:I

    add-int/2addr v3, v4

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    div-int/2addr v3, v4

    iget v4, v5, Lyads/pj6;->c:I

    mul-int/2addr v3, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_0

    move-object/from16 v4, p1

    goto :goto_1

    :cond_0
    move-object/from16 v4, p1

    const/4 v7, 0x0

    :goto_0
    if-nez v7, :cond_2

    iget v8, v0, Lyads/lj6;->i:I

    if-ge v8, v3, :cond_2

    sub-int v8, v3, v8

    int-to-long v8, v8

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    iget-object v9, v0, Lyads/lj6;->e:[B

    iget v10, v0, Lyads/lj6;->i:I

    invoke-virtual {v4, v9, v10, v8}, Lyads/wk0;->c([BII)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    :goto_1
    move v7, v6

    goto :goto_0

    :cond_1
    iget v9, v0, Lyads/lj6;->i:I

    add-int/2addr v9, v8

    iput v9, v0, Lyads/lj6;->i:I

    goto :goto_0

    :cond_2
    iget v1, v0, Lyads/lj6;->i:I

    iget-object v2, v0, Lyads/lj6;->c:Lyads/pj6;

    iget v2, v2, Lyads/pj6;->c:I

    div-int/2addr v1, v2

    if-lez v1, :cond_8

    iget-object v2, v0, Lyads/lj6;->e:[B

    iget-object v3, v0, Lyads/lj6;->f:Lyads/os4;

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v1, :cond_7

    const/4 v8, 0x0

    :goto_3
    iget-object v9, v0, Lyads/lj6;->c:Lyads/pj6;

    iget v10, v9, Lyads/pj6;->a:I

    if-ge v8, v10, :cond_6

    iget-object v11, v3, Lyads/os4;->a:[B

    iget v9, v9, Lyads/pj6;->c:I

    mul-int v12, v4, v9

    mul-int/lit8 v13, v8, 0x4

    add-int/2addr v13, v12

    mul-int/lit8 v12, v10, 0x4

    add-int/2addr v12, v13

    div-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x4

    add-int/lit8 v14, v13, 0x1

    aget-byte v14, v2, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    aget-byte v15, v2, v13

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v14, v15

    int-to-short v14, v14

    add-int/lit8 v13, v13, 0x2

    aget-byte v13, v2, v13

    and-int/lit16 v13, v13, 0xff

    const/16 v15, 0x58

    invoke-static {v13, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    sget-object v16, Lyads/lj6;->n:[I

    aget v16, v16, v13

    move/from16 v17, v6

    iget v6, v0, Lyads/lj6;->d:I

    mul-int/2addr v6, v4

    mul-int/2addr v6, v10

    add-int/2addr v6, v8

    mul-int/lit8 v6, v6, 0x2

    and-int/lit16 v5, v14, 0xff

    int-to-byte v5, v5

    aput-byte v5, v11, v6

    add-int/lit8 v5, v6, 0x1

    shr-int/lit8 v15, v14, 0x8

    int-to-byte v15, v15

    aput-byte v15, v11, v5

    const/4 v5, 0x0

    :goto_4
    mul-int/lit8 v15, v9, 0x2

    if-ge v5, v15, :cond_5

    div-int/lit8 v15, v5, 0x8

    div-int/lit8 v18, v5, 0x2

    rem-int/lit8 v18, v18, 0x4

    mul-int/2addr v15, v10

    mul-int/lit8 v15, v15, 0x4

    add-int/2addr v15, v12

    add-int v15, v15, v18

    aget-byte v15, v2, v15

    move/from16 p2, v1

    and-int/lit16 v1, v15, 0xff

    rem-int/lit8 v18, v5, 0x2

    if-nez v18, :cond_3

    and-int/lit8 v1, v15, 0xf

    goto :goto_5

    :cond_3
    shr-int/lit8 v1, v1, 0x4

    :goto_5
    and-int/lit8 v15, v1, 0x7

    mul-int/lit8 v15, v15, 0x2

    add-int/lit8 v15, v15, 0x1

    mul-int v15, v15, v16

    shr-int/lit8 v15, v15, 0x3

    and-int/lit8 v16, v1, 0x8

    if-eqz v16, :cond_4

    neg-int v15, v15

    :cond_4
    add-int/2addr v14, v15

    sget v15, Lyads/u56;->a:I

    const/16 v15, 0x7fff

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    const/16 v15, -0x8000

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    mul-int/lit8 v15, v10, 0x2

    add-int/2addr v6, v15

    and-int/lit16 v15, v14, 0xff

    int-to-byte v15, v15

    aput-byte v15, v11, v6

    add-int/lit8 v15, v6, 0x1

    move/from16 p3, v1

    shr-int/lit8 v1, v14, 0x8

    int-to-byte v1, v1

    aput-byte v1, v11, v15

    sget-object v1, Lyads/lj6;->m:[I

    aget v1, v1, p3

    add-int/2addr v13, v1

    sget-object v1, Lyads/lj6;->n:[I

    const/16 v15, 0x58

    invoke-static {v13, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    const/4 v15, 0x0

    invoke-static {v15, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    aget v16, v1, v13

    add-int/lit8 v5, v5, 0x1

    move/from16 v1, p2

    goto :goto_4

    :cond_5
    move/from16 p2, v1

    add-int/lit8 v8, v8, 0x1

    move/from16 v6, v17

    goto/16 :goto_3

    :cond_6
    move/from16 p2, v1

    move/from16 v17, v6

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_7
    move/from16 p2, v1

    iget v1, v0, Lyads/lj6;->d:I

    mul-int v1, v1, p2

    iget-object v2, v0, Lyads/lj6;->c:Lyads/pj6;

    iget v2, v2, Lyads/pj6;->a:I

    mul-int/lit8 v1, v1, 0x2

    mul-int/2addr v1, v2

    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Lyads/os4;->e(I)V

    invoke-virtual {v3, v1}, Lyads/os4;->d(I)V

    iget v1, v0, Lyads/lj6;->i:I

    iget-object v2, v0, Lyads/lj6;->c:Lyads/pj6;

    iget v2, v2, Lyads/pj6;->c:I

    mul-int v2, v2, p2

    sub-int/2addr v1, v2

    iput v1, v0, Lyads/lj6;->i:I

    iget-object v1, v0, Lyads/lj6;->f:Lyads/os4;

    iget v2, v1, Lyads/os4;->c:I

    iget-object v3, v0, Lyads/lj6;->b:Lyads/k06;

    invoke-interface {v3, v2, v1}, Lyads/k06;->a(ILyads/os4;)V

    iget v1, v0, Lyads/lj6;->k:I

    add-int/2addr v1, v2

    iput v1, v0, Lyads/lj6;->k:I

    iget-object v2, v0, Lyads/lj6;->c:Lyads/pj6;

    iget v3, v2, Lyads/pj6;->a:I

    mul-int/lit8 v3, v3, 0x2

    div-int/2addr v1, v3

    iget v3, v0, Lyads/lj6;->g:I

    if-lt v1, v3, :cond_8

    iget-wide v4, v0, Lyads/lj6;->j:J

    iget-wide v8, v0, Lyads/lj6;->l:J

    iget v1, v2, Lyads/pj6;->b:I

    int-to-long v12, v1

    const-wide/32 v10, 0xf4240

    invoke-static/range {v8 .. v13}, Lyads/u56;->a(JJJ)J

    move-result-wide v1

    add-long v9, v4, v1

    iget-object v1, v0, Lyads/lj6;->c:Lyads/pj6;

    iget v1, v1, Lyads/pj6;->a:I

    mul-int/lit8 v2, v3, 0x2

    mul-int v12, v2, v1

    iget v1, v0, Lyads/lj6;->k:I

    sub-int v13, v1, v12

    iget-object v8, v0, Lyads/lj6;->b:Lyads/k06;

    const/4 v11, 0x1

    const/4 v14, 0x0

    invoke-interface/range {v8 .. v14}, Lyads/k06;->a(JIIILyads/j06;)V

    iget-wide v1, v0, Lyads/lj6;->l:J

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lyads/lj6;->l:J

    iget v1, v0, Lyads/lj6;->k:I

    sub-int/2addr v1, v12

    iput v1, v0, Lyads/lj6;->k:I

    :cond_8
    if-eqz v7, :cond_9

    iget v1, v0, Lyads/lj6;->k:I

    iget-object v2, v0, Lyads/lj6;->c:Lyads/pj6;

    iget v3, v2, Lyads/pj6;->a:I

    mul-int/lit8 v3, v3, 0x2

    div-int/2addr v1, v3

    if-lez v1, :cond_9

    iget-wide v3, v0, Lyads/lj6;->j:J

    iget-wide v8, v0, Lyads/lj6;->l:J

    iget v2, v2, Lyads/pj6;->b:I

    int-to-long v12, v2

    const-wide/32 v10, 0xf4240

    invoke-static/range {v8 .. v13}, Lyads/u56;->a(JJJ)J

    move-result-wide v5

    add-long v9, v3, v5

    iget-object v2, v0, Lyads/lj6;->c:Lyads/pj6;

    iget v2, v2, Lyads/pj6;->a:I

    mul-int/lit8 v3, v1, 0x2

    mul-int v12, v3, v2

    iget v2, v0, Lyads/lj6;->k:I

    sub-int v13, v2, v12

    iget-object v8, v0, Lyads/lj6;->b:Lyads/k06;

    const/4 v11, 0x1

    const/4 v14, 0x0

    invoke-interface/range {v8 .. v14}, Lyads/k06;->a(JIIILyads/j06;)V

    iget-wide v2, v0, Lyads/lj6;->l:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lyads/lj6;->l:J

    iget v1, v0, Lyads/lj6;->k:I

    sub-int/2addr v1, v12

    iput v1, v0, Lyads/lj6;->k:I

    :cond_9
    return v7
.end method
