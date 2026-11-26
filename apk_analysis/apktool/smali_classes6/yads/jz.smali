.class public final Lyads/jz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/mc5;
.implements Lyads/ui5;
.implements Lyads/ku3;
.implements Lyads/ou3;


# instance fields
.field public final b:I

.field public final c:[I

.field public final d:[Lyads/vz2;

.field public final e:[Z

.field public final f:Lyads/jk0;

.field public final g:Lyads/pc0;

.field public final h:Lyads/k14;

.field public final i:Lyads/ll0;

.field public final j:Lyads/ru3;

.field public final k:Lyads/fz;

.field public final l:Ljava/util/ArrayList;

.field public final m:Ljava/util/List;

.field public final n:Lyads/lc5;

.field public final o:[Lyads/lc5;

.field public final p:Lyads/bs;

.field public q:Lyads/cz;

.field public r:Lyads/vz2;

.field public s:Lyads/pc0;

.field public t:J

.field public u:J

.field public v:I

.field public w:Lyads/zr;

.field public x:Z


# direct methods
.method public constructor <init>(I[I[Lyads/vz2;Lyads/jk0;Lyads/pc0;Lyads/aj0;JLyads/xl2;Lyads/tl2;Lyads/ll0;Lyads/k14;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lyads/jz;->b:I

    iput-object p2, p0, Lyads/jz;->c:[I

    iput-object p3, p0, Lyads/jz;->d:[Lyads/vz2;

    iput-object p4, p0, Lyads/jz;->f:Lyads/jk0;

    iput-object p5, p0, Lyads/jz;->g:Lyads/pc0;

    iput-object p12, p0, Lyads/jz;->h:Lyads/k14;

    iput-object p11, p0, Lyads/jz;->i:Lyads/ll0;

    new-instance p3, Lyads/ru3;

    const-string p4, "ChunkSampleStream"

    invoke-direct {p3, p4}, Lyads/ru3;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lyads/jz;->j:Lyads/ru3;

    new-instance p3, Lyads/fz;

    invoke-direct {p3}, Lyads/fz;-><init>()V

    iput-object p3, p0, Lyads/jz;->k:Lyads/fz;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lyads/jz;->l:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lyads/jz;->m:Ljava/util/List;

    array-length p2, p2

    new-array p3, p2, [Lyads/lc5;

    iput-object p3, p0, Lyads/jz;->o:[Lyads/lc5;

    new-array p3, p2, [Z

    iput-object p3, p0, Lyads/jz;->e:[Z

    add-int/lit8 p3, p2, 0x1

    new-array p4, p3, [I

    new-array p3, p3, [Lyads/lc5;

    new-instance p5, Lyads/lc5;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p5, p6, p9, p10}, Lyads/lc5;-><init>(Lyads/aj0;Lyads/xl2;Lyads/tl2;)V

    iput-object p5, p0, Lyads/jz;->n:Lyads/lc5;

    const/4 p9, 0x0

    aput p1, p4, p9

    aput-object p5, p3, p9

    :goto_0
    if-ge p9, p2, :cond_0

    new-instance p1, Lyads/lc5;

    const/4 p5, 0x0

    invoke-direct {p1, p6, p5, p5}, Lyads/lc5;-><init>(Lyads/aj0;Lyads/xl2;Lyads/tl2;)V

    iget-object p5, p0, Lyads/jz;->o:[Lyads/lc5;

    aput-object p1, p5, p9

    add-int/lit8 p5, p9, 0x1

    aput-object p1, p3, p5

    iget-object p1, p0, Lyads/jz;->c:[I

    aget p1, p1, p9

    aput p1, p4, p5

    move p9, p5

    goto :goto_0

    :cond_0
    new-instance p1, Lyads/bs;

    invoke-direct {p1, p4, p3}, Lyads/bs;-><init>([I[Lyads/lc5;)V

    iput-object p1, p0, Lyads/jz;->p:Lyads/bs;

    iput-wide p7, p0, Lyads/jz;->t:J

    iput-wide p7, p0, Lyads/jz;->u:J

    return-void
.end method


# virtual methods
.method public final a(II)I
    .locals 2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 859
    iget-object v0, p0, Lyads/jz;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 860
    iget-object v1, p0, Lyads/jz;->l:Ljava/util/ArrayList;

    if-ge p2, v0, :cond_1

    .line 861
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/zr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lyads/zr;->a(I)I

    move-result v0

    if-le v0, p1, :cond_0

    add-int/lit8 p2, p2, -0x1

    return p2

    .line 862
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public final a(Lyads/a03;Lyads/mi0;I)I
    .locals 4

    .line 852
    invoke-virtual {p0}, Lyads/jz;->d()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    .line 853
    :cond_0
    iget-object v0, p0, Lyads/jz;->w:Lyads/zr;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 854
    invoke-virtual {v0, v2}, Lyads/zr;->a(I)I

    move-result v0

    iget-object v2, p0, Lyads/jz;->n:Lyads/lc5;

    .line 855
    iget v3, v2, Lyads/lc5;->q:I

    .line 856
    iget v2, v2, Lyads/lc5;->s:I

    add-int/2addr v3, v2

    if-gt v0, v3, :cond_1

    return v1

    .line 857
    :cond_1
    invoke-virtual {p0}, Lyads/jz;->e()V

    .line 858
    iget-object v0, p0, Lyads/jz;->n:Lyads/lc5;

    iget-boolean p0, p0, Lyads/jz;->x:Z

    invoke-virtual {v0, p1, p2, p3, p0}, Lyads/lc5;->a(Lyads/a03;Lyads/mi0;IZ)I

    move-result p0

    return p0
.end method

.method public final a(Lyads/nu3;JJLjava/io/IOException;I)Lyads/lu3;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p1

    check-cast v2, Lyads/cz;

    iget-object v3, v2, Lyads/cz;->i:Lyads/rq5;

    iget-wide v3, v3, Lyads/rq5;->b:J

    instance-of v5, v2, Lyads/zr;

    iget-object v6, v0, Lyads/jz;->l:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    const-wide/16 v8, 0x0

    cmp-long v3, v3, v8

    if-eqz v3, :cond_1

    if-eqz v5, :cond_1

    invoke-virtual {v0, v6}, Lyads/jz;->b(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v7

    :goto_1
    new-instance v10, Lyads/cu3;

    iget-object v11, v2, Lyads/cz;->i:Lyads/rq5;

    iget-object v11, v11, Lyads/rq5;->c:Landroid/net/Uri;

    invoke-direct {v10}, Lyads/cu3;-><init>()V

    iget-wide v11, v2, Lyads/cz;->g:J

    sget v13, Lyads/u56;->a:I

    iget-object v13, v0, Lyads/jz;->f:Lyads/jk0;

    iget-object v14, v0, Lyads/jz;->i:Lyads/ll0;

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 p1, v8

    if-nez v3, :cond_2

    move/from16 p3, v5

    move-wide/from16 v17, v15

    const/16 p1, 0x0

    move/from16 v16, v3

    goto/16 :goto_d

    :cond_2
    iget-object v9, v13, Lyads/jk0;->h:Lyads/nw4;

    move/from16 p3, v5

    if-eqz v9, :cond_7

    iget-wide v4, v9, Lyads/nw4;->d:J

    cmp-long v17, v4, v15

    if-eqz v17, :cond_3

    cmp-long v4, v4, v11

    if-gez v4, :cond_3

    move v4, v7

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    iget-object v5, v9, Lyads/nw4;->e:Lyads/ow4;

    iget-object v9, v5, Lyads/ow4;->g:Lyads/kc0;

    iget-boolean v9, v9, Lyads/kc0;->d:Z

    if-nez v9, :cond_4

    goto :goto_5

    :cond_4
    iget-boolean v9, v5, Lyads/ow4;->i:Z

    if-eqz v9, :cond_5

    :goto_3
    move-wide/from16 v17, v15

    const/16 p1, 0x0

    :goto_4
    move/from16 v16, v3

    goto/16 :goto_c

    :cond_5
    if-eqz v4, :cond_7

    iget-boolean v4, v5, Lyads/ow4;->h:Z

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    iput-boolean v7, v5, Lyads/ow4;->i:Z

    const/4 v4, 0x0

    iput-boolean v4, v5, Lyads/ow4;->h:Z

    iget-object v4, v5, Lyads/ow4;->c:Lcom/monetization/ads/exo/source/dash/c;

    iget-object v4, v4, Lcom/monetization/ads/exo/source/dash/c;->a:Lcom/monetization/ads/exo/source/dash/i;

    iget-object v5, v4, Lcom/monetization/ads/exo/source/dash/i;->D:Landroid/os/Handler;

    iget-object v9, v4, Lcom/monetization/ads/exo/source/dash/i;->w:Ljava/lang/Runnable;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Lcom/monetization/ads/exo/source/dash/i;->h()V

    goto :goto_3

    :cond_7
    :goto_5
    iget-object v4, v13, Lyads/jk0;->k:Lyads/kc0;

    iget-boolean v4, v4, Lyads/kc0;->d:Z

    const/16 v5, 0x194

    if-nez v4, :cond_8

    if-eqz p3, :cond_8

    instance-of v4, v1, Lyads/la3;

    if-eqz v4, :cond_8

    move-object v4, v1

    check-cast v4, Lyads/la3;

    iget v4, v4, Lyads/la3;->e:I

    if-ne v4, v5, :cond_8

    iget-object v4, v13, Lyads/jk0;->i:[Lyads/hk0;

    iget-object v9, v13, Lyads/jk0;->j:Lyads/er2;

    iget-object v11, v2, Lyads/cz;->d:Lyads/vz2;

    invoke-interface {v9, v11}, Lyads/er2;->a(Lyads/vz2;)I

    move-result v9

    aget-object v4, v4, v9

    iget-object v9, v4, Lyads/hk0;->d:Lyads/qc0;

    iget-wide v11, v4, Lyads/hk0;->e:J

    invoke-interface {v9, v11, v12}, Lyads/qc0;->c(J)J

    move-result-wide v11

    const-wide/16 v17, -0x1

    cmp-long v9, v11, v17

    if-eqz v9, :cond_8

    cmp-long v9, v11, p1

    if-eqz v9, :cond_8

    iget-object v9, v4, Lyads/hk0;->d:Lyads/qc0;

    invoke-interface {v9}, Lyads/qc0;->b()J

    move-result-wide v17

    const/16 p1, 0x0

    iget-wide v8, v4, Lyads/hk0;->f:J

    add-long v17, v17, v8

    add-long v17, v17, v11

    const-wide/16 v8, 0x1

    sub-long v17, v17, v8

    move-object v4, v2

    check-cast v4, Lyads/zr;

    invoke-virtual {v4}, Lyads/zr;->c()J

    move-result-wide v8

    cmp-long v4, v8, v17

    if-lez v4, :cond_9

    iput-boolean v7, v13, Lyads/jk0;->n:Z

    move v4, v7

    move-wide/from16 v17, v15

    move/from16 v16, v3

    goto/16 :goto_e

    :cond_8
    const/16 p1, 0x0

    :cond_9
    iget-object v4, v13, Lyads/jk0;->j:Lyads/er2;

    iget-object v8, v2, Lyads/cz;->d:Lyads/vz2;

    invoke-interface {v4, v8}, Lyads/er2;->a(Lyads/vz2;)I

    move-result v4

    iget-object v8, v13, Lyads/jk0;->i:[Lyads/hk0;

    aget-object v4, v8, v4

    iget-object v8, v13, Lyads/jk0;->b:Lyads/ns;

    iget-object v9, v4, Lyads/hk0;->b:Lyads/o75;

    iget-object v9, v9, Lyads/o75;->b:Lyads/oe3;

    invoke-virtual {v8, v9}, Lyads/ns;->b(Ljava/util/List;)Lyads/ms;

    move-result-object v8

    if-eqz v8, :cond_a

    iget-object v9, v4, Lyads/hk0;->c:Lyads/ms;

    invoke-virtual {v9, v8}, Lyads/ms;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    move-wide/from16 v17, v15

    goto/16 :goto_4

    :cond_a
    iget-object v8, v13, Lyads/jk0;->j:Lyads/er2;

    iget-object v9, v4, Lyads/hk0;->b:Lyads/o75;

    iget-object v9, v9, Lyads/o75;->b:Lyads/oe3;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    move-wide/from16 v17, v15

    invoke-interface {v8}, Lyads/er2;->length()I

    move-result v15

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_6
    if-ge v5, v15, :cond_c

    invoke-interface {v8, v5, v11, v12}, Lyads/er2;->b(IJ)Z

    move-result v16

    if-eqz v16, :cond_b

    add-int/lit8 v7, v7, 0x1

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_c
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    const/4 v8, 0x0

    :goto_7
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v8, v11, :cond_d

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lyads/ms;

    iget v11, v11, Lyads/ms;->c:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_d
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    new-instance v8, Lyads/au3;

    iget-object v11, v13, Lyads/jk0;->b:Lyads/ns;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v11, v9}, Lyads/ns;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v9

    move/from16 v16, v3

    const/4 v11, 0x0

    :goto_8
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v11, v3, :cond_e

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/ms;

    iget v3, v3, Lyads/ms;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_e
    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    move-result v3

    sub-int v3, v5, v3

    invoke-direct {v8, v5, v3, v15, v7}, Lyads/au3;-><init>(IIII)V

    const/4 v3, 0x2

    invoke-virtual {v8, v3}, Lyads/au3;->a(I)Z

    move-result v5

    if-nez v5, :cond_f

    const/4 v5, 0x1

    invoke-virtual {v8, v5}, Lyads/au3;->a(I)Z

    move-result v7

    if-nez v7, :cond_f

    goto/16 :goto_d

    :cond_f
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v5, v1, Lyads/la3;

    if-nez v5, :cond_10

    goto :goto_9

    :cond_10
    move-object v5, v1

    check-cast v5, Lyads/la3;

    iget v5, v5, Lyads/la3;->e:I

    const/16 v7, 0x193

    if-eq v5, v7, :cond_11

    const/16 v7, 0x194

    if-eq v5, v7, :cond_11

    const/16 v7, 0x19a

    if-eq v5, v7, :cond_11

    const/16 v7, 0x1a0

    if-eq v5, v7, :cond_11

    const/16 v7, 0x1f4

    if-eq v5, v7, :cond_11

    const/16 v7, 0x1f7

    if-ne v5, v7, :cond_13

    :cond_11
    const/4 v5, 0x1

    invoke-virtual {v8, v5}, Lyads/au3;->a(I)Z

    move-result v7

    if-eqz v7, :cond_12

    new-instance v7, Lyads/bu3;

    const-wide/32 v11, 0x493e0

    invoke-direct {v7, v5, v11, v12}, Lyads/bu3;-><init>(IJ)V

    goto :goto_a

    :cond_12
    invoke-virtual {v8, v3}, Lyads/au3;->a(I)Z

    move-result v5

    if-eqz v5, :cond_13

    new-instance v7, Lyads/bu3;

    const-wide/32 v11, 0xea60

    invoke-direct {v7, v3, v11, v12}, Lyads/bu3;-><init>(IJ)V

    goto :goto_a

    :cond_13
    :goto_9
    move-object/from16 v7, p1

    :goto_a
    if-eqz v7, :cond_19

    iget v5, v7, Lyads/bu3;->a:I

    invoke-virtual {v8, v5}, Lyads/au3;->a(I)Z

    move-result v5

    if-nez v5, :cond_14

    goto/16 :goto_d

    :cond_14
    iget v5, v7, Lyads/bu3;->a:I

    if-ne v5, v3, :cond_15

    iget-object v3, v13, Lyads/jk0;->j:Lyads/er2;

    iget-object v4, v2, Lyads/cz;->d:Lyads/vz2;

    invoke-interface {v3, v4}, Lyads/er2;->a(Lyads/vz2;)I

    move-result v4

    iget-wide v7, v7, Lyads/bu3;->b:J

    invoke-interface {v3, v4, v7, v8}, Lyads/er2;->a(IJ)Z

    move-result v4

    goto :goto_e

    :cond_15
    const/4 v3, 0x1

    if-ne v5, v3, :cond_19

    iget-object v3, v13, Lyads/jk0;->b:Lyads/ns;

    iget-object v4, v4, Lyads/hk0;->c:Lyads/ms;

    iget-wide v7, v7, Lyads/bu3;->b:J

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    add-long/2addr v11, v7

    iget-object v5, v4, Lyads/ms;->b:Ljava/lang/String;

    iget-object v7, v3, Lyads/ns;->a:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    sget v9, Lyads/u56;->a:I

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    goto :goto_b

    :cond_16
    move-wide v8, v11

    :goto_b
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, v4, Lyads/ms;->c:I

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_18

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v3, v3, Lyads/ns;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    sget v7, Lyads/u56;->a:I

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    :cond_17
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    :goto_c
    const/4 v4, 0x1

    goto :goto_e

    :cond_19
    :goto_d
    const/4 v4, 0x0

    :goto_e
    if-eqz v4, :cond_1c

    if-eqz v16, :cond_1b

    sget-object v3, Lyads/ru3;->d:Lyads/lu3;

    if-eqz p3, :cond_1d

    invoke-virtual {v0, v6}, Lyads/jz;->a(I)Lyads/zr;

    move-result-object v4

    if-ne v4, v2, :cond_1a

    iget-object v4, v0, Lyads/jz;->l:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1d

    iget-wide v4, v0, Lyads/jz;->u:J

    iput-wide v4, v0, Lyads/jz;->t:J

    goto :goto_f

    :cond_1a
    invoke-static {}, Lud;->g()V

    return-object p1

    :cond_1b
    const-string v3, "ChunkSampleStream"

    const-string v4, "Ignoring attempt to cancel non-cancelable load."

    invoke-static {v3, v4}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    move-object/from16 v3, p1

    :cond_1d
    :goto_f
    if-nez v3, :cond_22

    iget-object v3, v0, Lyads/jz;->i:Lyads/ll0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v1, Lyads/xs4;

    if-nez v3, :cond_20

    instance-of v3, v1, Ljava/io/FileNotFoundException;

    if-nez v3, :cond_20

    instance-of v3, v1, Lyads/ia3;

    if-nez v3, :cond_20

    instance-of v3, v1, Lyads/qu3;

    if-nez v3, :cond_20

    move-object v3, v1

    :goto_10
    if-eqz v3, :cond_1f

    instance-of v4, v3, Lyads/xc0;

    if-eqz v4, :cond_1e

    move-object v4, v3

    check-cast v4, Lyads/xc0;

    iget v4, v4, Lyads/xc0;->b:I

    const/16 v5, 0x7d8

    if-ne v4, v5, :cond_1e

    goto :goto_11

    :cond_1e
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    goto :goto_10

    :cond_1f
    const/4 v5, 0x1

    add-int/lit8 v3, p7, -0x1

    mul-int/lit16 v3, v3, 0x3e8

    const/16 v4, 0x1388

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-long v3, v3

    goto :goto_12

    :cond_20
    :goto_11
    move-wide/from16 v3, v17

    :goto_12
    cmp-long v5, v3, v17

    if-eqz v5, :cond_21

    new-instance v5, Lyads/lu3;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v3, v4}, Lyads/lu3;-><init>(IJ)V

    move-object v3, v5

    goto :goto_13

    :cond_21
    const/4 v6, 0x0

    sget-object v3, Lyads/ru3;->e:Lyads/lu3;

    goto :goto_13

    :cond_22
    const/4 v6, 0x0

    :goto_13
    iget v4, v3, Lyads/lu3;->a:I

    const/4 v5, 0x1

    if-eqz v4, :cond_24

    if-ne v4, v5, :cond_23

    goto :goto_14

    :cond_23
    move v7, v6

    goto :goto_15

    :cond_24
    :goto_14
    move v7, v5

    :goto_15
    xor-int/lit8 v4, v7, 0x1

    iget-object v5, v0, Lyads/jz;->h:Lyads/k14;

    iget v12, v2, Lyads/cz;->c:I

    iget v13, v0, Lyads/jz;->b:I

    iget-object v14, v2, Lyads/cz;->d:Lyads/vz2;

    iget v15, v2, Lyads/cz;->e:I

    iget-object v6, v2, Lyads/cz;->f:Ljava/lang/Object;

    iget-wide v8, v2, Lyads/cz;->g:J

    move-object/from16 p2, v3

    iget-wide v2, v2, Lyads/cz;->h:J

    new-instance v11, Lyads/r04;

    invoke-virtual {v5, v8, v9}, Lyads/k14;->a(J)J

    move-result-wide v17

    invoke-virtual {v5, v2, v3}, Lyads/k14;->a(J)J

    move-result-wide v19

    move-object/from16 v16, v6

    invoke-direct/range {v11 .. v20}, Lyads/r04;-><init>(IILyads/vz2;ILjava/lang/Object;JJ)V

    invoke-virtual {v5, v10, v11, v1, v4}, Lyads/k14;->a(Lyads/cu3;Lyads/r04;Ljava/io/IOException;Z)V

    if-nez v7, :cond_25

    move-object/from16 v1, p1

    iput-object v1, v0, Lyads/jz;->q:Lyads/cz;

    iget-object v1, v0, Lyads/jz;->i:Lyads/ll0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lyads/jz;->g:Lyads/pc0;

    iget-object v1, v0, Lyads/pc0;->s:Lyads/y04;

    invoke-interface {v1, v0}, Lyads/ti5;->a(Lyads/ui5;)V

    :cond_25
    return-object p2
.end method

.method public final a(I)Lyads/zr;
    .locals 4

    .line 863
    iget-object v0, p0, Lyads/jz;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/zr;

    .line 864
    iget-object v1, p0, Lyads/jz;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sget v3, Lyads/u56;->a:I

    if-ltz p1, :cond_2

    .line 865
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gt v2, v3, :cond_2

    if-gt p1, v2, :cond_2

    if-eq p1, v2, :cond_0

    .line 866
    invoke-interface {v1, p1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 867
    :cond_0
    iget p1, p0, Lyads/jz;->v:I

    iget-object v1, p0, Lyads/jz;->l:Ljava/util/ArrayList;

    .line 868
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lyads/jz;->v:I

    .line 869
    iget-object p1, p0, Lyads/jz;->n:Lyads/lc5;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lyads/zr;->a(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lyads/lc5;->b(I)V

    .line 870
    :goto_0
    iget-object p1, p0, Lyads/jz;->o:[Lyads/lc5;

    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 871
    aget-object p1, p1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lyads/zr;->a(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lyads/lc5;->b(I)V

    goto :goto_0

    :cond_1
    return-object v0

    .line 872
    :cond_2
    invoke-static {}, Lmi2;->b()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final a()V
    .locals 3

    .line 839
    iget-object v0, p0, Lyads/jz;->j:Lyads/ru3;

    const/high16 v1, -0x80000000

    .line 840
    invoke-virtual {v0, v1}, Lyads/ru3;->a(I)V

    .line 841
    iget-object v0, p0, Lyads/jz;->n:Lyads/lc5;

    .line 842
    iget-object v1, v0, Lyads/lc5;->h:Lyads/eo2;

    if-eqz v1, :cond_1

    .line 843
    invoke-virtual {v1}, Lyads/eo2;->c()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 844
    :cond_0
    iget-object p0, v0, Lyads/lc5;->h:Lyads/eo2;

    invoke-virtual {p0}, Lyads/eo2;->a()Lyads/rl2;

    move-result-object p0

    .line 845
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 846
    throw p0

    .line 847
    :cond_1
    :goto_0
    iget-object v0, p0, Lyads/jz;->j:Lyads/ru3;

    invoke-virtual {v0}, Lyads/ru3;->b()Z

    move-result v0

    if-nez v0, :cond_3

    .line 848
    iget-object p0, p0, Lyads/jz;->f:Lyads/jk0;

    .line 849
    iget-object v0, p0, Lyads/jk0;->m:Lyads/vs;

    if-nez v0, :cond_2

    .line 850
    iget-object p0, p0, Lyads/jk0;->a:Lyads/su3;

    invoke-interface {p0}, Lyads/su3;->a()V

    return-void

    .line 851
    :cond_2
    throw v0

    :cond_3
    return-void
.end method

.method public final a(Lyads/nu3;JJ)V
    .locals 10

    .line 785
    check-cast p1, Lyads/cz;

    const/4 p2, 0x0

    .line 786
    iput-object p2, p0, Lyads/jz;->q:Lyads/cz;

    .line 787
    iget-object p2, p0, Lyads/jz;->f:Lyads/jk0;

    .line 788
    instance-of p3, p1, Lyads/lg3;

    if-eqz p3, :cond_0

    .line 789
    move-object p3, p1

    check-cast p3, Lyads/lg3;

    .line 790
    iget-object p4, p2, Lyads/jk0;->j:Lyads/er2;

    iget-object p3, p3, Lyads/cz;->d:Lyads/vz2;

    invoke-interface {p4, p3}, Lyads/er2;->a(Lyads/vz2;)I

    move-result p3

    .line 791
    iget-object p4, p2, Lyads/jk0;->i:[Lyads/hk0;

    aget-object p4, p4, p3

    .line 792
    iget-object p5, p4, Lyads/hk0;->d:Lyads/qc0;

    if-nez p5, :cond_0

    .line 793
    iget-object p5, p4, Lyads/hk0;->a:Lyads/ez;

    check-cast p5, Lyads/nv;

    invoke-virtual {p5}, Lyads/nv;->b()Lyads/gz;

    move-result-object p5

    if-eqz p5, :cond_0

    .line 794
    iget-object v0, p2, Lyads/jk0;->i:[Lyads/hk0;

    new-instance v9, Lyads/sc0;

    iget-object v4, p4, Lyads/hk0;->b:Lyads/o75;

    iget-wide v1, v4, Lyads/o75;->c:J

    invoke-direct {v9, p5, v1, v2}, Lyads/sc0;-><init>(Lyads/gz;J)V

    .line 795
    new-instance v1, Lyads/hk0;

    iget-wide v2, p4, Lyads/hk0;->e:J

    iget-object v5, p4, Lyads/hk0;->c:Lyads/ms;

    iget-object v6, p4, Lyads/hk0;->a:Lyads/ez;

    iget-wide v7, p4, Lyads/hk0;->f:J

    invoke-direct/range {v1 .. v9}, Lyads/hk0;-><init>(JLyads/o75;Lyads/ms;Lyads/ez;JLyads/qc0;)V

    .line 796
    aput-object v1, v0, p3

    .line 797
    :cond_0
    iget-object p2, p2, Lyads/jk0;->h:Lyads/nw4;

    if-eqz p2, :cond_3

    .line 798
    iget-wide p3, p2, Lyads/nw4;->d:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p5, p3, v0

    if-eqz p5, :cond_1

    .line 799
    iget-wide v0, p1, Lyads/cz;->h:J

    cmp-long p3, v0, p3

    if-lez p3, :cond_2

    .line 800
    :cond_1
    iget-wide p3, p1, Lyads/cz;->h:J

    iput-wide p3, p2, Lyads/nw4;->d:J

    .line 801
    :cond_2
    iget-object p2, p2, Lyads/nw4;->e:Lyads/ow4;

    const/4 p3, 0x1

    .line 802
    iput-boolean p3, p2, Lyads/ow4;->h:Z

    .line 803
    :cond_3
    new-instance p2, Lyads/cu3;

    iget-wide p3, p1, Lyads/cz;->a:J

    .line 804
    iget-object p3, p1, Lyads/cz;->i:Lyads/rq5;

    .line 805
    iget-object p3, p3, Lyads/rq5;->c:Landroid/net/Uri;

    .line 806
    invoke-direct {p2}, Lyads/cu3;-><init>()V

    .line 807
    iget-object p3, p0, Lyads/jz;->i:Lyads/ll0;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 808
    iget-object p3, p0, Lyads/jz;->h:Lyads/k14;

    iget v1, p1, Lyads/cz;->c:I

    iget v2, p0, Lyads/jz;->b:I

    iget-object v3, p1, Lyads/cz;->d:Lyads/vz2;

    iget v4, p1, Lyads/cz;->e:I

    iget-object v5, p1, Lyads/cz;->f:Ljava/lang/Object;

    iget-wide p4, p1, Lyads/cz;->g:J

    iget-wide v6, p1, Lyads/cz;->h:J

    .line 809
    new-instance v0, Lyads/r04;

    .line 810
    invoke-virtual {p3, p4, p5}, Lyads/k14;->a(J)J

    move-result-wide p4

    .line 811
    invoke-virtual {p3, v6, v7}, Lyads/k14;->a(J)J

    move-result-wide v8

    move-wide v6, p4

    invoke-direct/range {v0 .. v9}, Lyads/r04;-><init>(IILyads/vz2;ILjava/lang/Object;JJ)V

    .line 812
    invoke-virtual {p3, p2, v0}, Lyads/k14;->b(Lyads/cu3;Lyads/r04;)V

    .line 813
    iget-object p0, p0, Lyads/jz;->g:Lyads/pc0;

    .line 814
    iget-object p1, p0, Lyads/pc0;->s:Lyads/y04;

    invoke-interface {p1, p0}, Lyads/ti5;->a(Lyads/ui5;)V

    return-void
.end method

.method public final a(Lyads/nu3;JJZ)V
    .locals 12

    .line 815
    check-cast p1, Lyads/cz;

    const/4 v0, 0x0

    .line 816
    iput-object v0, p0, Lyads/jz;->q:Lyads/cz;

    .line 817
    iput-object v0, p0, Lyads/jz;->w:Lyads/zr;

    .line 818
    new-instance v0, Lyads/cu3;

    iget-wide v1, p1, Lyads/cz;->a:J

    .line 819
    iget-object v1, p1, Lyads/cz;->i:Lyads/rq5;

    .line 820
    iget-object v1, v1, Lyads/rq5;->c:Landroid/net/Uri;

    .line 821
    invoke-direct {v0}, Lyads/cu3;-><init>()V

    .line 822
    iget-object v1, p0, Lyads/jz;->i:Lyads/ll0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 823
    iget-object v1, p0, Lyads/jz;->h:Lyads/k14;

    iget v3, p1, Lyads/cz;->c:I

    iget v4, p0, Lyads/jz;->b:I

    iget-object v5, p1, Lyads/cz;->d:Lyads/vz2;

    iget v6, p1, Lyads/cz;->e:I

    iget-object v7, p1, Lyads/cz;->f:Ljava/lang/Object;

    iget-wide v8, p1, Lyads/cz;->g:J

    iget-wide v10, p1, Lyads/cz;->h:J

    .line 824
    new-instance v2, Lyads/r04;

    .line 825
    invoke-virtual {v1, v8, v9}, Lyads/k14;->a(J)J

    move-result-wide v8

    .line 826
    invoke-virtual {v1, v10, v11}, Lyads/k14;->a(J)J

    move-result-wide v10

    invoke-direct/range {v2 .. v11}, Lyads/r04;-><init>(IILyads/vz2;ILjava/lang/Object;JJ)V

    .line 827
    invoke-virtual {v1, v0, v2}, Lyads/k14;->a(Lyads/cu3;Lyads/r04;)V

    if-nez p6, :cond_2

    .line 828
    invoke-virtual {p0}, Lyads/jz;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    iget-object p1, p0, Lyads/jz;->n:Lyads/lc5;

    const/4 v0, 0x0

    .line 830
    invoke-virtual {p1, v0}, Lyads/lc5;->b(Z)V

    .line 831
    iget-object p1, p0, Lyads/jz;->o:[Lyads/lc5;

    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 832
    invoke-virtual {v3, v0}, Lyads/lc5;->b(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 833
    :cond_0
    instance-of p1, p1, Lyads/zr;

    if-eqz p1, :cond_1

    .line 834
    iget-object p1, p0, Lyads/jz;->l:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lyads/jz;->a(I)Lyads/zr;

    .line 835
    iget-object p1, p0, Lyads/jz;->l:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 836
    iget-wide v0, p0, Lyads/jz;->u:J

    iput-wide v0, p0, Lyads/jz;->t:J

    .line 837
    :cond_1
    iget-object p0, p0, Lyads/jz;->g:Lyads/pc0;

    .line 838
    iget-object p1, p0, Lyads/pc0;->s:Lyads/y04;

    invoke-interface {p1, p0}, Lyads/ti5;->a(Lyads/ui5;)V

    :cond_2
    return-void
.end method

.method public final b(J)I
    .locals 3

    .line 81
    invoke-virtual {p0}, Lyads/jz;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 82
    :cond_0
    iget-object v0, p0, Lyads/jz;->n:Lyads/lc5;

    iget-boolean v2, p0, Lyads/jz;->x:Z

    invoke-virtual {v0, p1, p2, v2}, Lyads/lc5;->b(JZ)I

    move-result p1

    .line 83
    iget-object p2, p0, Lyads/jz;->w:Lyads/zr;

    if-eqz p2, :cond_1

    .line 84
    invoke-virtual {p2, v1}, Lyads/zr;->a(I)I

    move-result p2

    iget-object v0, p0, Lyads/jz;->n:Lyads/lc5;

    .line 85
    iget v1, v0, Lyads/lc5;->q:I

    .line 86
    iget v0, v0, Lyads/lc5;->s:I

    add-int/2addr v1, v0

    sub-int/2addr p2, v1

    .line 87
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 88
    :cond_1
    iget-object p2, p0, Lyads/jz;->n:Lyads/lc5;

    monitor-enter p2

    if-ltz p1, :cond_2

    .line 89
    :try_start_0
    iget v0, p2, Lyads/lc5;->s:I

    add-int/2addr v0, p1

    iget v1, p2, Lyads/lc5;->p:I

    if-gt v0, v1, :cond_2

    .line 90
    iput v0, p2, Lyads/lc5;->s:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    .line 91
    invoke-virtual {p0}, Lyads/jz;->e()V

    return p1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 92
    :cond_2
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p2

    throw p0
.end method

.method public final b()V
    .locals 6

    iget-object v0, p0, Lyads/jz;->n:Lyads/lc5;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lyads/lc5;->b(Z)V

    invoke-virtual {v0}, Lyads/lc5;->d()V

    iget-object v0, p0, Lyads/jz;->o:[Lyads/lc5;

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v0, v4

    invoke-virtual {v5, v1}, Lyads/lc5;->b(Z)V

    invoke-virtual {v5}, Lyads/lc5;->d()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lyads/jz;->f:Lyads/jk0;

    iget-object v0, v0, Lyads/jk0;->i:[Lyads/hk0;

    array-length v2, v0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    iget-object v4, v4, Lyads/hk0;->a:Lyads/ez;

    if-eqz v4, :cond_1

    check-cast v4, Lyads/nv;

    iget-object v4, v4, Lyads/nv;->b:Lyads/ws2;

    invoke-interface {v4}, Lyads/ws2;->release()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lyads/jz;->s:Lyads/pc0;

    if-eqz v0, :cond_4

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lyads/pc0;->o:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, p0}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/nw4;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lyads/nw4;->a:Lyads/lc5;

    invoke-virtual {p0, v1}, Lyads/lc5;->b(Z)V

    invoke-virtual {p0}, Lyads/lc5;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0

    throw p0

    :cond_4
    return-void
.end method

.method public final b(I)Z
    .locals 5

    .line 93
    iget-object v0, p0, Lyads/jz;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/zr;

    .line 94
    iget-object v0, p0, Lyads/jz;->n:Lyads/lc5;

    .line 95
    iget v1, v0, Lyads/lc5;->q:I

    .line 96
    iget v0, v0, Lyads/lc5;->s:I

    add-int/2addr v1, v0

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p1, v0}, Lyads/zr;->a(I)I

    move-result v2

    const/4 v3, 0x1

    if-le v1, v2, :cond_0

    return v3

    :cond_0
    move v1, v0

    .line 98
    :cond_1
    iget-object v2, p0, Lyads/jz;->o:[Lyads/lc5;

    array-length v4, v2

    if-ge v1, v4, :cond_2

    .line 99
    aget-object v2, v2, v1

    .line 100
    iget v4, v2, Lyads/lc5;->q:I

    .line 101
    iget v2, v2, Lyads/lc5;->s:I

    add-int/2addr v4, v2

    add-int/lit8 v1, v1, 0x1

    .line 102
    invoke-virtual {p1, v1}, Lyads/zr;->a(I)I

    move-result v2

    if-le v4, v2, :cond_1

    return v3

    :cond_2
    return v0
.end method

.method public final c()Z
    .locals 1

    .line 1259
    invoke-virtual {p0}, Lyads/jz;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lyads/jz;->n:Lyads/lc5;

    iget-boolean p0, p0, Lyads/jz;->x:Z

    invoke-virtual {v0, p0}, Lyads/lc5;->a(Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c(J)Z
    .locals 56

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lyads/jz;->x:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lyads/jz;->j:Lyads/ru3;

    invoke-virtual {v1}, Lyads/ru3;->b()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lyads/jz;->j:Lyads/ru3;

    iget-object v1, v1, Lyads/ru3;->c:Ljava/io/IOException;

    if-eqz v1, :cond_1

    :cond_0
    const/16 v25, 0x0

    goto/16 :goto_21

    :cond_1
    invoke-virtual {v0}, Lyads/jz;->d()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iget-wide v5, v0, Lyads/jz;->t:J

    :goto_0
    move-object v14, v4

    goto :goto_1

    :cond_2
    iget-object v4, v0, Lyads/jz;->m:Ljava/util/List;

    iget-object v5, v0, Lyads/jz;->l:Ljava/util/ArrayList;

    invoke-static {v3, v5}, Ldd2;->b(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/zr;

    iget-wide v5, v5, Lyads/cz;->h:J

    goto :goto_0

    :goto_1
    iget-object v4, v0, Lyads/jz;->f:Lyads/jk0;

    iget-object v7, v0, Lyads/jz;->k:Lyads/fz;

    iget-object v8, v4, Lyads/jk0;->m:Lyads/vs;

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v8, :cond_3

    move/from16 v27, v1

    move-wide/from16 v18, v10

    goto/16 :goto_1d

    :cond_3
    move-wide v12, v10

    sub-long v10, v5, p1

    iget-object v8, v4, Lyads/jk0;->k:Lyads/kc0;

    move-wide/from16 v16, v10

    iget-wide v9, v8, Lyads/kc0;->a:J

    invoke-static {v9, v10}, Lyads/u56;->a(J)J

    move-result-wide v8

    iget-object v10, v4, Lyads/jk0;->k:Lyads/kc0;

    iget v11, v4, Lyads/jk0;->l:I

    iget-object v10, v10, Lyads/kc0;->m:Ljava/util/List;

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lyads/au4;

    iget-wide v10, v10, Lyads/au4;->b:J

    invoke-static {v10, v11}, Lyads/u56;->a(J)J

    move-result-wide v10

    add-long/2addr v10, v8

    add-long/2addr v10, v5

    iget-object v8, v4, Lyads/jk0;->h:Lyads/nw4;

    if-eqz v8, :cond_4

    iget-object v8, v8, Lyads/nw4;->e:Lyads/ow4;

    invoke-virtual {v8, v10, v11}, Lyads/ow4;->a(J)Z

    move-result v8

    if-eqz v8, :cond_4

    move/from16 v27, v1

    move-wide/from16 v18, v12

    goto/16 :goto_1d

    :cond_4
    iget-wide v8, v4, Lyads/jk0;->f:J

    cmp-long v10, v8, v12

    if-nez v10, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    goto :goto_2

    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    add-long/2addr v8, v10

    :goto_2
    invoke-static {v8, v9}, Lyads/u56;->a(J)J

    move-result-wide v8

    iget-object v10, v4, Lyads/jk0;->k:Lyads/kc0;

    move-wide/from16 v18, v12

    iget-wide v12, v10, Lyads/kc0;->a:J

    cmp-long v11, v12, v18

    if-nez v11, :cond_6

    move-wide/from16 v20, v18

    goto :goto_3

    :cond_6
    iget v11, v4, Lyads/jk0;->l:I

    iget-object v10, v10, Lyads/kc0;->m:Ljava/util/List;

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lyads/au4;

    iget-wide v10, v10, Lyads/au4;->b:J

    add-long/2addr v12, v10

    invoke-static {v12, v13}, Lyads/u56;->a(J)J

    move-result-wide v10

    sub-long v10, v8, v10

    move-wide/from16 v20, v10

    :goto_3
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_7

    const/16 v22, 0x0

    goto :goto_4

    :cond_7
    invoke-static {v3, v14}, Lxy;->d(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lyads/zr;

    move-object/from16 v22, v10

    :goto_4
    iget-object v10, v4, Lyads/jk0;->j:Lyads/er2;

    invoke-interface {v10}, Lyads/er2;->length()I

    move-result v10

    const/4 v11, 0x0

    new-array v15, v10, [Lyads/ly3;

    const/4 v12, 0x0

    :goto_5
    const-wide/16 v23, 0x1

    if-ge v12, v10, :cond_c

    iget-object v13, v4, Lyads/jk0;->i:[Lyads/hk0;

    aget-object v13, v13, v12

    iget-object v11, v13, Lyads/hk0;->d:Lyads/qc0;

    if-nez v11, :cond_8

    sget-object v11, Lyads/ly3;->a:Lyads/ky3;

    aput-object v11, v15, v12

    move/from16 v27, v1

    move/from16 v28, v10

    move v1, v12

    move-object/from16 v35, v14

    move-object/from16 v36, v15

    const/16 v25, 0x0

    goto/16 :goto_9

    :cond_8
    const/16 v25, 0x0

    iget-wide v2, v13, Lyads/hk0;->e:J

    invoke-interface {v11, v2, v3, v8, v9}, Lyads/qc0;->c(JJ)J

    move-result-wide v2

    move/from16 v27, v1

    move-wide/from16 v28, v2

    iget-wide v1, v13, Lyads/hk0;->f:J

    add-long v2, v28, v1

    iget-object v1, v13, Lyads/hk0;->d:Lyads/qc0;

    move/from16 v28, v10

    iget-wide v10, v13, Lyads/hk0;->e:J

    invoke-interface {v1, v10, v11, v8, v9}, Lyads/qc0;->c(JJ)J

    move-result-wide v10

    move-wide/from16 v29, v10

    iget-wide v10, v13, Lyads/hk0;->f:J

    add-long v10, v29, v10

    iget-object v1, v13, Lyads/hk0;->d:Lyads/qc0;

    move-wide/from16 v29, v10

    iget-wide v10, v13, Lyads/hk0;->e:J

    invoke-interface {v1, v10, v11, v8, v9}, Lyads/qc0;->e(JJ)J

    move-result-wide v10

    add-long v10, v10, v29

    sub-long v10, v10, v23

    if-eqz v22, :cond_9

    invoke-virtual/range {v22 .. v22}, Lyads/zr;->c()J

    move-result-wide v23

    move v1, v12

    move-object/from16 v35, v14

    move-object/from16 v36, v15

    :goto_6
    move-wide/from16 v31, v23

    goto :goto_7

    :cond_9
    iget-object v1, v13, Lyads/hk0;->d:Lyads/qc0;

    move-object/from16 v35, v14

    move-object/from16 v36, v15

    iget-wide v14, v13, Lyads/hk0;->e:J

    invoke-interface {v1, v5, v6, v14, v15}, Lyads/qc0;->a(JJ)J

    move-result-wide v14

    move v1, v12

    iget-wide v12, v13, Lyads/hk0;->f:J

    add-long/2addr v14, v12

    sget v12, Lyads/u56;->a:I

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v23

    goto :goto_6

    :goto_7
    cmp-long v2, v31, v2

    if-gez v2, :cond_a

    sget-object v2, Lyads/ly3;->a:Lyads/ky3;

    aput-object v2, v36, v1

    goto :goto_9

    :cond_a
    iget-object v2, v4, Lyads/jk0;->i:[Lyads/hk0;

    aget-object v2, v2, v1

    iget-object v3, v4, Lyads/jk0;->b:Lyads/ns;

    iget-object v12, v2, Lyads/hk0;->b:Lyads/o75;

    iget-object v12, v12, Lyads/o75;->b:Lyads/oe3;

    invoke-virtual {v3, v12}, Lyads/ns;->b(Ljava/util/List;)Lyads/ms;

    move-result-object v3

    if-eqz v3, :cond_b

    iget-object v12, v2, Lyads/hk0;->c:Lyads/ms;

    invoke-virtual {v3, v12}, Lyads/ms;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    new-instance v37, Lyads/hk0;

    iget-wide v12, v2, Lyads/hk0;->e:J

    iget-object v14, v2, Lyads/hk0;->b:Lyads/o75;

    iget-object v15, v2, Lyads/hk0;->a:Lyads/ez;

    move-wide/from16 v33, v10

    iget-wide v10, v2, Lyads/hk0;->f:J

    iget-object v2, v2, Lyads/hk0;->d:Lyads/qc0;

    move-object/from16 v45, v2

    move-object/from16 v41, v3

    move-wide/from16 v43, v10

    move-wide/from16 v38, v12

    move-object/from16 v40, v14

    move-object/from16 v42, v15

    invoke-direct/range {v37 .. v45}, Lyads/hk0;-><init>(JLyads/o75;Lyads/ms;Lyads/ez;JLyads/qc0;)V

    iget-object v2, v4, Lyads/jk0;->i:[Lyads/hk0;

    aput-object v37, v2, v1

    move-object/from16 v30, v37

    goto :goto_8

    :cond_b
    move-wide/from16 v33, v10

    move-object/from16 v30, v2

    :goto_8
    new-instance v29, Lyads/ik0;

    invoke-direct/range {v29 .. v34}, Lyads/ik0;-><init>(Lyads/hk0;JJ)V

    aput-object v29, v36, v1

    :goto_9
    add-int/lit8 v12, v1, 0x1

    move/from16 v1, v27

    move/from16 v10, v28

    move-object/from16 v14, v35

    move-object/from16 v15, v36

    const/4 v3, 0x1

    const/4 v11, 0x0

    goto/16 :goto_5

    :cond_c
    move/from16 v27, v1

    move-object/from16 v35, v14

    move-object/from16 v36, v15

    const/16 v25, 0x0

    iget-object v1, v4, Lyads/jk0;->k:Lyads/kc0;

    iget-boolean v1, v1, Lyads/kc0;->d:Z

    const-wide/16 v2, 0x0

    if-nez v1, :cond_d

    move-wide/from16 v12, v18

    :goto_a
    move-object v1, v7

    goto :goto_c

    :cond_d
    iget-object v1, v4, Lyads/jk0;->i:[Lyads/hk0;

    aget-object v1, v1, v25

    iget-object v10, v1, Lyads/hk0;->d:Lyads/qc0;

    iget-wide v11, v1, Lyads/hk0;->e:J

    invoke-interface {v10, v11, v12, v8, v9}, Lyads/qc0;->c(JJ)J

    move-result-wide v10

    iget-wide v12, v1, Lyads/hk0;->f:J

    add-long/2addr v10, v12

    iget-object v12, v1, Lyads/hk0;->d:Lyads/qc0;

    iget-wide v13, v1, Lyads/hk0;->e:J

    invoke-interface {v12, v13, v14, v8, v9}, Lyads/qc0;->e(JJ)J

    move-result-wide v12

    add-long/2addr v12, v10

    sub-long v12, v12, v23

    iget-object v1, v4, Lyads/jk0;->i:[Lyads/hk0;

    aget-object v1, v1, v25

    invoke-virtual {v1, v12, v13}, Lyads/hk0;->a(J)J

    move-result-wide v10

    iget-object v1, v4, Lyads/jk0;->k:Lyads/kc0;

    iget-wide v12, v1, Lyads/kc0;->a:J

    cmp-long v14, v12, v18

    if-nez v14, :cond_e

    move-wide/from16 v12, v18

    goto :goto_b

    :cond_e
    iget v14, v4, Lyads/jk0;->l:I

    iget-object v1, v1, Lyads/kc0;->m:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/au4;

    iget-wide v14, v1, Lyads/au4;->b:J

    add-long/2addr v12, v14

    invoke-static {v12, v13}, Lyads/u56;->a(J)J

    move-result-wide v12

    sub-long v12, v8, v12

    :goto_b
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    sub-long v10, v10, p1

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    move-wide v12, v10

    goto :goto_a

    :goto_c
    iget-object v7, v4, Lyads/jk0;->j:Lyads/er2;

    move-wide/from16 v46, v8

    move-wide/from16 v10, v16

    move-object/from16 v14, v35

    move-object/from16 v15, v36

    move-wide/from16 v8, p1

    move-wide/from16 v16, v2

    move-object v2, v1

    const/4 v1, 0x0

    invoke-interface/range {v7 .. v15}, Lyads/er2;->a(JJJLjava/util/List;[Lyads/ly3;)V

    iget-object v3, v4, Lyads/jk0;->j:Lyads/er2;

    invoke-interface {v3}, Lyads/er2;->f()I

    move-result v3

    iget-object v7, v4, Lyads/jk0;->i:[Lyads/hk0;

    aget-object v7, v7, v3

    iget-object v8, v4, Lyads/jk0;->b:Lyads/ns;

    iget-object v9, v7, Lyads/hk0;->b:Lyads/o75;

    iget-object v9, v9, Lyads/o75;->b:Lyads/oe3;

    invoke-virtual {v8, v9}, Lyads/ns;->b(Ljava/util/List;)Lyads/ms;

    move-result-object v8

    if-eqz v8, :cond_f

    iget-object v9, v7, Lyads/hk0;->c:Lyads/ms;

    invoke-virtual {v8, v9}, Lyads/ms;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    new-instance v28, Lyads/hk0;

    iget-wide v9, v7, Lyads/hk0;->e:J

    iget-object v11, v7, Lyads/hk0;->b:Lyads/o75;

    iget-object v12, v7, Lyads/hk0;->a:Lyads/ez;

    move-object v13, v2

    iget-wide v1, v7, Lyads/hk0;->f:J

    iget-object v7, v7, Lyads/hk0;->d:Lyads/qc0;

    move-wide/from16 v34, v1

    move-object/from16 v36, v7

    move-object/from16 v32, v8

    move-wide/from16 v29, v9

    move-object/from16 v31, v11

    move-object/from16 v33, v12

    invoke-direct/range {v28 .. v36}, Lyads/hk0;-><init>(JLyads/o75;Lyads/ms;Lyads/ez;JLyads/qc0;)V

    iget-object v1, v4, Lyads/jk0;->i:[Lyads/hk0;

    aput-object v28, v1, v3

    move-object/from16 v7, v28

    goto :goto_d

    :cond_f
    move-object v13, v2

    :goto_d
    iget-object v1, v7, Lyads/hk0;->a:Lyads/ez;

    if-eqz v1, :cond_14

    iget-object v2, v7, Lyads/hk0;->b:Lyads/o75;

    check-cast v1, Lyads/nv;

    iget-object v1, v1, Lyads/nv;->j:[Lyads/vz2;

    if-nez v1, :cond_10

    iget-object v9, v2, Lyads/o75;->e:Lyads/y35;

    goto :goto_e

    :cond_10
    const/4 v9, 0x0

    :goto_e
    iget-object v1, v7, Lyads/hk0;->d:Lyads/qc0;

    if-nez v1, :cond_11

    invoke-virtual {v2}, Lyads/o75;->e()Lyads/y35;

    move-result-object v1

    goto :goto_f

    :cond_11
    const/4 v1, 0x0

    :goto_f
    if-nez v9, :cond_12

    if-eqz v1, :cond_14

    :cond_12
    iget-object v2, v4, Lyads/jk0;->e:Lyads/wc0;

    iget-object v3, v4, Lyads/jk0;->j:Lyads/er2;

    invoke-interface {v3}, Lyads/er2;->d()Lyads/vz2;

    move-result-object v31

    iget-object v3, v4, Lyads/jk0;->j:Lyads/er2;

    invoke-interface {v3}, Lyads/er2;->e()I

    move-result v32

    iget-object v3, v4, Lyads/jk0;->j:Lyads/er2;

    invoke-interface {v3}, Lyads/er2;->g()Ljava/lang/Object;

    move-result-object v33

    iget-object v3, v7, Lyads/hk0;->b:Lyads/o75;

    if-eqz v9, :cond_13

    iget-object v4, v7, Lyads/hk0;->c:Lyads/ms;

    iget-object v4, v4, Lyads/ms;->a:Ljava/lang/String;

    invoke-virtual {v9, v1, v4}, Lyads/y35;->a(Lyads/y35;Ljava/lang/String;)Lyads/y35;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_10

    :cond_13
    move-object v9, v1

    :goto_10
    iget-object v1, v7, Lyads/hk0;->c:Lyads/ms;

    iget-object v1, v1, Lyads/ms;->a:Ljava/lang/String;

    move/from16 v4, v25

    invoke-static {v3, v1, v9, v4}, Lyads/rc0;->a(Lyads/o75;Ljava/lang/String;Lyads/y35;I)Lyads/bd0;

    move-result-object v30

    new-instance v28, Lyads/lg3;

    iget-object v1, v7, Lyads/hk0;->a:Lyads/ez;

    move-object/from16 v34, v1

    move-object/from16 v29, v2

    invoke-direct/range {v28 .. v34}, Lyads/lg3;-><init>(Lyads/wc0;Lyads/bd0;Lyads/vz2;ILjava/lang/Object;Lyads/ez;)V

    move-object/from16 v1, v28

    iput-object v1, v13, Lyads/fz;->a:Lyads/cz;

    goto/16 :goto_1d

    :cond_14
    iget-wide v1, v7, Lyads/hk0;->e:J

    cmp-long v3, v1, v18

    if-eqz v3, :cond_15

    const/4 v8, 0x1

    goto :goto_11

    :cond_15
    const/4 v8, 0x0

    :goto_11
    iget-object v9, v7, Lyads/hk0;->d:Lyads/qc0;

    invoke-interface {v9, v1, v2}, Lyads/qc0;->c(J)J

    move-result-wide v9

    cmp-long v9, v9, v16

    if-nez v9, :cond_16

    iput-boolean v8, v13, Lyads/fz;->b:Z

    goto/16 :goto_1d

    :cond_16
    iget-object v9, v7, Lyads/hk0;->d:Lyads/qc0;

    iget-wide v10, v7, Lyads/hk0;->e:J

    move-wide/from16 v16, v1

    move-wide/from16 v1, v46

    invoke-interface {v9, v10, v11, v1, v2}, Lyads/qc0;->c(JJ)J

    move-result-wide v9

    iget-wide v11, v7, Lyads/hk0;->f:J

    add-long/2addr v9, v11

    iget-object v11, v7, Lyads/hk0;->d:Lyads/qc0;

    move-object/from16 v35, v14

    iget-wide v14, v7, Lyads/hk0;->e:J

    invoke-interface {v11, v14, v15, v1, v2}, Lyads/qc0;->c(JJ)J

    move-result-wide v11

    iget-wide v14, v7, Lyads/hk0;->f:J

    add-long/2addr v11, v14

    iget-object v14, v7, Lyads/hk0;->d:Lyads/qc0;

    move-wide/from16 p1, v11

    iget-wide v11, v7, Lyads/hk0;->e:J

    invoke-interface {v14, v11, v12, v1, v2}, Lyads/qc0;->e(JJ)J

    move-result-wide v1

    add-long v1, v1, p1

    sub-long v1, v1, v23

    if-eqz v22, :cond_17

    invoke-virtual/range {v22 .. v22}, Lyads/zr;->c()J

    move-result-wide v11

    goto :goto_12

    :cond_17
    iget-object v11, v7, Lyads/hk0;->d:Lyads/qc0;

    iget-wide v14, v7, Lyads/hk0;->e:J

    invoke-interface {v11, v5, v6, v14, v15}, Lyads/qc0;->a(JJ)J

    move-result-wide v11

    iget-wide v14, v7, Lyads/hk0;->f:J

    add-long/2addr v11, v14

    sget v14, Lyads/u56;->a:I

    invoke-static {v11, v12, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    :goto_12
    cmp-long v9, v11, v9

    if-gez v9, :cond_18

    new-instance v1, Lyads/vs;

    invoke-direct {v1}, Lyads/vs;-><init>()V

    iput-object v1, v4, Lyads/jk0;->m:Lyads/vs;

    goto/16 :goto_1d

    :cond_18
    cmp-long v9, v11, v1

    if-gtz v9, :cond_27

    iget-boolean v10, v4, Lyads/jk0;->n:Z

    if-eqz v10, :cond_19

    if-ltz v9, :cond_19

    goto/16 :goto_1c

    :cond_19
    if-eqz v8, :cond_1a

    iget-object v8, v7, Lyads/hk0;->d:Lyads/qc0;

    iget-wide v9, v7, Lyads/hk0;->f:J

    sub-long v9, v11, v9

    invoke-interface {v8, v9, v10}, Lyads/qc0;->a(J)J

    move-result-wide v8

    cmp-long v8, v8, v16

    if-ltz v8, :cond_1a

    const/4 v8, 0x1

    iput-boolean v8, v13, Lyads/fz;->b:Z

    goto/16 :goto_1d

    :cond_1a
    iget v8, v4, Lyads/jk0;->g:I

    int-to-long v8, v8

    sub-long/2addr v1, v11

    add-long v1, v1, v23

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    if-eqz v3, :cond_1b

    :goto_13
    const/4 v8, 0x1

    if-le v1, v8, :cond_1b

    int-to-long v2, v1

    add-long/2addr v2, v11

    sub-long v2, v2, v23

    iget-object v8, v7, Lyads/hk0;->d:Lyads/qc0;

    iget-wide v9, v7, Lyads/hk0;->f:J

    sub-long/2addr v2, v9

    invoke-interface {v8, v2, v3}, Lyads/qc0;->a(J)J

    move-result-wide v2

    cmp-long v2, v2, v16

    if-ltz v2, :cond_1b

    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    :cond_1b
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1c

    move-wide/from16 v46, v5

    goto :goto_14

    :cond_1c
    move-wide/from16 v46, v18

    :goto_14
    iget-object v2, v4, Lyads/jk0;->e:Lyads/wc0;

    iget v3, v4, Lyads/jk0;->d:I

    iget-object v5, v4, Lyads/jk0;->j:Lyads/er2;

    invoke-interface {v5}, Lyads/er2;->d()Lyads/vz2;

    move-result-object v39

    iget-object v5, v4, Lyads/jk0;->j:Lyads/er2;

    invoke-interface {v5}, Lyads/er2;->e()I

    move-result v40

    iget-object v4, v4, Lyads/jk0;->j:Lyads/er2;

    invoke-interface {v4}, Lyads/er2;->g()Ljava/lang/Object;

    move-result-object v41

    iget-object v4, v7, Lyads/hk0;->b:Lyads/o75;

    iget-object v5, v7, Lyads/hk0;->d:Lyads/qc0;

    iget-wide v8, v7, Lyads/hk0;->f:J

    sub-long v8, v11, v8

    invoke-interface {v5, v8, v9}, Lyads/qc0;->a(J)J

    move-result-wide v42

    iget-object v5, v7, Lyads/hk0;->d:Lyads/qc0;

    iget-wide v8, v7, Lyads/hk0;->f:J

    sub-long v8, v11, v8

    invoke-interface {v5, v8, v9}, Lyads/qc0;->b(J)Lyads/y35;

    move-result-object v5

    iget-object v6, v7, Lyads/hk0;->a:Lyads/ez;

    const/16 v8, 0x8

    if-nez v6, :cond_20

    invoke-virtual {v7, v11, v12}, Lyads/hk0;->a(J)J

    move-result-wide v44

    iget-object v1, v7, Lyads/hk0;->d:Lyads/qc0;

    invoke-interface {v1}, Lyads/qc0;->a()Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_15

    :cond_1d
    cmp-long v1, v20, v18

    if-eqz v1, :cond_1e

    invoke-virtual {v7, v11, v12}, Lyads/hk0;->a(J)J

    move-result-wide v9

    cmp-long v1, v9, v20

    if-gtz v1, :cond_1f

    :cond_1e
    :goto_15
    const/4 v8, 0x0

    :cond_1f
    iget-object v1, v7, Lyads/hk0;->c:Lyads/ms;

    iget-object v1, v1, Lyads/ms;->a:Ljava/lang/String;

    invoke-static {v4, v1, v5, v8}, Lyads/rc0;->a(Lyads/o75;Ljava/lang/String;Lyads/y35;I)Lyads/bd0;

    move-result-object v38

    new-instance v36, Lyads/kl5;

    move-object/from16 v49, v39

    move-object/from16 v37, v2

    move/from16 v48, v3

    move-wide/from16 v46, v11

    invoke-direct/range {v36 .. v49}, Lyads/kl5;-><init>(Lyads/wc0;Lyads/bd0;Lyads/vz2;ILjava/lang/Object;JJJILyads/vz2;)V

    :goto_16
    move-object/from16 v1, v36

    goto/16 :goto_1b

    :cond_20
    move-object/from16 v37, v2

    move-wide/from16 v50, v11

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_17
    if-ge v2, v1, :cond_22

    int-to-long v9, v2

    add-long v11, v50, v9

    iget-object v6, v7, Lyads/hk0;->d:Lyads/qc0;

    iget-wide v9, v7, Lyads/hk0;->f:J

    sub-long/2addr v11, v9

    invoke-interface {v6, v11, v12}, Lyads/qc0;->b(J)Lyads/y35;

    move-result-object v6

    iget-object v9, v7, Lyads/hk0;->c:Lyads/ms;

    iget-object v9, v9, Lyads/ms;->a:Ljava/lang/String;

    invoke-virtual {v5, v6, v9}, Lyads/y35;->a(Lyads/y35;Ljava/lang/String;)Lyads/y35;

    move-result-object v6

    if-nez v6, :cond_21

    goto :goto_18

    :cond_21
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object v5, v6

    goto :goto_17

    :cond_22
    :goto_18
    int-to-long v1, v3

    add-long v11, v50, v1

    sub-long v11, v11, v23

    invoke-virtual {v7, v11, v12}, Lyads/hk0;->a(J)J

    move-result-wide v44

    iget-wide v1, v7, Lyads/hk0;->e:J

    cmp-long v6, v1, v18

    if-eqz v6, :cond_23

    cmp-long v6, v1, v44

    if-gtz v6, :cond_23

    move-wide/from16 v48, v1

    goto :goto_19

    :cond_23
    move-wide/from16 v48, v18

    :goto_19
    iget-object v1, v7, Lyads/hk0;->d:Lyads/qc0;

    invoke-interface {v1}, Lyads/qc0;->a()Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_1a

    :cond_24
    cmp-long v1, v20, v18

    if-eqz v1, :cond_25

    invoke-virtual {v7, v11, v12}, Lyads/hk0;->a(J)J

    move-result-wide v1

    cmp-long v1, v1, v20

    if-gtz v1, :cond_26

    :cond_25
    :goto_1a
    const/4 v8, 0x0

    :cond_26
    iget-object v1, v7, Lyads/hk0;->c:Lyads/ms;

    iget-object v1, v1, Lyads/ms;->a:Ljava/lang/String;

    invoke-static {v4, v1, v5, v8}, Lyads/rc0;->a(Lyads/o75;Ljava/lang/String;Lyads/y35;I)Lyads/bd0;

    move-result-object v38

    iget-wide v1, v4, Lyads/o75;->c:J

    neg-long v1, v1

    new-instance v36, Lyads/b60;

    iget-object v4, v7, Lyads/hk0;->a:Lyads/ez;

    move-wide/from16 v53, v1

    move/from16 v52, v3

    move-object/from16 v55, v4

    invoke-direct/range {v36 .. v55}, Lyads/b60;-><init>(Lyads/wc0;Lyads/bd0;Lyads/vz2;ILjava/lang/Object;JJJJJIJLyads/ez;)V

    goto :goto_16

    :goto_1b
    iput-object v1, v13, Lyads/fz;->a:Lyads/cz;

    goto :goto_1d

    :cond_27
    :goto_1c
    iput-boolean v8, v13, Lyads/fz;->b:Z

    :goto_1d
    iget-object v1, v0, Lyads/jz;->k:Lyads/fz;

    iget-boolean v2, v1, Lyads/fz;->b:Z

    iget-object v3, v1, Lyads/fz;->a:Lyads/cz;

    const/4 v15, 0x0

    iput-object v15, v1, Lyads/fz;->a:Lyads/cz;

    const/4 v4, 0x0

    iput-boolean v4, v1, Lyads/fz;->b:Z

    if-eqz v2, :cond_28

    move-wide/from16 v12, v18

    iput-wide v12, v0, Lyads/jz;->t:J

    const/4 v8, 0x1

    iput-boolean v8, v0, Lyads/jz;->x:Z

    return v8

    :cond_28
    if-nez v3, :cond_29

    return v4

    :cond_29
    iput-object v3, v0, Lyads/jz;->q:Lyads/cz;

    instance-of v1, v3, Lyads/zr;

    if-eqz v1, :cond_2d

    move-object v1, v3

    check-cast v1, Lyads/zr;

    if-eqz v27, :cond_2b

    iget-wide v4, v1, Lyads/cz;->g:J

    iget-wide v6, v0, Lyads/jz;->t:J

    cmp-long v2, v4, v6

    if-eqz v2, :cond_2a

    iget-object v2, v0, Lyads/jz;->n:Lyads/lc5;

    iput-wide v6, v2, Lyads/lc5;->t:J

    iget-object v2, v0, Lyads/jz;->o:[Lyads/lc5;

    array-length v4, v2

    const/4 v5, 0x0

    :goto_1e
    if-ge v5, v4, :cond_2a

    aget-object v6, v2, v5

    iget-wide v7, v0, Lyads/jz;->t:J

    iput-wide v7, v6, Lyads/lc5;->t:J

    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :cond_2a
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v12, v0, Lyads/jz;->t:J

    :cond_2b
    iget-object v2, v0, Lyads/jz;->p:Lyads/bs;

    iput-object v2, v1, Lyads/zr;->m:Lyads/bs;

    iget-object v4, v2, Lyads/bs;->b:[Lyads/lc5;

    array-length v4, v4

    new-array v4, v4, [I

    const/4 v5, 0x0

    :goto_1f
    iget-object v6, v2, Lyads/bs;->b:[Lyads/lc5;

    array-length v7, v6

    if-ge v5, v7, :cond_2c

    aget-object v6, v6, v5

    iget v7, v6, Lyads/lc5;->q:I

    iget v6, v6, Lyads/lc5;->p:I

    add-int/2addr v7, v6

    aput v7, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    :cond_2c
    iput-object v4, v1, Lyads/zr;->n:[I

    iget-object v2, v0, Lyads/jz;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_2d
    instance-of v1, v3, Lyads/lg3;

    if-eqz v1, :cond_2e

    move-object v1, v3

    check-cast v1, Lyads/lg3;

    iget-object v2, v0, Lyads/jz;->p:Lyads/bs;

    iput-object v2, v1, Lyads/lg3;->k:Lyads/bs;

    :cond_2e
    :goto_20
    iget-object v1, v0, Lyads/jz;->j:Lyads/ru3;

    iget-object v2, v0, Lyads/jz;->i:Lyads/ll0;

    iget v4, v3, Lyads/cz;->c:I

    invoke-virtual {v2, v4}, Lyads/ll0;->a(I)I

    move-result v2

    invoke-virtual {v1, v3, v0, v2}, Lyads/ru3;->a(Lyads/nu3;Lyads/ku3;I)J

    iget-object v1, v0, Lyads/jz;->h:Lyads/k14;

    new-instance v2, Lyads/cu3;

    iget-object v4, v3, Lyads/cz;->b:Lyads/bd0;

    invoke-direct {v2, v4}, Lyads/cu3;-><init>(Lyads/bd0;)V

    iget v6, v3, Lyads/cz;->c:I

    iget v7, v0, Lyads/jz;->b:I

    iget-object v8, v3, Lyads/cz;->d:Lyads/vz2;

    iget v9, v3, Lyads/cz;->e:I

    iget-object v10, v3, Lyads/cz;->f:Ljava/lang/Object;

    iget-wide v4, v3, Lyads/cz;->g:J

    iget-wide v11, v3, Lyads/cz;->h:J

    new-instance v0, Lyads/r04;

    invoke-virtual {v1, v4, v5}, Lyads/k14;->a(J)J

    move-result-wide v3

    invoke-virtual {v1, v11, v12}, Lyads/k14;->a(J)J

    move-result-wide v13

    move-object v5, v0

    move-wide v11, v3

    invoke-direct/range {v5 .. v14}, Lyads/r04;-><init>(IILyads/vz2;ILjava/lang/Object;JJ)V

    invoke-virtual {v1, v2, v5}, Lyads/k14;->c(Lyads/cu3;Lyads/r04;)V

    const/16 v26, 0x1

    return v26

    :goto_21
    return v25
.end method

.method public final d()Z
    .locals 4

    iget-wide v0, p0, Lyads/jz;->t:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final e()V
    .locals 13

    iget-object v0, p0, Lyads/jz;->n:Lyads/lc5;

    iget v1, v0, Lyads/lc5;->q:I

    iget v0, v0, Lyads/lc5;->s:I

    add-int/2addr v1, v0

    iget v0, p0, Lyads/jz;->v:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v1, v0}, Lyads/jz;->a(II)I

    move-result v0

    :goto_0
    iget v1, p0, Lyads/jz;->v:I

    if-gt v1, v0, :cond_1

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lyads/jz;->v:I

    iget-object v2, p0, Lyads/jz;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/zr;

    iget-object v5, v1, Lyads/cz;->d:Lyads/vz2;

    iget-object v2, p0, Lyads/jz;->r:Lyads/vz2;

    invoke-virtual {v5, v2}, Lyads/vz2;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v12, p0, Lyads/jz;->h:Lyads/k14;

    iget v4, p0, Lyads/jz;->b:I

    iget v6, v1, Lyads/cz;->e:I

    iget-object v7, v1, Lyads/cz;->f:Ljava/lang/Object;

    iget-wide v1, v1, Lyads/cz;->g:J

    move-wide v8, v1

    new-instance v2, Lyads/r04;

    invoke-virtual {v12, v8, v9}, Lyads/k14;->a(J)J

    move-result-wide v8

    const/4 v3, 0x1

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v2 .. v11}, Lyads/r04;-><init>(IILyads/vz2;ILjava/lang/Object;JJ)V

    invoke-virtual {v12, v2}, Lyads/k14;->a(Lyads/r04;)V

    :cond_0
    iput-object v5, p0, Lyads/jz;->r:Lyads/vz2;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final getBufferedPositionUs()J
    .locals 5

    iget-boolean v0, p0, Lyads/jz;->x:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lyads/jz;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lyads/jz;->t:J

    return-wide v0

    :cond_1
    iget-wide v0, p0, Lyads/jz;->u:J

    iget-object v2, p0, Lyads/jz;->l:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ldd2;->b(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/zr;

    invoke-virtual {v2}, Lyads/zr;->d()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lyads/jz;->l:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_3

    iget-object v2, p0, Lyads/jz;->l:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-static {v3, v2}, Ldd2;->b(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/zr;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    iget-wide v2, v2, Lyads/cz;->h:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_4
    iget-object p0, p0, Lyads/jz;->n:Lyads/lc5;

    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lyads/lc5;->v:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getNextLoadPositionUs()J
    .locals 2

    invoke-virtual {p0}, Lyads/jz;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lyads/jz;->t:J

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lyads/jz;->x:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_1
    iget-object p0, p0, Lyads/jz;->l:Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-static {v0, p0}, Ldd2;->b(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/zr;

    iget-wide v0, p0, Lyads/cz;->h:J

    return-wide v0
.end method

.method public final isLoading()Z
    .locals 0

    iget-object p0, p0, Lyads/jz;->j:Lyads/ru3;

    invoke-virtual {p0}, Lyads/ru3;->b()Z

    move-result p0

    return p0
.end method

.method public final reevaluateBuffer(J)V
    .locals 14

    move-wide v0, p1

    iget-object v2, p0, Lyads/jz;->j:Lyads/ru3;

    iget-object v2, v2, Lyads/ru3;->c:Ljava/io/IOException;

    if-eqz v2, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p0}, Lyads/jz;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v2, p0, Lyads/jz;->j:Lyads/ru3;

    invoke-virtual {v2}, Lyads/ru3;->b()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    iget-object v2, p0, Lyads/jz;->q:Lyads/cz;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v5, v2, Lyads/zr;

    if-eqz v5, :cond_2

    iget-object v6, p0, Lyads/jz;->l:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {p0, v6}, Lyads/jz;->b(I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_5

    :cond_2
    iget-object v4, p0, Lyads/jz;->f:Lyads/jk0;

    iget-object v6, p0, Lyads/jz;->m:Ljava/util/List;

    iget-object v7, v4, Lyads/jk0;->m:Lyads/vs;

    if-eqz v7, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    iget-object v4, v4, Lyads/jk0;->j:Lyads/er2;

    invoke-interface {v4, v0, v1, v2, v6}, Lyads/er2;->a(JLyads/cz;Ljava/util/List;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_d

    iget-object v0, p0, Lyads/jz;->j:Lyads/ru3;

    iget-object v0, v0, Lyads/ru3;->b:Lyads/mu3;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v3}, Lyads/mu3;->a(Z)V

    if-eqz v5, :cond_d

    check-cast v2, Lyads/zr;

    iput-object v2, p0, Lyads/jz;->w:Lyads/zr;

    return-void

    :cond_4
    invoke-static {}, Lud;->g()V

    return-void

    :cond_5
    iget-object v2, p0, Lyads/jz;->f:Lyads/jk0;

    iget-object v5, p0, Lyads/jz;->m:Ljava/util/List;

    iget-object v6, v2, Lyads/jk0;->m:Lyads/vs;

    if-nez v6, :cond_7

    iget-object v6, v2, Lyads/jk0;->j:Lyads/er2;

    invoke-interface {v6}, Lyads/er2;->length()I

    move-result v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_6

    goto :goto_1

    :cond_6
    iget-object v2, v2, Lyads/jk0;->j:Lyads/er2;

    invoke-interface {v2, v0, v1, v5}, Lyads/er2;->a(JLjava/util/List;)I

    move-result v0

    goto :goto_2

    :cond_7
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    iget-object v1, p0, Lyads/jz;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_d

    iget-object v1, p0, Lyads/jz;->j:Lyads/ru3;

    invoke-virtual {v1}, Lyads/ru3;->b()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lyads/jz;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_3
    const/4 v2, -0x1

    if-ge v0, v1, :cond_9

    invoke-virtual {p0, v0}, Lyads/jz;->b(I)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    move v0, v2

    :goto_4
    if-ne v0, v2, :cond_a

    goto :goto_5

    :cond_a
    iget-object v1, p0, Lyads/jz;->l:Ljava/util/ArrayList;

    invoke-static {v4, v1}, Ldd2;->b(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/zr;

    iget-wide v1, v1, Lyads/cz;->h:J

    invoke-virtual {p0, v0}, Lyads/jz;->a(I)Lyads/zr;

    move-result-object v0

    iget-object v4, p0, Lyads/jz;->l:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-wide v4, p0, Lyads/jz;->u:J

    iput-wide v4, p0, Lyads/jz;->t:J

    :cond_b
    iput-boolean v3, p0, Lyads/jz;->x:Z

    iget-object v3, p0, Lyads/jz;->h:Lyads/k14;

    iget v6, p0, Lyads/jz;->b:I

    iget-wide v4, v0, Lyads/cz;->g:J

    new-instance p0, Lyads/r04;

    invoke-virtual {v3, v4, v5}, Lyads/k14;->a(J)J

    move-result-wide v10

    invoke-virtual {v3, v1, v2}, Lyads/k14;->a(J)J

    move-result-wide v12

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v13}, Lyads/r04;-><init>(IILyads/vz2;ILjava/lang/Object;JJ)V

    invoke-virtual {v3, v4}, Lyads/k14;->b(Lyads/r04;)V

    return-void

    :cond_c
    invoke-static {}, Lud;->g()V

    :cond_d
    :goto_5
    return-void
.end method
