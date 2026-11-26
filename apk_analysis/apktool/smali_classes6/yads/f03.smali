.class public final Lyads/f03;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ws2;


# static fields
.field public static final G:[B

.field public static final H:Lyads/vz2;


# instance fields
.field public A:I

.field public B:Z

.field public C:Lyads/zs2;

.field public D:[Lyads/k06;

.field public E:[Lyads/k06;

.field public F:Z

.field public final a:I

.field public final b:Ljava/util/List;

.field public final c:Landroid/util/SparseArray;

.field public final d:Lyads/os4;

.field public final e:Lyads/os4;

.field public final f:Lyads/os4;

.field public final g:[B

.field public final h:Lyads/os4;

.field public final i:Lyads/gp2;

.field public final j:Lyads/os4;

.field public final k:Ljava/util/ArrayDeque;

.field public final l:Ljava/util/ArrayDeque;

.field public final m:Lyads/k06;

.field public n:I

.field public o:I

.field public p:J

.field public q:I

.field public r:Lyads/os4;

.field public s:J

.field public t:I

.field public u:J

.field public v:J

.field public w:J

.field public x:Lyads/e03;

.field public y:I

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lyads/f03;->G:[B

    new-instance v0, Lyads/uz2;

    invoke-direct {v0}, Lyads/uz2;-><init>()V

    const-string v1, "application/x-emsg"

    iput-object v1, v0, Lyads/uz2;->k:Ljava/lang/String;

    new-instance v1, Lyads/vz2;

    invoke-direct {v1, v0}, Lyads/vz2;-><init>(Lyads/uz2;)V

    sput-object v1, Lyads/f03;->H:Lyads/vz2;

    return-void

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 110
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 111
    invoke-direct {p0, v2, v0, v1}, Lyads/f03;-><init>(ILjava/util/List;Lyads/k06;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;Lyads/k06;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lyads/f03;->a:I

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lyads/f03;->b:Ljava/util/List;

    iput-object p3, p0, Lyads/f03;->m:Lyads/k06;

    new-instance p1, Lyads/gp2;

    invoke-direct {p1}, Lyads/gp2;-><init>()V

    iput-object p1, p0, Lyads/f03;->i:Lyads/gp2;

    new-instance p1, Lyads/os4;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lyads/os4;-><init>(I)V

    iput-object p1, p0, Lyads/f03;->j:Lyads/os4;

    new-instance p1, Lyads/os4;

    sget-object p3, Lyads/qd4;->a:[B

    invoke-direct {p1, p3}, Lyads/os4;-><init>([B)V

    iput-object p1, p0, Lyads/f03;->d:Lyads/os4;

    new-instance p1, Lyads/os4;

    const/4 p3, 0x5

    invoke-direct {p1, p3}, Lyads/os4;-><init>(I)V

    iput-object p1, p0, Lyads/f03;->e:Lyads/os4;

    new-instance p1, Lyads/os4;

    invoke-direct {p1}, Lyads/os4;-><init>()V

    iput-object p1, p0, Lyads/f03;->f:Lyads/os4;

    new-array p1, p2, [B

    iput-object p1, p0, Lyads/f03;->g:[B

    new-instance p2, Lyads/os4;

    invoke-direct {p2, p1}, Lyads/os4;-><init>([B)V

    iput-object p2, p0, Lyads/f03;->h:Lyads/os4;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lyads/f03;->k:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lyads/f03;->l:Ljava/util/ArrayDeque;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lyads/f03;->c:Landroid/util/SparseArray;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lyads/f03;->v:J

    iput-wide p1, p0, Lyads/f03;->u:J

    iput-wide p1, p0, Lyads/f03;->w:J

    sget-object p1, Lyads/zs2;->a:Lyads/ys2;

    iput-object p1, p0, Lyads/f03;->C:Lyads/zs2;

    const/4 p1, 0x0

    new-array p2, p1, [Lyads/k06;

    iput-object p2, p0, Lyads/f03;->D:[Lyads/k06;

    new-array p1, p1, [Lyads/k06;

    iput-object p1, p0, Lyads/f03;->E:[Lyads/k06;

    return-void
.end method

.method public static a(Ljava/util/ArrayList;)Lyads/ql2;
    .locals 9

    .line 2347
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v1

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    .line 2348
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/kl;

    .line 2349
    iget v6, v5, Lyads/ll;->a:I

    const v7, 0x70737368    # 3.013775E29f

    if-ne v6, v7, :cond_3

    if-nez v4, :cond_0

    .line 2350
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2351
    :cond_0
    iget-object v5, v5, Lyads/kl;->b:Lyads/os4;

    .line 2352
    iget-object v5, v5, Lyads/os4;->a:[B

    .line 2353
    invoke-static {v5}, Lyads/c35;->a([B)Lyads/b35;

    move-result-object v6

    if-nez v6, :cond_1

    move-object v6, v1

    goto :goto_1

    .line 2354
    :cond_1
    iget-object v6, v6, Lyads/b35;->a:Ljava/util/UUID;

    :goto_1
    if-nez v6, :cond_2

    .line 2355
    const-string v5, "FragmentedMp4Extractor"

    const-string v6, "Skipped pssh atom (failed to extract uuid)"

    invoke-static {v5, v6}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2356
    :cond_2
    new-instance v7, Lyads/pl2;

    const-string v8, "video/mp4"

    .line 2357
    invoke-direct {v7, v6, v1, v8, v5}, Lyads/pl2;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 2358
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-nez v4, :cond_5

    return-object v1

    .line 2359
    :cond_5
    new-instance p0, Lyads/ql2;

    .line 2360
    new-array v0, v2, [Lyads/pl2;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/pl2;

    invoke-direct {p0, v1, v2, v0}, Lyads/ql2;-><init>(Ljava/lang/String;Z[Lyads/pl2;)V

    return-object p0
.end method

.method public static a(Lyads/os4;ILyads/e06;)V
    .locals 4

    add-int/lit8 p1, p1, 0x8

    .line 2325
    invoke-virtual {p0, p1}, Lyads/os4;->e(I)V

    .line 2326
    invoke-virtual {p0}, Lyads/os4;->a()I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_3

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 2327
    :goto_0
    invoke-virtual {p0}, Lyads/os4;->n()I

    move-result v2

    if-nez v2, :cond_1

    .line 2328
    iget-object p0, p2, Lyads/e06;->l:[Z

    iget p1, p2, Lyads/e06;->e:I

    invoke-static {p0, v0, p1, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    return-void

    .line 2329
    :cond_1
    iget v3, p2, Lyads/e06;->e:I

    if-ne v2, v3, :cond_2

    .line 2330
    iget-object v3, p2, Lyads/e06;->l:[Z

    invoke-static {v3, v0, v2, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 2331
    iget p1, p0, Lyads/os4;->c:I

    iget v2, p0, Lyads/os4;->b:I

    sub-int/2addr p1, v2

    .line 2332
    iget-object v2, p2, Lyads/e06;->n:Lyads/os4;

    invoke-virtual {v2, p1}, Lyads/os4;->c(I)V

    .line 2333
    iput-boolean v1, p2, Lyads/e06;->k:Z

    .line 2334
    iput-boolean v1, p2, Lyads/e06;->o:Z

    .line 2335
    iget-object p1, p2, Lyads/e06;->n:Lyads/os4;

    .line 2336
    iget-object v1, p1, Lyads/os4;->a:[B

    .line 2337
    iget p1, p1, Lyads/os4;->c:I

    .line 2338
    invoke-virtual {p0, v1, v0, p1}, Lyads/os4;->a([BII)V

    .line 2339
    iget-object p0, p2, Lyads/e06;->n:Lyads/os4;

    invoke-virtual {p0, v0}, Lyads/os4;->e(I)V

    .line 2340
    iput-boolean v0, p2, Lyads/e06;->o:Z

    return-void

    .line 2341
    :cond_2
    const-string p0, "Senc sample count "

    const-string p1, " is different from fragment sample count"

    .line 2342
    invoke-static {v2, p0, p1}, Ln7;->c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 2343
    iget p1, p2, Lyads/e06;->e:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2344
    new-instance p1, Lyads/xs4;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2, v1, v1}, Lyads/xs4;-><init>(Ljava/lang/String;Ljava/lang/Exception;ZI)V

    .line 2345
    throw p1

    .line 2346
    :cond_3
    const-string p0, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-static {p0}, Lyads/xs4;->a(Ljava/lang/String;)Lyads/xs4;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final a(Lyads/xs2;Lyads/qx4;)I
    .locals 37

    move-object/from16 v0, p0

    :goto_0
    move-object/from16 v1, p1

    :goto_1
    iget v2, v0, Lyads/f03;->n:I

    const v3, 0x656d7367

    const v4, 0x73696478

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v2, :cond_3a

    const-string v10, "FragmentedMp4Extractor"

    if-eq v2, v8, :cond_2b

    const-wide v3, 0x7fffffffffffffffL

    const/4 v12, 0x3

    if-eq v2, v5, :cond_26

    iget-object v2, v0, Lyads/f03;->x:Lyads/e03;

    if-nez v2, :cond_9

    iget-object v2, v0, Lyads/f03;->c:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v13

    move-wide v14, v3

    move-object v3, v7

    move v4, v9

    :goto_2
    if-ge v4, v13, :cond_4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 p2, v5

    move-object/from16 v5, v16

    check-cast v5, Lyads/e03;

    iget-boolean v11, v5, Lyads/e03;->l:Z

    if-nez v11, :cond_0

    const/16 v17, 0x8

    iget v6, v5, Lyads/e03;->f:I

    move/from16 v18, v8

    iget-object v8, v5, Lyads/e03;->d:Lyads/l06;

    iget v8, v8, Lyads/l06;->b:I

    if-eq v6, v8, :cond_3

    goto :goto_3

    :cond_0
    move/from16 v18, v8

    const/16 v17, 0x8

    :goto_3
    if-eqz v11, :cond_1

    iget v6, v5, Lyads/e03;->h:I

    iget-object v8, v5, Lyads/e03;->b:Lyads/e06;

    iget v8, v8, Lyads/e06;->d:I

    if-ne v6, v8, :cond_1

    goto :goto_5

    :cond_1
    if-nez v11, :cond_2

    iget-object v6, v5, Lyads/e03;->d:Lyads/l06;

    iget-object v6, v6, Lyads/l06;->c:[J

    iget v8, v5, Lyads/e03;->f:I

    aget-wide v19, v6, v8

    goto :goto_4

    :cond_2
    iget-object v6, v5, Lyads/e03;->b:Lyads/e06;

    iget-object v6, v6, Lyads/e06;->f:[J

    iget v8, v5, Lyads/e03;->h:I

    aget-wide v19, v6, v8

    :goto_4
    cmp-long v6, v19, v14

    if-gez v6, :cond_3

    move-object v3, v5

    move-wide/from16 v14, v19

    :cond_3
    :goto_5
    add-int/lit8 v4, v4, 0x1

    move/from16 v5, p2

    move/from16 v8, v18

    goto :goto_2

    :cond_4
    move/from16 p2, v5

    move/from16 v18, v8

    const/16 v17, 0x8

    if-nez v3, :cond_6

    iget-wide v2, v0, Lyads/f03;->s:J

    move-object v4, v1

    check-cast v4, Lyads/wk0;

    iget-wide v5, v4, Lyads/wk0;->d:J

    sub-long/2addr v2, v5

    long-to-int v2, v2

    if-ltz v2, :cond_5

    invoke-virtual {v4, v2}, Lyads/wk0;->a(I)V

    iput v9, v0, Lyads/f03;->n:I

    iput v9, v0, Lyads/f03;->q:I

    goto/16 :goto_1

    :cond_5
    const-string v0, "Offset to end of mdat was negative."

    invoke-static {v0, v7}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return v9

    :cond_6
    iget-boolean v2, v3, Lyads/e03;->l:Z

    if-nez v2, :cond_7

    iget-object v2, v3, Lyads/e03;->d:Lyads/l06;

    iget-object v2, v2, Lyads/l06;->c:[J

    iget v4, v3, Lyads/e03;->f:I

    aget-wide v4, v2, v4

    goto :goto_6

    :cond_7
    iget-object v2, v3, Lyads/e03;->b:Lyads/e06;

    iget-object v2, v2, Lyads/e06;->f:[J

    iget v4, v3, Lyads/e03;->h:I

    aget-wide v4, v2, v4

    :goto_6
    move-object v2, v1

    check-cast v2, Lyads/wk0;

    iget-wide v13, v2, Lyads/wk0;->d:J

    sub-long/2addr v4, v13

    long-to-int v4, v4

    if-gez v4, :cond_8

    const-string v4, "Ignoring negative offset to sample data."

    invoke-static {v10, v4}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v9

    :cond_8
    invoke-virtual {v2, v4}, Lyads/wk0;->a(I)V

    iput-object v3, v0, Lyads/f03;->x:Lyads/e03;

    move-object v2, v3

    goto :goto_7

    :cond_9
    move/from16 p2, v5

    move/from16 v18, v8

    const/16 v17, 0x8

    :goto_7
    iget v3, v0, Lyads/f03;->n:I

    const/4 v4, 0x6

    if-ne v3, v12, :cond_13

    iget-boolean v3, v2, Lyads/e03;->l:Z

    if-nez v3, :cond_a

    iget-object v3, v2, Lyads/e03;->d:Lyads/l06;

    iget-object v3, v3, Lyads/l06;->d:[I

    iget v5, v2, Lyads/e03;->f:I

    aget v3, v3, v5

    goto :goto_8

    :cond_a
    iget-object v3, v2, Lyads/e03;->b:Lyads/e06;

    iget-object v3, v3, Lyads/e06;->h:[I

    iget v5, v2, Lyads/e03;->f:I

    aget v3, v3, v5

    :goto_8
    iput v3, v0, Lyads/f03;->y:I

    iget v6, v2, Lyads/e03;->i:I

    if-ge v5, v6, :cond_10

    check-cast v1, Lyads/wk0;

    invoke-virtual {v1, v3}, Lyads/wk0;->a(I)V

    invoke-virtual {v2}, Lyads/e03;->a()Lyads/d06;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_9

    :cond_b
    iget-object v3, v2, Lyads/e03;->b:Lyads/e06;

    iget-object v3, v3, Lyads/e06;->n:Lyads/os4;

    iget v1, v1, Lyads/d06;->d:I

    if-eqz v1, :cond_c

    iget v5, v3, Lyads/os4;->b:I

    add-int/2addr v5, v1

    invoke-virtual {v3, v5}, Lyads/os4;->e(I)V

    :cond_c
    iget-object v1, v2, Lyads/e03;->b:Lyads/e06;

    iget v5, v2, Lyads/e03;->f:I

    iget-boolean v6, v1, Lyads/e06;->k:Z

    if-eqz v6, :cond_d

    iget-object v1, v1, Lyads/e06;->l:[Z

    aget-boolean v1, v1, v5

    if-eqz v1, :cond_d

    invoke-virtual {v3}, Lyads/os4;->p()I

    move-result v1

    mul-int/2addr v1, v4

    iget v4, v3, Lyads/os4;->b:I

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Lyads/os4;->e(I)V

    :cond_d
    :goto_9
    iget v1, v2, Lyads/e03;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Lyads/e03;->f:I

    iget-boolean v1, v2, Lyads/e03;->l:Z

    if-nez v1, :cond_e

    goto :goto_a

    :cond_e
    iget v1, v2, Lyads/e03;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Lyads/e03;->g:I

    iget-object v3, v2, Lyads/e03;->b:Lyads/e06;

    iget-object v3, v3, Lyads/e06;->g:[I

    iget v4, v2, Lyads/e03;->h:I

    aget v3, v3, v4

    if-ne v1, v3, :cond_f

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Lyads/e03;->h:I

    iput v9, v2, Lyads/e03;->g:I

    :goto_a
    iput-object v7, v0, Lyads/f03;->x:Lyads/e03;

    :cond_f
    iput v12, v0, Lyads/f03;->n:I

    move v4, v9

    goto/16 :goto_18

    :cond_10
    iget-object v5, v2, Lyads/e03;->d:Lyads/l06;

    iget-object v5, v5, Lyads/l06;->a:Lyads/c06;

    iget v5, v5, Lyads/c06;->g:I

    move/from16 v6, v18

    if-ne v5, v6, :cond_11

    add-int/lit8 v3, v3, -0x8

    iput v3, v0, Lyads/f03;->y:I

    move-object v3, v1

    check-cast v3, Lyads/wk0;

    move/from16 v5, v17

    invoke-virtual {v3, v5}, Lyads/wk0;->a(I)V

    :cond_11
    iget-object v3, v2, Lyads/e03;->d:Lyads/l06;

    iget-object v3, v3, Lyads/l06;->a:Lyads/c06;

    iget-object v3, v3, Lyads/c06;->f:Lyads/vz2;

    iget-object v3, v3, Lyads/vz2;->m:Ljava/lang/String;

    const-string v5, "audio/ac4"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iget v5, v0, Lyads/f03;->y:I

    if-eqz v3, :cond_12

    const/4 v3, 0x7

    invoke-virtual {v2, v5, v3}, Lyads/e03;->a(II)I

    move-result v5

    iput v5, v0, Lyads/f03;->z:I

    iget v5, v0, Lyads/f03;->y:I

    iget-object v6, v0, Lyads/f03;->h:Lyads/os4;

    invoke-static {v5, v6}, Lyads/j0;->a(ILyads/os4;)V

    iget-object v5, v2, Lyads/e03;->a:Lyads/k06;

    iget-object v6, v0, Lyads/f03;->h:Lyads/os4;

    invoke-interface {v5, v3, v6}, Lyads/k06;->a(ILyads/os4;)V

    iget v5, v0, Lyads/f03;->z:I

    add-int/2addr v5, v3

    iput v5, v0, Lyads/f03;->z:I

    goto :goto_b

    :cond_12
    invoke-virtual {v2, v5, v9}, Lyads/e03;->a(II)I

    move-result v5

    iput v5, v0, Lyads/f03;->z:I

    :goto_b
    iget v3, v0, Lyads/f03;->y:I

    add-int/2addr v3, v5

    iput v3, v0, Lyads/f03;->y:I

    const/4 v3, 0x4

    iput v3, v0, Lyads/f03;->n:I

    iput v9, v0, Lyads/f03;->A:I

    :cond_13
    iget-object v3, v2, Lyads/e03;->d:Lyads/l06;

    iget-object v5, v3, Lyads/l06;->a:Lyads/c06;

    iget-object v6, v2, Lyads/e03;->a:Lyads/k06;

    iget-boolean v8, v2, Lyads/e03;->l:Z

    if-nez v8, :cond_14

    iget-object v3, v3, Lyads/l06;->f:[J

    iget v8, v2, Lyads/e03;->f:I

    aget-wide v10, v3, v8

    goto :goto_c

    :cond_14
    iget-object v3, v2, Lyads/e03;->b:Lyads/e06;

    iget v8, v2, Lyads/e03;->f:I

    iget-object v3, v3, Lyads/e06;->i:[J

    aget-wide v10, v3, v8

    :goto_c
    iget v3, v5, Lyads/c06;->j:I

    if-eqz v3, :cond_1b

    iget-object v8, v0, Lyads/f03;->e:Lyads/os4;

    iget-object v8, v8, Lyads/os4;->a:[B

    aput-byte v9, v8, v9

    const/16 v18, 0x1

    aput-byte v9, v8, v18

    aput-byte v9, v8, p2

    add-int/lit8 v13, v3, 0x1

    const/16 v16, 0x4

    rsub-int/lit8 v3, v3, 0x4

    :goto_d
    iget v14, v0, Lyads/f03;->z:I

    iget v15, v0, Lyads/f03;->y:I

    if-ge v14, v15, :cond_1c

    iget v14, v0, Lyads/f03;->A:I

    const-string v15, "video/hevc"

    if-nez v14, :cond_19

    move-object v14, v1

    check-cast v14, Lyads/wk0;

    invoke-virtual {v14, v8, v3, v13, v9}, Lyads/wk0;->a([BIIZ)Z

    iget-object v14, v0, Lyads/f03;->e:Lyads/os4;

    invoke-virtual {v14, v9}, Lyads/os4;->e(I)V

    iget-object v14, v0, Lyads/f03;->e:Lyads/os4;

    invoke-virtual {v14}, Lyads/os4;->a()I

    move-result v14

    const/4 v12, 0x1

    if-lt v14, v12, :cond_18

    add-int/lit8 v14, v14, -0x1

    iput v14, v0, Lyads/f03;->A:I

    iget-object v14, v0, Lyads/f03;->d:Lyads/os4;

    invoke-virtual {v14, v9}, Lyads/os4;->e(I)V

    iget-object v14, v0, Lyads/f03;->d:Lyads/os4;

    move/from16 v26, v9

    const/4 v9, 0x4

    invoke-interface {v6, v9, v14}, Lyads/k06;->a(ILyads/os4;)V

    iget-object v14, v0, Lyads/f03;->e:Lyads/os4;

    invoke-interface {v6, v12, v14}, Lyads/k06;->a(ILyads/os4;)V

    iget-object v12, v0, Lyads/f03;->E:[Lyads/k06;

    array-length v12, v12

    if-lez v12, :cond_17

    iget-object v12, v5, Lyads/c06;->f:Lyads/vz2;

    iget-object v12, v12, Lyads/vz2;->m:Ljava/lang/String;

    aget-byte v14, v8, v9

    const-string v9, "video/avc"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    and-int/lit8 v9, v14, 0x1f

    if-eq v9, v4, :cond_16

    :cond_15
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    and-int/lit8 v9, v14, 0x7e

    const/16 v18, 0x1

    shr-int/lit8 v9, v9, 0x1

    const/16 v12, 0x27

    if-ne v9, v12, :cond_17

    :cond_16
    const/4 v9, 0x1

    goto :goto_e

    :cond_17
    move/from16 v9, v26

    :goto_e
    iput-boolean v9, v0, Lyads/f03;->B:Z

    iget v9, v0, Lyads/f03;->z:I

    add-int/lit8 v9, v9, 0x5

    iput v9, v0, Lyads/f03;->z:I

    iget v9, v0, Lyads/f03;->y:I

    add-int/2addr v9, v3

    iput v9, v0, Lyads/f03;->y:I

    move/from16 v9, v26

    :goto_f
    const/4 v12, 0x3

    goto :goto_d

    :cond_18
    move/from16 v26, v9

    const-string v0, "Invalid NAL length"

    invoke-static {v0, v7}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return v26

    :cond_19
    move/from16 v26, v9

    iget-boolean v9, v0, Lyads/f03;->B:Z

    if-eqz v9, :cond_1a

    iget-object v9, v0, Lyads/f03;->f:Lyads/os4;

    invoke-virtual {v9, v14}, Lyads/os4;->c(I)V

    iget-object v9, v0, Lyads/f03;->f:Lyads/os4;

    iget-object v9, v9, Lyads/os4;->a:[B

    iget v12, v0, Lyads/f03;->A:I

    move-object v14, v1

    check-cast v14, Lyads/wk0;

    move/from16 v4, v26

    invoke-virtual {v14, v9, v4, v12, v4}, Lyads/wk0;->a([BIIZ)Z

    iget-object v4, v0, Lyads/f03;->f:Lyads/os4;

    iget v9, v0, Lyads/f03;->A:I

    invoke-interface {v6, v9, v4}, Lyads/k06;->a(ILyads/os4;)V

    iget v4, v0, Lyads/f03;->A:I

    iget-object v9, v0, Lyads/f03;->f:Lyads/os4;

    iget-object v12, v9, Lyads/os4;->a:[B

    iget v9, v9, Lyads/os4;->c:I

    invoke-static {v12, v9}, Lyads/qd4;->a([BI)I

    move-result v9

    iget-object v12, v0, Lyads/f03;->f:Lyads/os4;

    iget-object v14, v5, Lyads/c06;->f:Lyads/vz2;

    iget-object v14, v14, Lyads/vz2;->m:Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    invoke-virtual {v12, v14}, Lyads/os4;->e(I)V

    iget-object v12, v0, Lyads/f03;->f:Lyads/os4;

    invoke-virtual {v12, v9}, Lyads/os4;->d(I)V

    iget-object v9, v0, Lyads/f03;->f:Lyads/os4;

    iget-object v12, v0, Lyads/f03;->E:[Lyads/k06;

    invoke-static {v10, v11, v9, v12}, Lyads/ry;->a(JLyads/os4;[Lyads/k06;)V

    goto :goto_10

    :cond_1a
    move/from16 v4, v26

    invoke-interface {v6, v1, v14, v4}, Lyads/k06;->a(Lyads/tc0;IZ)I

    move-result v9

    move v4, v9

    :goto_10
    iget v9, v0, Lyads/f03;->z:I

    add-int/2addr v9, v4

    iput v9, v0, Lyads/f03;->z:I

    iget v9, v0, Lyads/f03;->A:I

    sub-int/2addr v9, v4

    iput v9, v0, Lyads/f03;->A:I

    const/4 v4, 0x6

    const/4 v9, 0x0

    goto :goto_f

    :cond_1b
    :goto_11
    iget v3, v0, Lyads/f03;->z:I

    iget v4, v0, Lyads/f03;->y:I

    if-ge v3, v4, :cond_1c

    sub-int/2addr v4, v3

    const/4 v3, 0x0

    invoke-interface {v6, v1, v4, v3}, Lyads/k06;->a(Lyads/tc0;IZ)I

    move-result v4

    iget v3, v0, Lyads/f03;->z:I

    add-int/2addr v3, v4

    iput v3, v0, Lyads/f03;->z:I

    goto :goto_11

    :cond_1c
    iget-boolean v1, v2, Lyads/e03;->l:Z

    if-nez v1, :cond_1d

    iget-object v1, v2, Lyads/e03;->d:Lyads/l06;

    iget-object v1, v1, Lyads/l06;->g:[I

    iget v3, v2, Lyads/e03;->f:I

    aget v1, v1, v3

    goto :goto_12

    :cond_1d
    iget-object v1, v2, Lyads/e03;->b:Lyads/e06;

    iget-object v1, v1, Lyads/e06;->j:[Z

    iget v3, v2, Lyads/e03;->f:I

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_12

    :cond_1e
    const/4 v1, 0x0

    :goto_12
    invoke-virtual {v2}, Lyads/e03;->a()Lyads/d06;

    move-result-object v3

    if-eqz v3, :cond_1f

    const/high16 v3, 0x40000000    # 2.0f

    or-int/2addr v1, v3

    :cond_1f
    move/from16 v22, v1

    invoke-virtual {v2}, Lyads/e03;->a()Lyads/d06;

    move-result-object v1

    if-eqz v1, :cond_20

    iget-object v1, v1, Lyads/d06;->c:Lyads/j06;

    move-object/from16 v25, v1

    goto :goto_13

    :cond_20
    move-object/from16 v25, v7

    :goto_13
    iget v1, v0, Lyads/f03;->y:I

    const/16 v24, 0x0

    move/from16 v23, v1

    move-object/from16 v19, v6

    move-wide/from16 v20, v10

    invoke-interface/range {v19 .. v25}, Lyads/k06;->a(JIIILyads/j06;)V

    :cond_21
    iget-object v1, v0, Lyads/f03;->l:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_23

    iget-object v1, v0, Lyads/f03;->l:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/d03;

    iget v3, v0, Lyads/f03;->t:I

    iget v4, v1, Lyads/d03;->c:I

    sub-int/2addr v3, v4

    iput v3, v0, Lyads/f03;->t:I

    iget-wide v3, v1, Lyads/d03;->a:J

    iget-boolean v5, v1, Lyads/d03;->b:Z

    if-eqz v5, :cond_22

    add-long v3, v3, v20

    :cond_22
    move-wide v9, v3

    iget-object v3, v0, Lyads/f03;->D:[Lyads/k06;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_14
    if-ge v5, v4, :cond_21

    aget-object v8, v3, v5

    iget v12, v1, Lyads/d03;->c:I

    iget v13, v0, Lyads/f03;->t:I

    const/4 v11, 0x1

    const/4 v14, 0x0

    invoke-interface/range {v8 .. v14}, Lyads/k06;->a(JIIILyads/j06;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_23
    iget v1, v2, Lyads/e03;->f:I

    const/16 v18, 0x1

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Lyads/e03;->f:I

    iget-boolean v1, v2, Lyads/e03;->l:Z

    if-nez v1, :cond_24

    const/4 v4, 0x0

    goto :goto_15

    :cond_24
    iget v1, v2, Lyads/e03;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Lyads/e03;->g:I

    iget-object v3, v2, Lyads/e03;->b:Lyads/e06;

    iget-object v3, v3, Lyads/e06;->g:[I

    iget v4, v2, Lyads/e03;->h:I

    aget v3, v3, v4

    if-ne v1, v3, :cond_25

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Lyads/e03;->h:I

    const/4 v4, 0x0

    iput v4, v2, Lyads/e03;->g:I

    :goto_15
    iput-object v7, v0, Lyads/f03;->x:Lyads/e03;

    :goto_16
    const/4 v1, 0x3

    goto :goto_17

    :cond_25
    const/4 v4, 0x0

    goto :goto_16

    :goto_17
    iput v1, v0, Lyads/f03;->n:I

    :goto_18
    return v4

    :cond_26
    iget-object v2, v0, Lyads/f03;->c:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    move-object v6, v7

    const/4 v5, 0x0

    :goto_19
    if-ge v5, v2, :cond_28

    iget-object v8, v0, Lyads/f03;->c:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lyads/e03;

    iget-object v8, v8, Lyads/e03;->b:Lyads/e06;

    iget-boolean v9, v8, Lyads/e06;->o:Z

    if-eqz v9, :cond_27

    iget-wide v8, v8, Lyads/e06;->c:J

    cmp-long v10, v8, v3

    if-gez v10, :cond_27

    iget-object v3, v0, Lyads/f03;->c:Landroid/util/SparseArray;

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lyads/e03;

    move-wide v3, v8

    :cond_27
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    :cond_28
    if-nez v6, :cond_29

    const/4 v2, 0x3

    iput v2, v0, Lyads/f03;->n:I

    goto/16 :goto_1

    :cond_29
    move-object v2, v1

    check-cast v2, Lyads/wk0;

    iget-wide v8, v2, Lyads/wk0;->d:J

    sub-long/2addr v3, v8

    long-to-int v3, v3

    if-ltz v3, :cond_2a

    invoke-virtual {v2, v3}, Lyads/wk0;->a(I)V

    iget-object v3, v6, Lyads/e03;->b:Lyads/e06;

    iget-object v4, v3, Lyads/e06;->n:Lyads/os4;

    iget-object v5, v4, Lyads/os4;->a:[B

    iget v4, v4, Lyads/os4;->c:I

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6, v4, v6}, Lyads/wk0;->a([BIIZ)Z

    iget-object v2, v3, Lyads/e06;->n:Lyads/os4;

    invoke-virtual {v2, v6}, Lyads/os4;->e(I)V

    iput-boolean v6, v3, Lyads/e06;->o:Z

    goto/16 :goto_1

    :cond_2a
    const/4 v6, 0x0

    const-string v0, "Offset to encryption data was negative."

    invoke-static {v0, v7}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return v6

    :cond_2b
    move/from16 p2, v5

    move v6, v9

    iget-wide v8, v0, Lyads/f03;->p:J

    long-to-int v2, v8

    iget v5, v0, Lyads/f03;->q:I

    sub-int/2addr v2, v5

    iget-object v5, v0, Lyads/f03;->r:Lyads/os4;

    if-eqz v5, :cond_38

    iget-object v8, v5, Lyads/os4;->a:[B

    move-object v9, v1

    check-cast v9, Lyads/wk0;

    const/16 v11, 0x8

    invoke-virtual {v9, v8, v11, v2, v6}, Lyads/wk0;->a([BIIZ)Z

    new-instance v2, Lyads/kl;

    iget v6, v0, Lyads/f03;->o:I

    invoke-direct {v2, v6, v5}, Lyads/kl;-><init>(ILyads/os4;)V

    iget-wide v8, v9, Lyads/wk0;->d:J

    iget-object v11, v0, Lyads/f03;->k:Ljava/util/ArrayDeque;

    invoke-virtual {v11}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2c

    iget-object v3, v0, Lyads/f03;->k:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/jl;

    iget-object v3, v3, Lyads/jl;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    :cond_2c
    if-ne v6, v4, :cond_30

    const/16 v11, 0x8

    invoke-virtual {v5, v11}, Lyads/os4;->e(I)V

    invoke-virtual {v5}, Lyads/os4;->a()I

    move-result v2

    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    iget v3, v5, Lyads/os4;->b:I

    const/16 v16, 0x4

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v5, v3}, Lyads/os4;->e(I)V

    invoke-virtual {v5}, Lyads/os4;->l()J

    move-result-wide v14

    if-nez v2, :cond_2d

    invoke-virtual {v5}, Lyads/os4;->l()J

    move-result-wide v2

    invoke-virtual {v5}, Lyads/os4;->l()J

    move-result-wide v10

    :goto_1a
    add-long/2addr v10, v8

    move-wide/from16 v35, v10

    move-wide v10, v2

    move-wide/from16 v2, v35

    goto :goto_1b

    :cond_2d
    invoke-virtual {v5}, Lyads/os4;->o()J

    move-result-wide v2

    invoke-virtual {v5}, Lyads/os4;->o()J

    move-result-wide v10

    goto :goto_1a

    :goto_1b
    const-wide/32 v12, 0xf4240

    invoke-static/range {v10 .. v15}, Lyads/u56;->a(JJJ)J

    move-result-wide v8

    iget v4, v5, Lyads/os4;->b:I

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v5, v4}, Lyads/os4;->e(I)V

    invoke-virtual {v5}, Lyads/os4;->p()I

    move-result v4

    new-array v6, v4, [I

    new-array v12, v4, [J

    new-array v13, v4, [J

    new-array v7, v4, [J

    move-wide/from16 v20, v8

    move-object/from16 v17, v12

    const/4 v12, 0x0

    :goto_1c
    if-ge v12, v4, :cond_2f

    invoke-virtual {v5}, Lyads/os4;->a()I

    move-result v22

    const/high16 v23, -0x80000000

    and-int v23, v22, v23

    if-nez v23, :cond_2e

    invoke-virtual {v5}, Lyads/os4;->l()J

    move-result-wide v23

    const v25, 0x7fffffff

    and-int v22, v22, v25

    aput v22, v6, v12

    aput-wide v2, v17, v12

    aput-wide v20, v7, v12

    add-long v10, v10, v23

    move/from16 v21, v12

    move-object/from16 v20, v13

    const-wide/32 v12, 0xf4240

    move-object/from16 v1, v17

    move-wide/from16 v35, v2

    move-object/from16 v2, v20

    move/from16 v3, v21

    move-wide/from16 v20, v35

    invoke-static/range {v10 .. v15}, Lyads/u56;->a(JJJ)J

    move-result-wide v12

    aget-wide v22, v7, v3

    sub-long v22, v12, v22

    aput-wide v22, v2, v3

    move/from16 p2, v3

    iget v3, v5, Lyads/os4;->b:I

    const/16 v16, 0x4

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v5, v3}, Lyads/os4;->e(I)V

    aget v3, v6, p2

    move/from16 v17, v4

    int-to-long v3, v3

    add-long v3, v20, v3

    add-int/lit8 v20, p2, 0x1

    move-wide/from16 v35, v12

    move/from16 v12, v20

    move-wide/from16 v20, v35

    move-object v13, v2

    move-wide v2, v3

    move/from16 v4, v17

    move-object/from16 v17, v1

    move-object/from16 v1, p1

    goto :goto_1c

    :cond_2e
    const-string v0, "Unhandled indirect reference"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    const/16 v26, 0x0

    return v26

    :cond_2f
    move-object v2, v13

    move-object/from16 v1, v17

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Lyads/gz;

    invoke-direct {v4, v6, v1, v2, v7}, Lyads/gz;-><init>([I[J[J[J)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lyads/f03;->w:J

    iget-object v2, v0, Lyads/f03;->C:Lyads/zs2;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lyads/sh5;

    invoke-interface {v2, v1}, Lyads/zs2;->a(Lyads/sh5;)V

    const/4 v6, 0x1

    iput-boolean v6, v0, Lyads/f03;->F:Z

    goto/16 :goto_22

    :cond_30
    if-ne v6, v3, :cond_39

    iget-object v1, v0, Lyads/f03;->D:[Lyads/k06;

    array-length v1, v1

    if-nez v1, :cond_31

    goto/16 :goto_22

    :cond_31
    const/16 v11, 0x8

    invoke-virtual {v5, v11}, Lyads/os4;->e(I)V

    invoke-virtual {v5}, Lyads/os4;->a()I

    move-result v1

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_33

    const/4 v6, 0x1

    if-eq v1, v6, :cond_32

    const-string v2, "Skipping unsupported emsg version: "

    invoke-static {v1, v2, v10}, Lyads/qt3;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_22

    :cond_32
    invoke-virtual {v5}, Lyads/os4;->l()J

    move-result-wide v15

    invoke-virtual {v5}, Lyads/os4;->o()J

    move-result-wide v11

    const-wide/32 v13, 0xf4240

    invoke-static/range {v11 .. v16}, Lyads/u56;->a(JJJ)J

    move-result-wide v6

    invoke-virtual {v5}, Lyads/os4;->l()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    invoke-static/range {v11 .. v16}, Lyads/u56;->a(JJJ)J

    move-result-wide v8

    invoke-virtual {v5}, Lyads/os4;->l()J

    move-result-wide v10

    invoke-virtual {v5}, Lyads/os4;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Lyads/os4;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide v12, v2

    move-wide/from16 v30, v8

    move-wide v7, v6

    :goto_1d
    move-object/from16 v28, v1

    move-object/from16 v29, v4

    move-wide/from16 v32, v10

    goto :goto_1f

    :cond_33
    invoke-virtual {v5}, Lyads/os4;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Lyads/os4;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Lyads/os4;->l()J

    move-result-wide v10

    invoke-virtual {v5}, Lyads/os4;->l()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    invoke-static/range {v6 .. v11}, Lyads/u56;->a(JJJ)J

    move-result-wide v12

    iget-wide v6, v0, Lyads/f03;->w:J

    cmp-long v8, v6, v2

    if-eqz v8, :cond_34

    add-long/2addr v6, v12

    move-wide v14, v6

    goto :goto_1e

    :cond_34
    move-wide v14, v2

    :goto_1e
    invoke-virtual {v5}, Lyads/os4;->l()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    invoke-static/range {v6 .. v11}, Lyads/u56;->a(JJJ)J

    move-result-wide v8

    invoke-virtual {v5}, Lyads/os4;->l()J

    move-result-wide v10

    move-wide/from16 v30, v8

    move-wide v7, v14

    goto :goto_1d

    :goto_1f
    iget v1, v5, Lyads/os4;->c:I

    iget v4, v5, Lyads/os4;->b:I

    sub-int/2addr v1, v4

    new-array v4, v1, [B

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6, v1}, Lyads/os4;->a([BII)V

    new-instance v27, Lyads/ep2;

    move-object/from16 v34, v4

    invoke-direct/range {v27 .. v34}, Lyads/ep2;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    move-object/from16 v1, v27

    new-instance v4, Lyads/os4;

    iget-object v5, v0, Lyads/f03;->i:Lyads/gp2;

    invoke-virtual {v5, v1}, Lyads/gp2;->a(Lyads/ep2;)[B

    move-result-object v1

    invoke-direct {v4, v1}, Lyads/os4;-><init>([B)V

    iget v1, v4, Lyads/os4;->c:I

    iget v5, v4, Lyads/os4;->b:I

    sub-int v10, v1, v5

    iget-object v1, v0, Lyads/f03;->D:[Lyads/k06;

    array-length v5, v1

    const/4 v6, 0x0

    :goto_20
    if-ge v6, v5, :cond_35

    aget-object v9, v1, v6

    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Lyads/os4;->e(I)V

    invoke-interface {v9, v10, v4}, Lyads/k06;->a(ILyads/os4;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    :cond_35
    cmp-long v1, v7, v2

    iget-object v2, v0, Lyads/f03;->l:Ljava/util/ArrayDeque;

    if-nez v1, :cond_36

    new-instance v1, Lyads/d03;

    const/4 v6, 0x1

    invoke-direct {v1, v12, v13, v6, v10}, Lyads/d03;-><init>(JZI)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget v1, v0, Lyads/f03;->t:I

    add-int/2addr v1, v10

    iput v1, v0, Lyads/f03;->t:I

    goto :goto_22

    :cond_36
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_37

    iget-object v1, v0, Lyads/f03;->l:Ljava/util/ArrayDeque;

    new-instance v2, Lyads/d03;

    const/4 v4, 0x0

    invoke-direct {v2, v7, v8, v4, v10}, Lyads/d03;-><init>(JZI)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget v1, v0, Lyads/f03;->t:I

    add-int/2addr v1, v10

    iput v1, v0, Lyads/f03;->t:I

    goto :goto_22

    :cond_37
    iget-object v1, v0, Lyads/f03;->D:[Lyads/k06;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v2, :cond_39

    aget-object v6, v1, v3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x1

    invoke-interface/range {v6 .. v12}, Lyads/k06;->a(JIIILyads/j06;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_38
    move-object/from16 v1, p1

    check-cast v1, Lyads/wk0;

    invoke-virtual {v1, v2}, Lyads/wk0;->a(I)V

    :cond_39
    :goto_22
    move-object/from16 v1, p1

    check-cast v1, Lyads/wk0;

    iget-wide v1, v1, Lyads/wk0;->d:J

    invoke-virtual {v0, v1, v2}, Lyads/f03;->a(J)V

    goto/16 :goto_0

    :cond_3a
    move/from16 p2, v5

    iget v1, v0, Lyads/f03;->q:I

    if-nez v1, :cond_3c

    iget-object v1, v0, Lyads/f03;->j:Lyads/os4;

    iget-object v1, v1, Lyads/os4;->a:[B

    move-object/from16 v2, p1

    check-cast v2, Lyads/wk0;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v11, 0x8

    invoke-virtual {v2, v1, v5, v11, v6}, Lyads/wk0;->a([BIIZ)Z

    move-result v1

    if-nez v1, :cond_3b

    const/4 v0, -0x1

    return v0

    :cond_3b
    iput v11, v0, Lyads/f03;->q:I

    iget-object v1, v0, Lyads/f03;->j:Lyads/os4;

    invoke-virtual {v1, v5}, Lyads/os4;->e(I)V

    iget-object v1, v0, Lyads/f03;->j:Lyads/os4;

    invoke-virtual {v1}, Lyads/os4;->l()J

    move-result-wide v1

    iput-wide v1, v0, Lyads/f03;->p:J

    iget-object v1, v0, Lyads/f03;->j:Lyads/os4;

    invoke-virtual {v1}, Lyads/os4;->a()I

    move-result v1

    iput v1, v0, Lyads/f03;->o:I

    :cond_3c
    iget-wide v1, v0, Lyads/f03;->p:J

    const-wide/16 v5, 0x1

    cmp-long v5, v1, v5

    if-nez v5, :cond_3d

    iget-object v1, v0, Lyads/f03;->j:Lyads/os4;

    iget-object v1, v1, Lyads/os4;->a:[B

    move-object/from16 v2, p1

    check-cast v2, Lyads/wk0;

    const/4 v6, 0x0

    const/16 v11, 0x8

    invoke-virtual {v2, v1, v11, v11, v6}, Lyads/wk0;->a([BIIZ)Z

    iget v1, v0, Lyads/f03;->q:I

    add-int/2addr v1, v11

    iput v1, v0, Lyads/f03;->q:I

    iget-object v1, v0, Lyads/f03;->j:Lyads/os4;

    invoke-virtual {v1}, Lyads/os4;->o()J

    move-result-wide v1

    iput-wide v1, v0, Lyads/f03;->p:J

    goto :goto_23

    :cond_3d
    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-nez v1, :cond_3f

    move-object/from16 v1, p1

    check-cast v1, Lyads/wk0;

    iget-wide v5, v1, Lyads/wk0;->c:J

    const-wide/16 v7, -0x1

    cmp-long v2, v5, v7

    if-nez v2, :cond_3e

    iget-object v2, v0, Lyads/f03;->k:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3e

    iget-object v2, v0, Lyads/f03;->k:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/jl;

    iget-wide v5, v2, Lyads/jl;->b:J

    :cond_3e
    cmp-long v2, v5, v7

    if-eqz v2, :cond_3f

    iget-wide v1, v1, Lyads/wk0;->d:J

    sub-long/2addr v5, v1

    iget v1, v0, Lyads/f03;->q:I

    int-to-long v1, v1

    add-long/2addr v5, v1

    iput-wide v5, v0, Lyads/f03;->p:J

    :cond_3f
    :goto_23
    iget-wide v1, v0, Lyads/f03;->p:J

    iget v5, v0, Lyads/f03;->q:I

    int-to-long v5, v5

    cmp-long v1, v1, v5

    if-ltz v1, :cond_4c

    move-object/from16 v1, p1

    check-cast v1, Lyads/wk0;

    iget-wide v7, v1, Lyads/wk0;->d:J

    sub-long/2addr v7, v5

    iget v2, v0, Lyads/f03;->o:I

    const v5, 0x6d646174

    const v6, 0x6d6f6f66

    if-eq v2, v6, :cond_40

    if-ne v2, v5, :cond_41

    :cond_40
    iget-boolean v2, v0, Lyads/f03;->F:Z

    if-nez v2, :cond_41

    iget-object v2, v0, Lyads/f03;->C:Lyads/zs2;

    new-instance v9, Lyads/rh5;

    iget-wide v10, v0, Lyads/f03;->v:J

    invoke-direct {v9, v10, v11, v7, v8}, Lyads/rh5;-><init>(JJ)V

    invoke-interface {v2, v9}, Lyads/zs2;->a(Lyads/sh5;)V

    const/4 v12, 0x1

    iput-boolean v12, v0, Lyads/f03;->F:Z

    :cond_41
    iget v2, v0, Lyads/f03;->o:I

    if-ne v2, v6, :cond_42

    iget-object v2, v0, Lyads/f03;->c:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v9, 0x0

    :goto_24
    if-ge v9, v2, :cond_42

    iget-object v10, v0, Lyads/f03;->c:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lyads/e03;

    iget-object v10, v10, Lyads/e03;->b:Lyads/e06;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-wide v7, v10, Lyads/e06;->c:J

    iput-wide v7, v10, Lyads/e06;->b:J

    add-int/lit8 v9, v9, 0x1

    goto :goto_24

    :cond_42
    iget v2, v0, Lyads/f03;->o:I

    if-ne v2, v5, :cond_43

    const/4 v5, 0x0

    iput-object v5, v0, Lyads/f03;->x:Lyads/e03;

    iget-wide v1, v0, Lyads/f03;->p:J

    add-long/2addr v7, v1

    iput-wide v7, v0, Lyads/f03;->s:J

    move/from16 v1, p2

    iput v1, v0, Lyads/f03;->n:I

    goto/16 :goto_0

    :cond_43
    const v5, 0x6d6f6f76

    if-eq v2, v5, :cond_4a

    const v5, 0x7472616b

    if-eq v2, v5, :cond_4a

    const v5, 0x6d646961

    if-eq v2, v5, :cond_4a

    const v5, 0x6d696e66

    if-eq v2, v5, :cond_4a

    const v5, 0x7374626c

    if-eq v2, v5, :cond_4a

    if-eq v2, v6, :cond_4a

    const v5, 0x74726166

    if-eq v2, v5, :cond_4a

    const v5, 0x6d766578

    if-eq v2, v5, :cond_4a

    const v5, 0x65647473

    if-ne v2, v5, :cond_44

    goto/16 :goto_26

    :cond_44
    const v1, 0x68646c72    # 4.3148E24f

    const-wide/32 v5, 0x7fffffff

    if-eq v2, v1, :cond_47

    const v1, 0x6d646864

    if-eq v2, v1, :cond_47

    const v1, 0x6d766864

    if-eq v2, v1, :cond_47

    if-eq v2, v4, :cond_47

    const v1, 0x73747364

    if-eq v2, v1, :cond_47

    const v1, 0x73747473

    if-eq v2, v1, :cond_47

    const v1, 0x63747473

    if-eq v2, v1, :cond_47

    const v1, 0x73747363

    if-eq v2, v1, :cond_47

    const v1, 0x7374737a

    if-eq v2, v1, :cond_47

    const v1, 0x73747a32

    if-eq v2, v1, :cond_47

    const v1, 0x7374636f

    if-eq v2, v1, :cond_47

    const v1, 0x636f3634

    if-eq v2, v1, :cond_47

    const v1, 0x73747373

    if-eq v2, v1, :cond_47

    const v1, 0x74666474

    if-eq v2, v1, :cond_47

    const v1, 0x74666864

    if-eq v2, v1, :cond_47

    const v1, 0x746b6864

    if-eq v2, v1, :cond_47

    const v1, 0x74726578

    if-eq v2, v1, :cond_47

    const v1, 0x7472756e

    if-eq v2, v1, :cond_47

    const v1, 0x70737368    # 3.013775E29f

    if-eq v2, v1, :cond_47

    const v1, 0x7361697a

    if-eq v2, v1, :cond_47

    const v1, 0x7361696f

    if-eq v2, v1, :cond_47

    const v1, 0x73656e63

    if-eq v2, v1, :cond_47

    const v1, 0x75756964

    if-eq v2, v1, :cond_47

    const v1, 0x73626770

    if-eq v2, v1, :cond_47

    const v1, 0x73677064

    if-eq v2, v1, :cond_47

    const v1, 0x656c7374

    if-eq v2, v1, :cond_47

    const v1, 0x6d656864

    if-eq v2, v1, :cond_47

    if-ne v2, v3, :cond_45

    goto :goto_25

    :cond_45
    iget-wide v1, v0, Lyads/f03;->p:J

    cmp-long v1, v1, v5

    if-gtz v1, :cond_46

    const/4 v1, 0x0

    iput-object v1, v0, Lyads/f03;->r:Lyads/os4;

    const/4 v6, 0x1

    iput v6, v0, Lyads/f03;->n:I

    goto/16 :goto_0

    :cond_46
    const-string v0, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-static {v0}, Lyads/xs4;->a(Ljava/lang/String;)Lyads/xs4;

    move-result-object v0

    throw v0

    :cond_47
    :goto_25
    iget v1, v0, Lyads/f03;->q:I

    const/16 v11, 0x8

    if-ne v1, v11, :cond_49

    iget-wide v1, v0, Lyads/f03;->p:J

    cmp-long v3, v1, v5

    if-gtz v3, :cond_48

    new-instance v3, Lyads/os4;

    long-to-int v1, v1

    invoke-direct {v3, v1}, Lyads/os4;-><init>(I)V

    iget-object v1, v0, Lyads/f03;->j:Lyads/os4;

    iget-object v1, v1, Lyads/os4;->a:[B

    iget-object v2, v3, Lyads/os4;->a:[B

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, v0, Lyads/f03;->r:Lyads/os4;

    const/4 v6, 0x1

    iput v6, v0, Lyads/f03;->n:I

    goto/16 :goto_0

    :cond_48
    const-string v0, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-static {v0}, Lyads/xs4;->a(Ljava/lang/String;)Lyads/xs4;

    move-result-object v0

    throw v0

    :cond_49
    const-string v0, "Leaf atom defines extended atom size (unsupported)."

    invoke-static {v0}, Lyads/xs4;->a(Ljava/lang/String;)Lyads/xs4;

    move-result-object v0

    throw v0

    :cond_4a
    :goto_26
    iget-wide v3, v1, Lyads/wk0;->d:J

    iget-wide v5, v0, Lyads/f03;->p:J

    add-long/2addr v3, v5

    const-wide/16 v5, 0x8

    sub-long/2addr v3, v5

    iget-object v1, v0, Lyads/f03;->k:Ljava/util/ArrayDeque;

    new-instance v5, Lyads/jl;

    invoke-direct {v5, v2, v3, v4}, Lyads/jl;-><init>(IJ)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v1, v0, Lyads/f03;->p:J

    iget v5, v0, Lyads/f03;->q:I

    int-to-long v5, v5

    cmp-long v1, v1, v5

    if-nez v1, :cond_4b

    invoke-virtual {v0, v3, v4}, Lyads/f03;->a(J)V

    goto/16 :goto_0

    :cond_4b
    const/4 v4, 0x0

    iput v4, v0, Lyads/f03;->n:I

    iput v4, v0, Lyads/f03;->q:I

    goto/16 :goto_0

    :cond_4c
    const-string v0, "Atom size less than header length (unsupported)."

    invoke-static {v0}, Lyads/xs4;->a(Ljava/lang/String;)Lyads/xs4;

    move-result-object v0

    throw v0
.end method

.method public final a(Lyads/c06;)Lyads/c06;
    .locals 0

    .line 2056
    return-object p1
.end method

.method public final a(J)V
    .locals 49

    move-object/from16 v0, p0

    .line 2057
    :cond_0
    :goto_0
    iget-object v1, v0, Lyads/f03;->k:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4c

    iget-object v1, v0, Lyads/f03;->k:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/jl;

    iget-wide v3, v1, Lyads/jl;->b:J

    cmp-long v1, v3, p1

    if-nez v1, :cond_4c

    .line 2058
    iget-object v1, v0, Lyads/f03;->k:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/jl;

    .line 2059
    iget v3, v1, Lyads/ll;->a:I

    const v4, 0x6d6f6f76

    if-ne v3, v4, :cond_1

    .line 2060
    invoke-virtual {v0, v1}, Lyads/f03;->a(Lyads/jl;)V

    goto :goto_0

    :cond_1
    const v4, 0x6d6f6f66

    if-ne v3, v4, :cond_4b

    .line 2061
    iget-object v3, v0, Lyads/f03;->c:Landroid/util/SparseArray;

    iget v4, v0, Lyads/f03;->a:I

    iget-object v5, v0, Lyads/f03;->g:[B

    .line 2062
    iget-object v6, v1, Lyads/jl;->d:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_44

    .line 2063
    iget-object v9, v1, Lyads/jl;->d:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lyads/jl;

    .line 2064
    iget v10, v9, Lyads/ll;->a:I

    const v11, 0x74726166

    if-ne v10, v11, :cond_42

    const v10, 0x74666864

    .line 2065
    invoke-virtual {v9, v10}, Lyads/jl;->c(I)Lyads/kl;

    move-result-object v10

    .line 2066
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2067
    iget-object v10, v10, Lyads/kl;->b:Lyads/os4;

    const/16 v11, 0x8

    .line 2068
    invoke-virtual {v10, v11}, Lyads/os4;->e(I)V

    .line 2069
    invoke-virtual {v10}, Lyads/os4;->a()I

    move-result v12

    .line 2070
    invoke-virtual {v10}, Lyads/os4;->a()I

    move-result v13

    .line 2071
    invoke-virtual {v3, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lyads/e03;

    const/4 v14, 0x1

    if-nez v13, :cond_2

    move-object/from16 v16, v3

    const/4 v13, 0x0

    goto :goto_6

    :cond_2
    and-int/lit8 v15, v12, 0x1

    move-object/from16 v16, v3

    if-eqz v15, :cond_3

    .line 2072
    invoke-virtual {v10}, Lyads/os4;->o()J

    move-result-wide v2

    .line 2073
    iget-object v15, v13, Lyads/e03;->b:Lyads/e06;

    iput-wide v2, v15, Lyads/e06;->b:J

    .line 2074
    iput-wide v2, v15, Lyads/e06;->c:J

    .line 2075
    :cond_3
    iget-object v2, v13, Lyads/e03;->e:Lyads/cm0;

    and-int/lit8 v3, v12, 0x2

    if-eqz v3, :cond_4

    .line 2076
    invoke-virtual {v10}, Lyads/os4;->a()I

    move-result v3

    sub-int/2addr v3, v14

    goto :goto_2

    .line 2077
    :cond_4
    iget v3, v2, Lyads/cm0;->a:I

    :goto_2
    and-int/lit8 v15, v12, 0x8

    if-eqz v15, :cond_5

    .line 2078
    invoke-virtual {v10}, Lyads/os4;->a()I

    move-result v15

    goto :goto_3

    .line 2079
    :cond_5
    iget v15, v2, Lyads/cm0;->b:I

    :goto_3
    and-int/lit8 v18, v12, 0x10

    if-eqz v18, :cond_6

    .line 2080
    invoke-virtual {v10}, Lyads/os4;->a()I

    move-result v18

    move/from16 v8, v18

    goto :goto_4

    .line 2081
    :cond_6
    iget v8, v2, Lyads/cm0;->c:I

    :goto_4
    and-int/lit8 v12, v12, 0x20

    if-eqz v12, :cond_7

    .line 2082
    invoke-virtual {v10}, Lyads/os4;->a()I

    move-result v2

    goto :goto_5

    .line 2083
    :cond_7
    iget v2, v2, Lyads/cm0;->d:I

    .line 2084
    :goto_5
    iget-object v10, v13, Lyads/e03;->b:Lyads/e06;

    new-instance v12, Lyads/cm0;

    invoke-direct {v12, v3, v15, v8, v2}, Lyads/cm0;-><init>(IIII)V

    iput-object v12, v10, Lyads/e06;->a:Lyads/cm0;

    :goto_6
    if-nez v13, :cond_8

    :goto_7
    move/from16 v20, v4

    move/from16 v26, v6

    move/from16 v27, v7

    goto/16 :goto_2a

    .line 2085
    :cond_8
    iget-object v2, v13, Lyads/e03;->b:Lyads/e06;

    .line 2086
    iget-wide v11, v2, Lyads/e06;->p:J

    .line 2087
    iget-boolean v8, v2, Lyads/e06;->q:Z

    .line 2088
    invoke-virtual {v13}, Lyads/e03;->b()V

    .line 2089
    iput-boolean v14, v13, Lyads/e03;->l:Z

    const v10, 0x74666474

    .line 2090
    invoke-virtual {v9, v10}, Lyads/jl;->c(I)Lyads/kl;

    move-result-object v10

    if-eqz v10, :cond_a

    and-int/lit8 v15, v4, 0x2

    if-nez v15, :cond_a

    .line 2091
    iget-object v8, v10, Lyads/kl;->b:Lyads/os4;

    const/16 v3, 0x8

    .line 2092
    invoke-virtual {v8, v3}, Lyads/os4;->e(I)V

    .line 2093
    invoke-virtual {v8}, Lyads/os4;->a()I

    move-result v10

    shr-int/lit8 v10, v10, 0x18

    and-int/lit16 v10, v10, 0xff

    if-ne v10, v14, :cond_9

    .line 2094
    invoke-virtual {v8}, Lyads/os4;->o()J

    move-result-wide v10

    goto :goto_8

    :cond_9
    invoke-virtual {v8}, Lyads/os4;->l()J

    move-result-wide v10

    .line 2095
    :goto_8
    iput-wide v10, v2, Lyads/e06;->p:J

    .line 2096
    iput-boolean v14, v2, Lyads/e06;->q:Z

    goto :goto_9

    .line 2097
    :cond_a
    iput-wide v11, v2, Lyads/e06;->p:J

    .line 2098
    iput-boolean v8, v2, Lyads/e06;->q:Z

    .line 2099
    :goto_9
    iget-object v8, v9, Lyads/jl;->c:Ljava/util/ArrayList;

    .line 2100
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    :goto_a
    const v3, 0x7472756e

    if-ge v15, v10, :cond_c

    .line 2101
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v14, v20

    check-cast v14, Lyads/kl;

    move/from16 v20, v4

    .line 2102
    iget v4, v14, Lyads/ll;->a:I

    if-ne v4, v3, :cond_b

    .line 2103
    iget-object v3, v14, Lyads/kl;->b:Lyads/os4;

    const/16 v4, 0xc

    .line 2104
    invoke-virtual {v3, v4}, Lyads/os4;->e(I)V

    .line 2105
    invoke-virtual {v3}, Lyads/os4;->n()I

    move-result v3

    if-lez v3, :cond_b

    add-int/2addr v11, v3

    add-int/lit8 v12, v12, 0x1

    :cond_b
    add-int/lit8 v15, v15, 0x1

    move/from16 v4, v20

    const/4 v14, 0x1

    goto :goto_a

    :cond_c
    move/from16 v20, v4

    const/4 v15, 0x0

    .line 2106
    iput v15, v13, Lyads/e03;->h:I

    .line 2107
    iput v15, v13, Lyads/e03;->g:I

    .line 2108
    iput v15, v13, Lyads/e03;->f:I

    .line 2109
    iget-object v4, v13, Lyads/e03;->b:Lyads/e06;

    .line 2110
    iput v12, v4, Lyads/e06;->d:I

    .line 2111
    iput v11, v4, Lyads/e06;->e:I

    .line 2112
    iget-object v14, v4, Lyads/e06;->g:[I

    array-length v14, v14

    if-ge v14, v12, :cond_d

    .line 2113
    new-array v14, v12, [J

    iput-object v14, v4, Lyads/e06;->f:[J

    .line 2114
    new-array v12, v12, [I

    iput-object v12, v4, Lyads/e06;->g:[I

    .line 2115
    :cond_d
    iget-object v12, v4, Lyads/e06;->h:[I

    array-length v12, v12

    if-ge v12, v11, :cond_e

    mul-int/lit8 v11, v11, 0x7d

    .line 2116
    div-int/lit8 v11, v11, 0x64

    .line 2117
    new-array v12, v11, [I

    iput-object v12, v4, Lyads/e06;->h:[I

    .line 2118
    new-array v12, v11, [J

    iput-object v12, v4, Lyads/e06;->i:[J

    .line 2119
    new-array v12, v11, [Z

    iput-object v12, v4, Lyads/e06;->j:[Z

    .line 2120
    new-array v11, v11, [Z

    iput-object v11, v4, Lyads/e06;->l:[Z

    :cond_e
    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_b
    const-wide/16 v21, 0x0

    if-ge v4, v10, :cond_24

    .line 2121
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    const/16 v24, 0x10

    move-object/from16 v15, v23

    check-cast v15, Lyads/kl;

    .line 2122
    iget v14, v15, Lyads/ll;->a:I

    if-ne v14, v3, :cond_23

    add-int/lit8 v14, v11, 0x1

    .line 2123
    iget-object v15, v15, Lyads/kl;->b:Lyads/os4;

    const/16 v3, 0x8

    .line 2124
    invoke-virtual {v15, v3}, Lyads/os4;->e(I)V

    .line 2125
    invoke-virtual {v15}, Lyads/os4;->a()I

    move-result v3

    move/from16 v25, v4

    .line 2126
    iget-object v4, v13, Lyads/e03;->d:Lyads/l06;

    iget-object v4, v4, Lyads/l06;->a:Lyads/c06;

    move/from16 v26, v6

    .line 2127
    iget-object v6, v13, Lyads/e03;->b:Lyads/e06;

    move/from16 v27, v7

    .line 2128
    iget-object v7, v6, Lyads/e06;->a:Lyads/cm0;

    sget v28, Lyads/u56;->a:I

    move-object/from16 v28, v8

    .line 2129
    iget-object v8, v6, Lyads/e06;->g:[I

    invoke-virtual {v15}, Lyads/os4;->n()I

    move-result v29

    aput v29, v8, v11

    .line 2130
    iget-object v8, v6, Lyads/e06;->f:[J

    move/from16 v29, v10

    move/from16 v30, v11

    iget-wide v10, v6, Lyads/e06;->b:J

    aput-wide v10, v8, v30

    and-int/lit8 v31, v3, 0x1

    if-eqz v31, :cond_f

    move-object/from16 v31, v8

    .line 2131
    invoke-virtual {v15}, Lyads/os4;->a()I

    move-result v8

    move-wide/from16 v32, v10

    int-to-long v10, v8

    add-long v10, v32, v10

    aput-wide v10, v31, v30

    :cond_f
    and-int/lit8 v8, v3, 0x4

    if-eqz v8, :cond_10

    const/4 v8, 0x1

    goto :goto_c

    :cond_10
    const/4 v8, 0x0

    .line 2132
    :goto_c
    iget v10, v7, Lyads/cm0;->d:I

    if-eqz v8, :cond_11

    .line 2133
    invoke-virtual {v15}, Lyads/os4;->a()I

    move-result v10

    :cond_11
    and-int/lit16 v11, v3, 0x100

    if-eqz v11, :cond_12

    const/4 v11, 0x1

    goto :goto_d

    :cond_12
    const/4 v11, 0x0

    :goto_d
    move/from16 v31, v8

    and-int/lit16 v8, v3, 0x200

    if-eqz v8, :cond_13

    const/4 v8, 0x1

    goto :goto_e

    :cond_13
    const/4 v8, 0x0

    :goto_e
    move/from16 v32, v8

    and-int/lit16 v8, v3, 0x400

    if-eqz v8, :cond_14

    const/4 v8, 0x1

    goto :goto_f

    :cond_14
    const/4 v8, 0x0

    :goto_f
    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_15

    const/16 v33, 0x1

    goto :goto_10

    :cond_15
    const/16 v33, 0x0

    .line 2134
    :goto_10
    iget-object v3, v4, Lyads/c06;->h:[J

    move/from16 v34, v8

    if-eqz v3, :cond_16

    array-length v8, v3

    move-object/from16 v35, v3

    const/4 v3, 0x1

    if-ne v8, v3, :cond_16

    const/16 v17, 0x0

    aget-wide v36, v35, v17

    cmp-long v3, v36, v21

    if-nez v3, :cond_16

    .line 2135
    iget-object v3, v4, Lyads/c06;->i:[J

    aget-wide v21, v3, v17

    .line 2136
    :cond_16
    iget-object v3, v6, Lyads/e06;->h:[I

    .line 2137
    iget-object v8, v6, Lyads/e06;->i:[J

    move-object/from16 v35, v3

    .line 2138
    iget-object v3, v6, Lyads/e06;->j:[Z

    move-object/from16 v36, v3

    .line 2139
    iget v3, v4, Lyads/c06;->b:I

    move-object/from16 v37, v8

    const/4 v8, 0x2

    if-ne v3, v8, :cond_17

    and-int/lit8 v3, v20, 0x1

    if-eqz v3, :cond_17

    const/4 v3, 0x1

    goto :goto_11

    :cond_17
    const/4 v3, 0x0

    .line 2140
    :goto_11
    iget-object v8, v6, Lyads/e06;->g:[I

    aget v8, v8, v30

    add-int/2addr v8, v12

    move/from16 v23, v3

    .line 2141
    iget-wide v3, v4, Lyads/c06;->c:J

    move-wide/from16 v42, v3

    .line 2142
    iget-wide v3, v6, Lyads/e06;->p:J

    :goto_12
    if-ge v12, v8, :cond_22

    if-eqz v11, :cond_18

    .line 2143
    invoke-virtual {v15}, Lyads/os4;->a()I

    move-result v30

    move/from16 v44, v30

    move/from16 v30, v8

    move/from16 v8, v44

    :goto_13
    move/from16 v44, v10

    goto :goto_14

    :cond_18
    move/from16 v30, v8

    iget v8, v7, Lyads/cm0;->b:I

    goto :goto_13

    :goto_14
    const-string v10, "Unexpected negative value: "

    if-ltz v8, :cond_21

    if-eqz v32, :cond_19

    .line 2144
    invoke-virtual {v15}, Lyads/os4;->a()I

    move-result v38

    move/from16 v45, v11

    move/from16 v11, v38

    goto :goto_15

    :cond_19
    move/from16 v45, v11

    iget v11, v7, Lyads/cm0;->c:I

    :goto_15
    if-ltz v11, :cond_20

    if-eqz v34, :cond_1a

    .line 2145
    invoke-virtual {v15}, Lyads/os4;->a()I

    move-result v10

    goto :goto_16

    :cond_1a
    if-nez v12, :cond_1b

    if-eqz v31, :cond_1b

    move/from16 v10, v44

    goto :goto_16

    .line 2146
    :cond_1b
    iget v10, v7, Lyads/cm0;->d:I

    :goto_16
    if-eqz v33, :cond_1c

    .line 2147
    invoke-virtual {v15}, Lyads/os4;->a()I

    move-result v38

    move-object/from16 v46, v7

    move/from16 v7, v38

    :goto_17
    move/from16 v47, v14

    move-object/from16 v48, v15

    goto :goto_18

    :cond_1c
    move-object/from16 v46, v7

    const/4 v7, 0x0

    goto :goto_17

    :goto_18
    int-to-long v14, v7

    add-long/2addr v14, v3

    sub-long v38, v14, v21

    const-wide/32 v40, 0xf4240

    .line 2148
    invoke-static/range {v38 .. v43}, Lyads/u56;->a(JJJ)J

    move-result-wide v14

    aput-wide v14, v37, v12

    .line 2149
    iget-boolean v7, v6, Lyads/e06;->q:Z

    if-nez v7, :cond_1d

    .line 2150
    iget-object v7, v13, Lyads/e03;->d:Lyads/l06;

    move-wide/from16 v38, v14

    iget-wide v14, v7, Lyads/l06;->h:J

    add-long v14, v38, v14

    aput-wide v14, v37, v12

    .line 2151
    :cond_1d
    aput v11, v35, v12

    shr-int/lit8 v7, v10, 0x10

    const/16 v19, 0x1

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_1f

    if-eqz v23, :cond_1e

    if-nez v12, :cond_1f

    :cond_1e
    const/4 v15, 0x1

    goto :goto_19

    :cond_1f
    const/4 v15, 0x0

    .line 2152
    :goto_19
    aput-boolean v15, v36, v12

    int-to-long v7, v8

    add-long/2addr v3, v7

    add-int/lit8 v12, v12, 0x1

    move/from16 v8, v30

    move/from16 v10, v44

    move/from16 v11, v45

    move-object/from16 v7, v46

    move/from16 v14, v47

    move-object/from16 v15, v48

    goto/16 :goto_12

    .line 2153
    :cond_20
    invoke-static {v11, v10}, Lyads/vx4;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2154
    invoke-static {v0, v1}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :cond_21
    const/4 v1, 0x0

    .line 2155
    invoke-static {v8, v10}, Lyads/vx4;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2156
    invoke-static {v0, v1}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :cond_22
    move/from16 v30, v8

    move/from16 v47, v14

    .line 2157
    iput-wide v3, v6, Lyads/e06;->p:J

    move/from16 v12, v30

    move/from16 v11, v47

    goto :goto_1a

    :cond_23
    move/from16 v25, v4

    move/from16 v26, v6

    move/from16 v27, v7

    move-object/from16 v28, v8

    move/from16 v29, v10

    move/from16 v30, v11

    :goto_1a
    add-int/lit8 v4, v25, 0x1

    move/from16 v6, v26

    move/from16 v7, v27

    move-object/from16 v8, v28

    move/from16 v10, v29

    const v3, 0x7472756e

    goto/16 :goto_b

    :cond_24
    move/from16 v26, v6

    move/from16 v27, v7

    const/16 v24, 0x10

    .line 2158
    iget-object v3, v13, Lyads/e03;->d:Lyads/l06;

    iget-object v3, v3, Lyads/l06;->a:Lyads/c06;

    iget-object v4, v2, Lyads/e06;->a:Lyads/cm0;

    .line 2159
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2160
    iget v4, v4, Lyads/cm0;->a:I

    .line 2161
    iget-object v3, v3, Lyads/c06;->k:[Lyads/d06;

    .line 2162
    aget-object v4, v3, v4

    const v3, 0x7361697a

    .line 2163
    invoke-virtual {v9, v3}, Lyads/jl;->c(I)Lyads/kl;

    move-result-object v3

    if-eqz v3, :cond_2a

    .line 2164
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2165
    iget-object v6, v3, Lyads/kl;->b:Lyads/os4;

    .line 2166
    iget v7, v4, Lyads/d06;->d:I

    const/16 v3, 0x8

    .line 2167
    invoke-virtual {v6, v3}, Lyads/os4;->e(I)V

    .line 2168
    invoke-virtual {v6}, Lyads/os4;->a()I

    move-result v8

    const/4 v10, 0x1

    and-int/2addr v8, v10

    if-ne v8, v10, :cond_25

    .line 2169
    iget v8, v6, Lyads/os4;->b:I

    add-int/2addr v8, v3

    invoke-virtual {v6, v8}, Lyads/os4;->e(I)V

    .line 2170
    :cond_25
    invoke-virtual {v6}, Lyads/os4;->k()I

    move-result v8

    .line 2171
    invoke-virtual {v6}, Lyads/os4;->n()I

    move-result v10

    .line 2172
    iget v11, v2, Lyads/e06;->e:I

    if-gt v10, v11, :cond_2b

    if-nez v8, :cond_28

    .line 2173
    iget-object v8, v2, Lyads/e06;->l:[Z

    const/4 v11, 0x0

    const/4 v15, 0x0

    :goto_1b
    if-ge v15, v10, :cond_27

    .line 2174
    invoke-virtual {v6}, Lyads/os4;->k()I

    move-result v12

    add-int/2addr v11, v12

    if-le v12, v7, :cond_26

    const/4 v12, 0x1

    goto :goto_1c

    :cond_26
    const/4 v12, 0x0

    .line 2175
    :goto_1c
    aput-boolean v12, v8, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_1b

    :cond_27
    const/4 v7, 0x0

    goto :goto_1e

    :cond_28
    if-le v8, v7, :cond_29

    const/4 v15, 0x1

    goto :goto_1d

    :cond_29
    const/4 v15, 0x0

    :goto_1d
    mul-int v11, v8, v10

    .line 2176
    iget-object v6, v2, Lyads/e06;->l:[Z

    const/4 v7, 0x0

    invoke-static {v6, v7, v10, v15}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 2177
    :goto_1e
    iget-object v6, v2, Lyads/e06;->l:[Z

    iget v8, v2, Lyads/e06;->e:I

    invoke-static {v6, v10, v8, v7}, Ljava/util/Arrays;->fill([ZIIZ)V

    if-lez v11, :cond_2a

    .line 2178
    iget-object v6, v2, Lyads/e06;->n:Lyads/os4;

    invoke-virtual {v6, v11}, Lyads/os4;->c(I)V

    const/4 v6, 0x1

    .line 2179
    iput-boolean v6, v2, Lyads/e06;->k:Z

    .line 2180
    iput-boolean v6, v2, Lyads/e06;->o:Z

    goto :goto_1f

    :cond_2a
    const/4 v6, 0x1

    goto :goto_1f

    :cond_2b
    const/4 v6, 0x1

    .line 2181
    const-string v0, "Saiz sample count "

    const-string v1, " is greater than fragment sample count"

    .line 2182
    invoke-static {v10, v0, v1}, Ln7;->c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2183
    iget v1, v2, Lyads/e06;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2184
    new-instance v1, Lyads/xs4;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v6, v6}, Lyads/xs4;-><init>(Ljava/lang/String;Ljava/lang/Exception;ZI)V

    .line 2185
    throw v1

    :goto_1f
    const v7, 0x7361696f

    .line 2186
    invoke-virtual {v9, v7}, Lyads/jl;->c(I)Lyads/kl;

    move-result-object v7

    if-eqz v7, :cond_2e

    .line 2187
    iget-object v7, v7, Lyads/kl;->b:Lyads/os4;

    const/16 v3, 0x8

    .line 2188
    invoke-virtual {v7, v3}, Lyads/os4;->e(I)V

    .line 2189
    invoke-virtual {v7}, Lyads/os4;->a()I

    move-result v8

    and-int/lit8 v10, v8, 0x1

    if-ne v10, v6, :cond_2c

    .line 2190
    iget v10, v7, Lyads/os4;->b:I

    add-int/2addr v10, v3

    invoke-virtual {v7, v10}, Lyads/os4;->e(I)V

    .line 2191
    :cond_2c
    invoke-virtual {v7}, Lyads/os4;->n()I

    move-result v10

    if-ne v10, v6, :cond_2f

    shr-int/lit8 v6, v8, 0x18

    and-int/lit16 v6, v6, 0xff

    .line 2192
    iget-wide v10, v2, Lyads/e06;->c:J

    if-nez v6, :cond_2d

    .line 2193
    invoke-virtual {v7}, Lyads/os4;->l()J

    move-result-wide v6

    goto :goto_20

    :cond_2d
    invoke-virtual {v7}, Lyads/os4;->o()J

    move-result-wide v6

    :goto_20
    add-long/2addr v10, v6

    iput-wide v10, v2, Lyads/e06;->c:J

    :cond_2e
    const/4 v6, 0x0

    goto :goto_21

    .line 2194
    :cond_2f
    const-string v0, "Unexpected saio entry count: "

    invoke-static {v10, v0}, Lyads/vx4;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    .line 2195
    invoke-static {v0, v6}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :goto_21
    const v7, 0x73656e63

    .line 2196
    invoke-virtual {v9, v7}, Lyads/jl;->c(I)Lyads/kl;

    move-result-object v7

    if-eqz v7, :cond_30

    .line 2197
    iget-object v7, v7, Lyads/kl;->b:Lyads/os4;

    const/4 v15, 0x0

    .line 2198
    invoke-static {v7, v15, v2}, Lyads/f03;->a(Lyads/os4;ILyads/e06;)V

    :cond_30
    if-eqz v4, :cond_31

    .line 2199
    iget-object v4, v4, Lyads/d06;->b:Ljava/lang/String;

    move-object/from16 v30, v4

    goto :goto_22

    :cond_31
    move-object/from16 v30, v6

    :goto_22
    move-object v4, v6

    move-object v7, v4

    const/4 v8, 0x0

    .line 2200
    :goto_23
    iget-object v10, v9, Lyads/jl;->c:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v8, v10, :cond_34

    .line 2201
    iget-object v10, v9, Lyads/jl;->c:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lyads/kl;

    .line 2202
    iget-object v11, v10, Lyads/kl;->b:Lyads/os4;

    .line 2203
    iget v10, v10, Lyads/ll;->a:I

    const v12, 0x73626770

    const v13, 0x73656967

    if-ne v10, v12, :cond_32

    const/16 v12, 0xc

    .line 2204
    invoke-virtual {v11, v12}, Lyads/os4;->e(I)V

    .line 2205
    invoke-virtual {v11}, Lyads/os4;->a()I

    move-result v10

    if-ne v10, v13, :cond_33

    move-object v4, v11

    goto :goto_24

    :cond_32
    const/16 v12, 0xc

    const v14, 0x73677064

    if-ne v10, v14, :cond_33

    .line 2206
    invoke-virtual {v11, v12}, Lyads/os4;->e(I)V

    .line 2207
    invoke-virtual {v11}, Lyads/os4;->a()I

    move-result v10

    if-ne v10, v13, :cond_33

    move-object v7, v11

    :cond_33
    :goto_24
    add-int/lit8 v8, v8, 0x1

    goto :goto_23

    :cond_34
    if-eqz v4, :cond_3f

    if-nez v7, :cond_35

    goto/16 :goto_27

    :cond_35
    const/16 v3, 0x8

    .line 2208
    invoke-virtual {v4, v3}, Lyads/os4;->e(I)V

    .line 2209
    invoke-virtual {v4}, Lyads/os4;->a()I

    move-result v8

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    .line 2210
    iget v10, v4, Lyads/os4;->b:I

    add-int/lit8 v10, v10, 0x4

    invoke-virtual {v4, v10}, Lyads/os4;->e(I)V

    const/4 v10, 0x1

    if-ne v8, v10, :cond_36

    .line 2211
    iget v8, v4, Lyads/os4;->b:I

    add-int/lit8 v8, v8, 0x4

    invoke-virtual {v4, v8}, Lyads/os4;->e(I)V

    .line 2212
    :cond_36
    invoke-virtual {v4}, Lyads/os4;->a()I

    move-result v4

    if-ne v4, v10, :cond_3e

    const/16 v3, 0x8

    .line 2213
    invoke-virtual {v7, v3}, Lyads/os4;->e(I)V

    .line 2214
    invoke-virtual {v7}, Lyads/os4;->a()I

    move-result v4

    shr-int/lit8 v4, v4, 0x18

    and-int/lit16 v4, v4, 0xff

    .line 2215
    iget v8, v7, Lyads/os4;->b:I

    add-int/lit8 v8, v8, 0x4

    invoke-virtual {v7, v8}, Lyads/os4;->e(I)V

    if-ne v4, v10, :cond_38

    .line 2216
    invoke-virtual {v7}, Lyads/os4;->l()J

    move-result-wide v10

    cmp-long v4, v10, v21

    if-eqz v4, :cond_37

    goto :goto_25

    .line 2217
    :cond_37
    const-string v0, "Variable length description in sgpd found (unsupported)"

    invoke-static {v0}, Lyads/xs4;->a(Ljava/lang/String;)Lyads/xs4;

    move-result-object v0

    throw v0

    :cond_38
    const/4 v8, 0x2

    if-lt v4, v8, :cond_39

    .line 2218
    iget v4, v7, Lyads/os4;->b:I

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v7, v4}, Lyads/os4;->e(I)V

    .line 2219
    :cond_39
    :goto_25
    invoke-virtual {v7}, Lyads/os4;->l()J

    move-result-wide v10

    const-wide/16 v12, 0x1

    cmp-long v4, v10, v12

    if-nez v4, :cond_3d

    .line 2220
    iget v4, v7, Lyads/os4;->b:I

    const/4 v10, 0x1

    add-int/2addr v4, v10

    invoke-virtual {v7, v4}, Lyads/os4;->e(I)V

    .line 2221
    invoke-virtual {v7}, Lyads/os4;->k()I

    move-result v4

    and-int/lit16 v8, v4, 0xf0

    shr-int/lit8 v33, v8, 0x4

    and-int/lit8 v34, v4, 0xf

    .line 2222
    invoke-virtual {v7}, Lyads/os4;->k()I

    move-result v4

    if-ne v4, v10, :cond_3a

    const/16 v29, 0x1

    goto :goto_26

    :cond_3a
    const/16 v29, 0x0

    :goto_26
    if-nez v29, :cond_3b

    goto :goto_27

    .line 2223
    :cond_3b
    invoke-virtual {v7}, Lyads/os4;->k()I

    move-result v31

    move/from16 v4, v24

    .line 2224
    new-array v8, v4, [B

    const/4 v15, 0x0

    .line 2225
    invoke-virtual {v7, v8, v15, v4}, Lyads/os4;->a([BII)V

    if-nez v31, :cond_3c

    .line 2226
    invoke-virtual {v7}, Lyads/os4;->k()I

    move-result v4

    .line 2227
    new-array v6, v4, [B

    .line 2228
    invoke-virtual {v7, v6, v15, v4}, Lyads/os4;->a([BII)V

    :cond_3c
    move-object/from16 v35, v6

    const/4 v10, 0x1

    .line 2229
    iput-boolean v10, v2, Lyads/e06;->k:Z

    .line 2230
    new-instance v28, Lyads/d06;

    move-object/from16 v32, v8

    invoke-direct/range {v28 .. v35}, Lyads/d06;-><init>(ZLjava/lang/String;I[BII[B)V

    move-object/from16 v4, v28

    iput-object v4, v2, Lyads/e06;->m:Lyads/d06;

    goto :goto_27

    .line 2231
    :cond_3d
    const-string v0, "Entry count in sgpd != 1 (unsupported)."

    invoke-static {v0}, Lyads/xs4;->a(Ljava/lang/String;)Lyads/xs4;

    move-result-object v0

    throw v0

    .line 2232
    :cond_3e
    const-string v0, "Entry count in sbgp != 1 (unsupported)."

    invoke-static {v0}, Lyads/xs4;->a(Ljava/lang/String;)Lyads/xs4;

    move-result-object v0

    throw v0

    .line 2233
    :cond_3f
    :goto_27
    iget-object v4, v9, Lyads/jl;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_28
    if-ge v6, v4, :cond_43

    .line 2234
    iget-object v7, v9, Lyads/jl;->c:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lyads/kl;

    .line 2235
    iget v8, v7, Lyads/ll;->a:I

    const v10, 0x75756964

    if-ne v8, v10, :cond_41

    .line 2236
    iget-object v7, v7, Lyads/kl;->b:Lyads/os4;

    const/16 v3, 0x8

    .line 2237
    invoke-virtual {v7, v3}, Lyads/os4;->e(I)V

    const/16 v8, 0x10

    const/4 v15, 0x0

    .line 2238
    invoke-virtual {v7, v5, v15, v8}, Lyads/os4;->a([BII)V

    .line 2239
    sget-object v10, Lyads/f03;->G:[B

    invoke-static {v5, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    if-nez v10, :cond_40

    goto :goto_29

    .line 2240
    :cond_40
    invoke-static {v7, v8, v2}, Lyads/f03;->a(Lyads/os4;ILyads/e06;)V

    goto :goto_29

    :cond_41
    const/16 v3, 0x8

    const/16 v8, 0x10

    :goto_29
    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    :cond_42
    move-object/from16 v16, v3

    goto/16 :goto_7

    :cond_43
    :goto_2a
    add-int/lit8 v7, v27, 0x1

    move-object/from16 v3, v16

    move/from16 v4, v20

    move/from16 v6, v26

    goto/16 :goto_1

    :cond_44
    const/4 v6, 0x0

    .line 2241
    iget-object v1, v1, Lyads/jl;->c:Ljava/util/ArrayList;

    invoke-static {v1}, Lyads/f03;->a(Ljava/util/ArrayList;)Lyads/ql2;

    move-result-object v1

    if-eqz v1, :cond_47

    .line 2242
    iget-object v2, v0, Lyads/f03;->c:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_2b
    if-ge v3, v2, :cond_47

    .line 2243
    iget-object v4, v0, Lyads/f03;->c:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/e03;

    .line 2244
    iget-object v5, v4, Lyads/e03;->d:Lyads/l06;

    .line 2245
    iget-object v5, v5, Lyads/l06;->a:Lyads/c06;

    iget-object v7, v4, Lyads/e03;->b:Lyads/e06;

    iget-object v7, v7, Lyads/e06;->a:Lyads/cm0;

    .line 2246
    sget v8, Lyads/u56;->a:I

    iget v7, v7, Lyads/cm0;->a:I

    .line 2247
    iget-object v5, v5, Lyads/c06;->k:[Lyads/d06;

    .line 2248
    aget-object v5, v5, v7

    if-eqz v5, :cond_45

    .line 2249
    iget-object v5, v5, Lyads/d06;->b:Ljava/lang/String;

    goto :goto_2c

    :cond_45
    move-object v5, v6

    .line 2250
    :goto_2c
    iget-object v7, v1, Lyads/ql2;->d:Ljava/lang/String;

    invoke-static {v7, v5}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_46

    move-object v7, v1

    goto :goto_2d

    .line 2251
    :cond_46
    new-instance v7, Lyads/ql2;

    iget-object v8, v1, Lyads/ql2;->b:[Lyads/pl2;

    const/4 v15, 0x0

    invoke-direct {v7, v5, v15, v8}, Lyads/ql2;-><init>(Ljava/lang/String;Z[Lyads/pl2;)V

    .line 2252
    :goto_2d
    iget-object v5, v4, Lyads/e03;->d:Lyads/l06;

    iget-object v5, v5, Lyads/l06;->a:Lyads/c06;

    iget-object v5, v5, Lyads/c06;->f:Lyads/vz2;

    .line 2253
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2254
    new-instance v8, Lyads/uz2;

    invoke-direct {v8, v5}, Lyads/uz2;-><init>(Lyads/vz2;)V

    .line 2255
    iput-object v7, v8, Lyads/uz2;->n:Lyads/ql2;

    .line 2256
    new-instance v5, Lyads/vz2;

    invoke-direct {v5, v8}, Lyads/vz2;-><init>(Lyads/uz2;)V

    .line 2257
    iget-object v4, v4, Lyads/e03;->a:Lyads/k06;

    invoke-interface {v4, v5}, Lyads/k06;->a(Lyads/vz2;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 2258
    :cond_47
    iget-wide v1, v0, Lyads/f03;->u:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 2259
    iget-object v1, v0, Lyads/f03;->c:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_2e
    if-ge v2, v1, :cond_4a

    .line 2260
    iget-object v5, v0, Lyads/f03;->c:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/e03;

    iget-wide v6, v0, Lyads/f03;->u:J

    .line 2261
    iget v8, v5, Lyads/e03;->f:I

    .line 2262
    :goto_2f
    iget-object v9, v5, Lyads/e03;->b:Lyads/e06;

    iget v10, v9, Lyads/e06;->e:I

    if-ge v8, v10, :cond_49

    .line 2263
    iget-object v10, v9, Lyads/e06;->i:[J

    .line 2264
    aget-wide v11, v10, v8

    cmp-long v10, v11, v6

    if-gez v10, :cond_49

    .line 2265
    iget-object v9, v9, Lyads/e06;->j:[Z

    aget-boolean v9, v9, v8

    if-eqz v9, :cond_48

    .line 2266
    iput v8, v5, Lyads/e03;->i:I

    :cond_48
    add-int/lit8 v8, v8, 0x1

    goto :goto_2f

    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 2267
    :cond_4a
    iput-wide v3, v0, Lyads/f03;->u:J

    goto/16 :goto_0

    .line 2268
    :cond_4b
    iget-object v2, v0, Lyads/f03;->k:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2269
    iget-object v2, v0, Lyads/f03;->k:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/jl;

    .line 2270
    iget-object v2, v2, Lyads/jl;->d:Ljava/util/ArrayList;

    .line 2271
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4c
    const/4 v15, 0x0

    .line 2272
    iput v15, v0, Lyads/f03;->n:I

    .line 2273
    iput v15, v0, Lyads/f03;->q:I

    return-void
.end method

.method public final a(JJ)V
    .locals 2

    .line 2048
    iget-object p1, p0, Lyads/f03;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    if-ge v0, p1, :cond_0

    .line 2049
    iget-object v1, p0, Lyads/f03;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/e03;

    invoke-virtual {v1}, Lyads/e03;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2050
    :cond_0
    iget-object p1, p0, Lyads/f03;->l:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 2051
    iput p2, p0, Lyads/f03;->t:I

    .line 2052
    iput-wide p3, p0, Lyads/f03;->u:J

    .line 2053
    iget-object p1, p0, Lyads/f03;->k:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 2054
    iput p2, p0, Lyads/f03;->n:I

    .line 2055
    iput p2, p0, Lyads/f03;->q:I

    return-void
.end method

.method public final a(Lyads/jl;)V
    .locals 14

    .line 2274
    iget-object v0, p1, Lyads/jl;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Lyads/f03;->a(Ljava/util/ArrayList;)Lyads/ql2;

    move-result-object v5

    const v0, 0x6d766578

    .line 2275
    invoke-virtual {p1, v0}, Lyads/jl;->b(I)Lyads/jl;

    move-result-object v0

    .line 2276
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2277
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 2278
    iget-object v1, v0, Lyads/jl;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x0

    move-wide v3, v2

    move v2, v10

    :goto_0
    const/4 v11, 0x1

    if-ge v2, v1, :cond_3

    .line 2279
    iget-object v6, v0, Lyads/jl;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lyads/kl;

    .line 2280
    iget v7, v6, Lyads/ll;->a:I

    const v8, 0x74726578

    if-ne v7, v8, :cond_0

    .line 2281
    iget-object v6, v6, Lyads/kl;->b:Lyads/os4;

    const/16 v7, 0xc

    .line 2282
    invoke-virtual {v6, v7}, Lyads/os4;->e(I)V

    .line 2283
    invoke-virtual {v6}, Lyads/os4;->a()I

    move-result v7

    .line 2284
    invoke-virtual {v6}, Lyads/os4;->a()I

    move-result v8

    sub-int/2addr v8, v11

    .line 2285
    invoke-virtual {v6}, Lyads/os4;->a()I

    move-result v11

    .line 2286
    invoke-virtual {v6}, Lyads/os4;->a()I

    move-result v12

    .line 2287
    invoke-virtual {v6}, Lyads/os4;->a()I

    move-result v6

    .line 2288
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v13, Lyads/cm0;

    invoke-direct {v13, v8, v11, v12, v6}, Lyads/cm0;-><init>(IIII)V

    .line 2289
    invoke-static {v7, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    .line 2290
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lyads/cm0;

    invoke-virtual {v9, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    const v8, 0x6d656864

    if-ne v7, v8, :cond_2

    .line 2291
    iget-object v3, v6, Lyads/kl;->b:Lyads/os4;

    const/16 v4, 0x8

    .line 2292
    invoke-virtual {v3, v4}, Lyads/os4;->e(I)V

    .line 2293
    invoke-virtual {v3}, Lyads/os4;->a()I

    move-result v4

    shr-int/lit8 v4, v4, 0x18

    and-int/lit16 v4, v4, 0xff

    if-nez v4, :cond_1

    .line 2294
    invoke-virtual {v3}, Lyads/os4;->l()J

    move-result-wide v3

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lyads/os4;->o()J

    move-result-wide v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2295
    :cond_3
    new-instance v2, Lyads/f23;

    invoke-direct {v2}, Lyads/f23;-><init>()V

    iget v0, p0, Lyads/f03;->a:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    move v6, v11

    goto :goto_2

    :cond_4
    move v6, v10

    :goto_2
    new-instance v8, Lml0;

    const/4 v0, 0x7

    invoke-direct {v8, p0, v0}, Lml0;-><init>(Ljava/lang/Object;I)V

    const/4 v7, 0x0

    move-object v1, p1

    .line 2296
    invoke-static/range {v1 .. v8}, Lyads/sl;->a(Lyads/jl;Lyads/f23;JLyads/ql2;ZZLyads/v13;)Ljava/util/ArrayList;

    move-result-object p1

    .line 2297
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2298
    iget-object v1, p0, Lyads/f03;->c:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_7

    move v1, v10

    :goto_3
    if-ge v1, v0, :cond_6

    .line 2299
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/l06;

    .line 2300
    iget-object v3, v2, Lyads/l06;->a:Lyads/c06;

    .line 2301
    new-instance v4, Lyads/e03;

    iget-object v5, p0, Lyads/f03;->C:Lyads/zs2;

    iget v6, v3, Lyads/c06;->b:I

    .line 2302
    invoke-interface {v5, v1, v6}, Lyads/zs2;->a(II)Lyads/k06;

    move-result-object v5

    iget v6, v3, Lyads/c06;->a:I

    .line 2303
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ne v7, v11, :cond_5

    .line 2304
    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lyads/cm0;

    goto :goto_4

    .line 2305
    :cond_5
    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lyads/cm0;

    .line 2306
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2307
    :goto_4
    invoke-direct {v4, v5, v2, v6}, Lyads/e03;-><init>(Lyads/k06;Lyads/l06;Lyads/cm0;)V

    .line 2308
    iget-object v2, p0, Lyads/f03;->c:Landroid/util/SparseArray;

    iget v5, v3, Lyads/c06;->a:I

    invoke-virtual {v2, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2309
    iget-wide v4, p0, Lyads/f03;->v:J

    iget-wide v2, v3, Lyads/c06;->e:J

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lyads/f03;->v:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2310
    :cond_6
    iget-object p0, p0, Lyads/f03;->C:Lyads/zs2;

    invoke-interface {p0}, Lyads/zs2;->a()V

    return-void

    .line 2311
    :cond_7
    iget-object v1, p0, Lyads/f03;->c:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ne v1, v0, :cond_a

    move v1, v10

    :goto_5
    if-ge v1, v0, :cond_9

    .line 2312
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/l06;

    .line 2313
    iget-object v3, v2, Lyads/l06;->a:Lyads/c06;

    .line 2314
    iget-object v4, p0, Lyads/f03;->c:Landroid/util/SparseArray;

    iget v5, v3, Lyads/c06;->a:I

    .line 2315
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/e03;

    iget v3, v3, Lyads/c06;->a:I

    .line 2316
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ne v5, v11, :cond_8

    .line 2317
    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/cm0;

    goto :goto_6

    .line 2318
    :cond_8
    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/cm0;

    .line 2319
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2320
    :goto_6
    iput-object v2, v4, Lyads/e03;->d:Lyads/l06;

    .line 2321
    iput-object v3, v4, Lyads/e03;->e:Lyads/cm0;

    .line 2322
    iget-object v3, v4, Lyads/e03;->a:Lyads/k06;

    iget-object v2, v2, Lyads/l06;->a:Lyads/c06;

    iget-object v2, v2, Lyads/c06;->f:Lyads/vz2;

    invoke-interface {v3, v2}, Lyads/k06;->a(Lyads/vz2;)V

    .line 2323
    invoke-virtual {v4}, Lyads/e03;->b()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    return-void

    .line 2324
    :cond_a
    invoke-static {}, Lud;->g()V

    return-void
.end method

.method public final a(Lyads/zs2;)V
    .locals 6

    .line 2032
    iput-object p1, p0, Lyads/f03;->C:Lyads/zs2;

    const/4 v0, 0x0

    .line 2033
    iput v0, p0, Lyads/f03;->n:I

    .line 2034
    iput v0, p0, Lyads/f03;->q:I

    const/4 v1, 0x2

    .line 2035
    new-array v1, v1, [Lyads/k06;

    iput-object v1, p0, Lyads/f03;->D:[Lyads/k06;

    .line 2036
    iget-object v2, p0, Lyads/f03;->m:Lyads/k06;

    if-eqz v2, :cond_0

    .line 2037
    aput-object v2, v1, v0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 2038
    :goto_0
    iget v3, p0, Lyads/f03;->a:I

    and-int/lit8 v3, v3, 0x4

    const/16 v4, 0x64

    if-eqz v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    const/4 v5, 0x5

    .line 2039
    invoke-interface {p1, v4, v5}, Lyads/zs2;->a(II)Lyads/k06;

    move-result-object p1

    aput-object p1, v1, v2

    const/16 v4, 0x65

    move v2, v3

    .line 2040
    :cond_1
    iget-object p1, p0, Lyads/f03;->D:[Lyads/k06;

    invoke-static {v2, p1}, Lyads/u56;->a(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lyads/k06;

    iput-object p1, p0, Lyads/f03;->D:[Lyads/k06;

    .line 2041
    array-length v1, p1

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 2042
    sget-object v5, Lyads/f03;->H:Lyads/vz2;

    invoke-interface {v3, v5}, Lyads/k06;->a(Lyads/vz2;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2043
    :cond_2
    iget-object p1, p0, Lyads/f03;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lyads/k06;

    iput-object p1, p0, Lyads/f03;->E:[Lyads/k06;

    .line 2044
    :goto_2
    iget-object p1, p0, Lyads/f03;->E:[Lyads/k06;

    array-length p1, p1

    if-ge v0, p1, :cond_3

    .line 2045
    iget-object p1, p0, Lyads/f03;->C:Lyads/zs2;

    add-int/lit8 v1, v4, 0x1

    const/4 v2, 0x3

    invoke-interface {p1, v4, v2}, Lyads/zs2;->a(II)Lyads/k06;

    move-result-object p1

    .line 2046
    iget-object v2, p0, Lyads/f03;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/vz2;

    invoke-interface {p1, v2}, Lyads/k06;->a(Lyads/vz2;)V

    .line 2047
    iget-object v2, p0, Lyads/f03;->E:[Lyads/k06;

    aput-object p1, v2, v0

    add-int/lit8 v0, v0, 0x1

    move v4, v1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final a(Lyads/xs2;)Z
    .locals 1

    const/4 p0, 0x1

    const/4 v0, 0x0

    .line 2031
    invoke-static {p1, p0, v0}, Lyads/fo5;->a(Lyads/xs2;ZZ)Z

    move-result p0

    return p0
.end method

.method public final release()V
    .locals 0

    return-void
.end method
