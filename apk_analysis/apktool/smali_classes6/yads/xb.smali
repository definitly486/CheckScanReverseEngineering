.class public final Lyads/xb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/zm2;


# static fields
.field public static final v:[B


# instance fields
.field public final a:Z

.field public final b:Lyads/ns4;

.field public final c:Lyads/os4;

.field public final d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Lyads/k06;

.field public g:Lyads/k06;

.field public h:I

.field public i:I

.field public j:I

.field public k:Z

.field public l:Z

.field public m:I

.field public n:I

.field public o:I

.field public p:Z

.field public q:J

.field public r:I

.field public s:J

.field public t:Lyads/k06;

.field public u:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lyads/xb;->v:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/ns4;

    const/4 v1, 0x7

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lyads/ns4;-><init>([B)V

    iput-object v0, p0, Lyads/xb;->b:Lyads/ns4;

    new-instance v0, Lyads/os4;

    sget-object v1, Lyads/xb;->v:[B

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lyads/os4;-><init>([B)V

    iput-object v0, p0, Lyads/xb;->c:Lyads/os4;

    const/4 v0, 0x0

    iput v0, p0, Lyads/xb;->h:I

    iput v0, p0, Lyads/xb;->i:I

    const/16 v0, 0x100

    iput v0, p0, Lyads/xb;->j:I

    const/4 v0, -0x1

    iput v0, p0, Lyads/xb;->m:I

    iput v0, p0, Lyads/xb;->n:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lyads/xb;->q:J

    iput-wide v0, p0, Lyads/xb;->s:J

    iput-boolean p2, p0, Lyads/xb;->a:Z

    iput-object p1, p0, Lyads/xb;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 819
    iput-wide v0, p0, Lyads/xb;->s:J

    const/4 v0, 0x0

    .line 820
    iput-boolean v0, p0, Lyads/xb;->l:Z

    .line 821
    iput v0, p0, Lyads/xb;->h:I

    .line 822
    iput v0, p0, Lyads/xb;->i:I

    const/16 v0, 0x100

    .line 823
    iput v0, p0, Lyads/xb;->j:I

    return-void
.end method

.method public final a(IJ)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p2, v0

    if-eqz p1, :cond_0

    .line 818
    iput-wide p2, p0, Lyads/xb;->s:J

    :cond_0
    return-void
.end method

.method public final a(Lyads/os4;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lyads/xb;->f:Lyads/k06;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Lyads/u56;->a:I

    :cond_0
    :goto_0
    iget v2, v1, Lyads/os4;->c:I

    iget v3, v1, Lyads/os4;->b:I

    sub-int v4, v2, v3

    if-lez v4, :cond_27

    iget v5, v0, Lyads/xb;->h:I

    const/16 v6, 0xd

    const/16 v7, 0x100

    const/4 v8, -0x1

    const/4 v9, 0x7

    const/4 v10, 0x4

    const/4 v11, 0x2

    const/4 v12, 0x3

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v5, :cond_d

    if-eq v5, v13, :cond_9

    const/16 v2, 0xa

    if-eq v5, v11, :cond_8

    if-eq v5, v12, :cond_3

    if-ne v5, v10, :cond_2

    iget v2, v0, Lyads/xb;->r:I

    iget v3, v0, Lyads/xb;->i:I

    sub-int/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, v0, Lyads/xb;->t:Lyads/k06;

    invoke-interface {v3, v2, v1}, Lyads/k06;->a(ILyads/os4;)V

    iget v3, v0, Lyads/xb;->i:I

    add-int/2addr v3, v2

    iput v3, v0, Lyads/xb;->i:I

    iget v2, v0, Lyads/xb;->r:I

    if-ne v3, v2, :cond_0

    iget-wide v3, v0, Lyads/xb;->s:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v3, v5

    if-eqz v5, :cond_1

    iget-object v15, v0, Lyads/xb;->t:Lyads/k06;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v18, 0x1

    move/from16 v19, v2

    move-wide/from16 v16, v3

    invoke-interface/range {v15 .. v21}, Lyads/k06;->a(JIIILyads/j06;)V

    iget-wide v2, v0, Lyads/xb;->s:J

    iget-wide v4, v0, Lyads/xb;->u:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lyads/xb;->s:J

    :cond_1
    iput v14, v0, Lyads/xb;->h:I

    iput v14, v0, Lyads/xb;->i:I

    iput v7, v0, Lyads/xb;->j:I

    goto :goto_0

    :cond_2
    invoke-static {}, Lud;->g()V

    return-void

    :cond_3
    iget-boolean v3, v0, Lyads/xb;->k:Z

    const/4 v5, 0x5

    if-eqz v3, :cond_4

    move v3, v9

    goto :goto_1

    :cond_4
    move v3, v5

    :goto_1
    iget-object v7, v0, Lyads/xb;->b:Lyads/ns4;

    iget-object v7, v7, Lyads/ns4;->a:[B

    iget v8, v0, Lyads/xb;->i:I

    sub-int v8, v3, v8

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v8, v0, Lyads/xb;->i:I

    invoke-virtual {v1, v7, v8, v4}, Lyads/os4;->a([BII)V

    iget v7, v0, Lyads/xb;->i:I

    add-int/2addr v7, v4

    iput v7, v0, Lyads/xb;->i:I

    if-ne v7, v3, :cond_0

    iget-object v3, v0, Lyads/xb;->b:Lyads/ns4;

    invoke-virtual {v3, v14}, Lyads/ns4;->b(I)V

    iget-boolean v3, v0, Lyads/xb;->p:Z

    iget-object v4, v0, Lyads/xb;->b:Lyads/ns4;

    if-nez v3, :cond_6

    invoke-virtual {v4, v11}, Lyads/ns4;->a(I)I

    move-result v2

    add-int/2addr v2, v13

    if-eq v2, v11, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Detected audio object type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", but assuming AAC LC."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AdtsReader"

    invoke-static {v3, v2}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v11

    :cond_5
    iget-object v3, v0, Lyads/xb;->b:Lyads/ns4;

    invoke-virtual {v3, v5}, Lyads/ns4;->c(I)V

    iget-object v3, v0, Lyads/xb;->b:Lyads/ns4;

    invoke-virtual {v3, v12}, Lyads/ns4;->a(I)I

    move-result v3

    iget v4, v0, Lyads/xb;->n:I

    shl-int/2addr v2, v12

    and-int/lit16 v2, v2, 0xf8

    shr-int/lit8 v5, v4, 0x1

    and-int/2addr v5, v9

    or-int/2addr v2, v5

    int-to-byte v2, v2

    shl-int/2addr v4, v9

    and-int/lit16 v4, v4, 0x80

    shl-int/2addr v3, v12

    and-int/lit8 v3, v3, 0x78

    or-int/2addr v3, v4

    int-to-byte v3, v3

    new-array v4, v11, [B

    aput-byte v2, v4, v14

    aput-byte v3, v4, v13

    new-instance v2, Lyads/ns4;

    invoke-direct {v2, v4}, Lyads/ns4;-><init>([B)V

    invoke-static {v2, v14}, Lyads/b;->a(Lyads/ns4;Z)Lyads/a;

    move-result-object v2

    new-instance v3, Lyads/uz2;

    invoke-direct {v3}, Lyads/uz2;-><init>()V

    iget-object v5, v0, Lyads/xb;->e:Ljava/lang/String;

    iput-object v5, v3, Lyads/uz2;->a:Ljava/lang/String;

    const-string v5, "audio/mp4a-latm"

    iput-object v5, v3, Lyads/uz2;->k:Ljava/lang/String;

    iget-object v5, v2, Lyads/a;->c:Ljava/lang/String;

    iput-object v5, v3, Lyads/uz2;->h:Ljava/lang/String;

    iget v5, v2, Lyads/a;->b:I

    iput v5, v3, Lyads/uz2;->x:I

    iget v2, v2, Lyads/a;->a:I

    iput v2, v3, Lyads/uz2;->y:I

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v3, Lyads/uz2;->m:Ljava/util/List;

    iget-object v2, v0, Lyads/xb;->d:Ljava/lang/String;

    iput-object v2, v3, Lyads/uz2;->c:Ljava/lang/String;

    new-instance v2, Lyads/vz2;

    invoke-direct {v2, v3}, Lyads/vz2;-><init>(Lyads/uz2;)V

    iget v3, v2, Lyads/vz2;->A:I

    int-to-long v3, v3

    const-wide/32 v7, 0x3d090000

    div-long/2addr v7, v3

    iput-wide v7, v0, Lyads/xb;->q:J

    iget-object v3, v0, Lyads/xb;->f:Lyads/k06;

    invoke-interface {v3, v2}, Lyads/k06;->a(Lyads/vz2;)V

    iput-boolean v13, v0, Lyads/xb;->p:Z

    goto :goto_2

    :cond_6
    invoke-virtual {v4, v2}, Lyads/ns4;->c(I)V

    :goto_2
    iget-object v2, v0, Lyads/xb;->b:Lyads/ns4;

    invoke-virtual {v2, v10}, Lyads/ns4;->c(I)V

    iget-object v2, v0, Lyads/xb;->b:Lyads/ns4;

    invoke-virtual {v2, v6}, Lyads/ns4;->a(I)I

    move-result v2

    add-int/lit8 v3, v2, -0x7

    iget-boolean v4, v0, Lyads/xb;->k:Z

    if-eqz v4, :cond_7

    add-int/lit8 v3, v2, -0x9

    :cond_7
    iget-object v2, v0, Lyads/xb;->f:Lyads/k06;

    iget-wide v4, v0, Lyads/xb;->q:J

    iput v10, v0, Lyads/xb;->h:I

    iput v14, v0, Lyads/xb;->i:I

    iput-object v2, v0, Lyads/xb;->t:Lyads/k06;

    iput-wide v4, v0, Lyads/xb;->u:J

    iput v3, v0, Lyads/xb;->r:I

    goto/16 :goto_0

    :cond_8
    iget-object v3, v0, Lyads/xb;->c:Lyads/os4;

    iget-object v3, v3, Lyads/os4;->a:[B

    iget v5, v0, Lyads/xb;->i:I

    rsub-int/lit8 v5, v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, v0, Lyads/xb;->i:I

    invoke-virtual {v1, v3, v5, v4}, Lyads/os4;->a([BII)V

    iget v3, v0, Lyads/xb;->i:I

    add-int/2addr v3, v4

    iput v3, v0, Lyads/xb;->i:I

    if-ne v3, v2, :cond_0

    iget-object v3, v0, Lyads/xb;->g:Lyads/k06;

    iget-object v4, v0, Lyads/xb;->c:Lyads/os4;

    invoke-interface {v3, v2, v4}, Lyads/k06;->a(ILyads/os4;)V

    iget-object v3, v0, Lyads/xb;->c:Lyads/os4;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lyads/os4;->e(I)V

    iget-object v3, v0, Lyads/xb;->g:Lyads/k06;

    iget-object v4, v0, Lyads/xb;->c:Lyads/os4;

    invoke-virtual {v4}, Lyads/os4;->j()I

    move-result v4

    add-int/2addr v4, v2

    iput v10, v0, Lyads/xb;->h:I

    iput v2, v0, Lyads/xb;->i:I

    iput-object v3, v0, Lyads/xb;->t:Lyads/k06;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lyads/xb;->u:J

    iput v4, v0, Lyads/xb;->r:I

    goto/16 :goto_0

    :cond_9
    if-nez v4, :cond_a

    goto/16 :goto_0

    :cond_a
    iget-object v2, v0, Lyads/xb;->b:Lyads/ns4;

    iget-object v4, v2, Lyads/ns4;->a:[B

    iget-object v5, v1, Lyads/os4;->a:[B

    aget-byte v3, v5, v3

    aput-byte v3, v4, v14

    invoke-virtual {v2, v11}, Lyads/ns4;->b(I)V

    iget-object v2, v0, Lyads/xb;->b:Lyads/ns4;

    invoke-virtual {v2, v10}, Lyads/ns4;->a(I)I

    move-result v2

    iget v3, v0, Lyads/xb;->n:I

    if-eq v3, v8, :cond_b

    if-eq v2, v3, :cond_b

    iput-boolean v14, v0, Lyads/xb;->l:Z

    iput v14, v0, Lyads/xb;->h:I

    iput v14, v0, Lyads/xb;->i:I

    iput v7, v0, Lyads/xb;->j:I

    goto/16 :goto_0

    :cond_b
    iget-boolean v3, v0, Lyads/xb;->l:Z

    if-nez v3, :cond_c

    iput-boolean v13, v0, Lyads/xb;->l:Z

    iget v3, v0, Lyads/xb;->o:I

    iput v3, v0, Lyads/xb;->m:I

    iput v2, v0, Lyads/xb;->n:I

    :cond_c
    iput v12, v0, Lyads/xb;->h:I

    iput v14, v0, Lyads/xb;->i:I

    goto/16 :goto_0

    :cond_d
    iget-object v4, v1, Lyads/os4;->a:[B

    :goto_3
    if-ge v3, v2, :cond_26

    add-int/lit8 v5, v3, 0x1

    aget-byte v15, v4, v3

    and-int/lit16 v7, v15, 0xff

    move/from16 v17, v12

    iget v12, v0, Lyads/xb;->j:I

    const/16 v9, 0x200

    if-ne v12, v9, :cond_e

    int-to-byte v12, v7

    and-int/lit16 v12, v12, 0xff

    const v19, 0xff00

    or-int v12, v12, v19

    const v20, 0xfff6

    and-int v12, v12, v20

    const v9, 0xfff0

    if-ne v12, v9, :cond_e

    iget-boolean v12, v0, Lyads/xb;->l:Z

    if-nez v12, :cond_1d

    add-int/lit8 v12, v3, -0x1

    invoke-virtual {v1, v3}, Lyads/os4;->e(I)V

    iget-object v9, v0, Lyads/xb;->b:Lyads/ns4;

    iget-object v9, v9, Lyads/ns4;->a:[B

    iget v6, v1, Lyads/os4;->c:I

    iget v11, v1, Lyads/os4;->b:I

    sub-int/2addr v6, v11

    if-ge v6, v13, :cond_f

    :cond_e
    :goto_4
    move v11, v8

    goto/16 :goto_9

    :cond_f
    invoke-virtual {v1, v9, v14, v13}, Lyads/os4;->a([BII)V

    iget-object v6, v0, Lyads/xb;->b:Lyads/ns4;

    invoke-virtual {v6, v10}, Lyads/ns4;->b(I)V

    iget-object v6, v0, Lyads/xb;->b:Lyads/ns4;

    invoke-virtual {v6, v13}, Lyads/ns4;->a(I)I

    move-result v6

    iget v9, v0, Lyads/xb;->m:I

    if-eq v9, v8, :cond_10

    if-eq v6, v9, :cond_10

    goto :goto_4

    :cond_10
    iget v9, v0, Lyads/xb;->n:I

    if-eq v9, v8, :cond_13

    iget-object v9, v0, Lyads/xb;->b:Lyads/ns4;

    iget-object v9, v9, Lyads/ns4;->a:[B

    iget v11, v1, Lyads/os4;->c:I

    iget v8, v1, Lyads/os4;->b:I

    sub-int/2addr v11, v8

    if-ge v11, v13, :cond_11

    goto/16 :goto_6

    :cond_11
    invoke-virtual {v1, v9, v14, v13}, Lyads/os4;->a([BII)V

    iget-object v8, v0, Lyads/xb;->b:Lyads/ns4;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lyads/ns4;->b(I)V

    iget-object v8, v0, Lyads/xb;->b:Lyads/ns4;

    invoke-virtual {v8, v10}, Lyads/ns4;->a(I)I

    move-result v8

    iget v9, v0, Lyads/xb;->n:I

    if-eq v8, v9, :cond_12

    :goto_5
    const/4 v11, -0x1

    goto/16 :goto_9

    :cond_12
    invoke-virtual {v1, v5}, Lyads/os4;->e(I)V

    :cond_13
    iget-object v8, v0, Lyads/xb;->b:Lyads/ns4;

    iget-object v8, v8, Lyads/ns4;->a:[B

    iget v9, v1, Lyads/os4;->c:I

    iget v11, v1, Lyads/os4;->b:I

    sub-int/2addr v9, v11

    if-ge v9, v10, :cond_14

    goto :goto_6

    :cond_14
    invoke-virtual {v1, v8, v14, v10}, Lyads/os4;->a([BII)V

    iget-object v8, v0, Lyads/xb;->b:Lyads/ns4;

    const/16 v9, 0xe

    invoke-virtual {v8, v9}, Lyads/ns4;->b(I)V

    iget-object v8, v0, Lyads/xb;->b:Lyads/ns4;

    const/16 v9, 0xd

    invoke-virtual {v8, v9}, Lyads/ns4;->a(I)I

    move-result v8

    const/4 v11, 0x7

    if-ge v8, v11, :cond_15

    goto :goto_5

    :cond_15
    iget-object v9, v1, Lyads/os4;->a:[B

    iget v10, v1, Lyads/os4;->c:I

    add-int/2addr v12, v8

    if-lt v12, v10, :cond_16

    goto :goto_6

    :cond_16
    aget-byte v8, v9, v12

    const/4 v11, -0x1

    if-ne v8, v11, :cond_18

    add-int/lit8 v12, v12, 0x1

    if-ne v12, v10, :cond_17

    goto :goto_6

    :cond_17
    aget-byte v8, v9, v12

    and-int/lit16 v9, v8, 0xff

    or-int v9, v9, v19

    and-int v9, v9, v20

    const v10, 0xfff0

    if-ne v9, v10, :cond_20

    and-int/lit8 v8, v8, 0x8

    shr-int/lit8 v8, v8, 0x3

    if-ne v8, v6, :cond_20

    goto :goto_6

    :cond_18
    const/16 v6, 0x49

    if-eq v8, v6, :cond_19

    goto :goto_9

    :cond_19
    add-int/lit8 v6, v12, 0x1

    if-ne v6, v10, :cond_1a

    goto :goto_6

    :cond_1a
    aget-byte v6, v9, v6

    const/16 v8, 0x44

    if-eq v6, v8, :cond_1b

    goto :goto_9

    :cond_1b
    add-int/lit8 v12, v12, 0x2

    if-ne v12, v10, :cond_1c

    goto :goto_6

    :cond_1c
    aget-byte v6, v9, v12

    const/16 v8, 0x33

    if-ne v6, v8, :cond_20

    :cond_1d
    :goto_6
    and-int/lit8 v2, v15, 0x8

    shr-int/lit8 v2, v2, 0x3

    iput v2, v0, Lyads/xb;->o:I

    and-int/lit8 v2, v15, 0x1

    if-nez v2, :cond_1e

    move v2, v13

    goto :goto_7

    :cond_1e
    move v2, v14

    :goto_7
    iput-boolean v2, v0, Lyads/xb;->k:Z

    iget-boolean v2, v0, Lyads/xb;->l:Z

    if-nez v2, :cond_1f

    iput v13, v0, Lyads/xb;->h:I

    iput v14, v0, Lyads/xb;->i:I

    goto :goto_8

    :cond_1f
    move/from16 v2, v17

    iput v2, v0, Lyads/xb;->h:I

    iput v14, v0, Lyads/xb;->i:I

    :goto_8
    invoke-virtual {v1, v5}, Lyads/os4;->e(I)V

    goto/16 :goto_0

    :cond_20
    :goto_9
    iget v6, v0, Lyads/xb;->j:I

    or-int/2addr v7, v6

    const/16 v8, 0x149

    if-eq v7, v8, :cond_25

    const/16 v8, 0x1ff

    if-eq v7, v8, :cond_24

    const/16 v8, 0x344

    if-eq v7, v8, :cond_23

    const/16 v8, 0x433

    if-eq v7, v8, :cond_22

    const/16 v7, 0x100

    if-eq v6, v7, :cond_21

    iput v7, v0, Lyads/xb;->j:I

    move v8, v11

    const/16 v6, 0xd

    const/4 v9, 0x7

    const/4 v10, 0x4

    const/4 v11, 0x2

    const/4 v12, 0x3

    goto/16 :goto_3

    :cond_21
    const/4 v6, 0x3

    const/4 v9, 0x2

    goto :goto_a

    :cond_22
    const/4 v9, 0x2

    iput v9, v0, Lyads/xb;->h:I

    const/4 v6, 0x3

    iput v6, v0, Lyads/xb;->i:I

    iput v14, v0, Lyads/xb;->r:I

    iget-object v2, v0, Lyads/xb;->c:Lyads/os4;

    invoke-virtual {v2, v14}, Lyads/os4;->e(I)V

    invoke-virtual {v1, v5}, Lyads/os4;->e(I)V

    goto/16 :goto_0

    :cond_23
    const/4 v6, 0x3

    const/16 v7, 0x100

    const/4 v9, 0x2

    const/16 v3, 0x400

    iput v3, v0, Lyads/xb;->j:I

    goto :goto_a

    :cond_24
    const/16 v3, 0x200

    const/4 v6, 0x3

    const/16 v7, 0x100

    const/4 v9, 0x2

    iput v3, v0, Lyads/xb;->j:I

    goto :goto_a

    :cond_25
    const/4 v6, 0x3

    const/16 v7, 0x100

    const/4 v9, 0x2

    const/16 v3, 0x300

    iput v3, v0, Lyads/xb;->j:I

    :goto_a
    move v3, v5

    move v12, v6

    move v8, v11

    const/16 v6, 0xd

    const/4 v10, 0x4

    move v11, v9

    const/4 v9, 0x7

    goto/16 :goto_3

    :cond_26
    invoke-virtual {v1, v3}, Lyads/os4;->e(I)V

    goto/16 :goto_0

    :cond_27
    return-void
.end method

.method public final a(Lyads/zs2;Lyads/t26;)V
    .locals 2

    .line 796
    invoke-virtual {p2}, Lyads/t26;->a()V

    .line 797
    invoke-virtual {p2}, Lyads/t26;->b()V

    .line 798
    iget-object v0, p2, Lyads/t26;->e:Ljava/lang/String;

    .line 799
    iput-object v0, p0, Lyads/xb;->e:Ljava/lang/String;

    .line 800
    invoke-virtual {p2}, Lyads/t26;->b()V

    .line 801
    iget v0, p2, Lyads/t26;->d:I

    const/4 v1, 0x1

    .line 802
    invoke-interface {p1, v0, v1}, Lyads/zs2;->a(II)Lyads/k06;

    move-result-object v0

    iput-object v0, p0, Lyads/xb;->f:Lyads/k06;

    .line 803
    iput-object v0, p0, Lyads/xb;->t:Lyads/k06;

    .line 804
    iget-boolean v0, p0, Lyads/xb;->a:Z

    if-eqz v0, :cond_0

    .line 805
    invoke-virtual {p2}, Lyads/t26;->a()V

    .line 806
    invoke-virtual {p2}, Lyads/t26;->b()V

    .line 807
    iget v0, p2, Lyads/t26;->d:I

    const/4 v1, 0x5

    .line 808
    invoke-interface {p1, v0, v1}, Lyads/zs2;->a(II)Lyads/k06;

    move-result-object p1

    iput-object p1, p0, Lyads/xb;->g:Lyads/k06;

    .line 809
    new-instance p0, Lyads/uz2;

    invoke-direct {p0}, Lyads/uz2;-><init>()V

    .line 810
    invoke-virtual {p2}, Lyads/t26;->b()V

    .line 811
    iget-object p2, p2, Lyads/t26;->e:Ljava/lang/String;

    .line 812
    iput-object p2, p0, Lyads/uz2;->a:Ljava/lang/String;

    .line 813
    const-string p2, "application/id3"

    .line 814
    iput-object p2, p0, Lyads/uz2;->k:Ljava/lang/String;

    .line 815
    new-instance p2, Lyads/vz2;

    invoke-direct {p2, p0}, Lyads/vz2;-><init>(Lyads/uz2;)V

    .line 816
    invoke-interface {p1, p2}, Lyads/k06;->a(Lyads/vz2;)V

    return-void

    .line 817
    :cond_0
    new-instance p1, Lyads/cm2;

    invoke-direct {p1}, Lyads/cm2;-><init>()V

    iput-object p1, p0, Lyads/xb;->g:Lyads/k06;

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
