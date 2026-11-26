.class public final Lyads/jk0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/su3;

.field public final b:Lyads/ns;

.field public final c:[I

.field public final d:I

.field public final e:Lyads/wc0;

.field public final f:J

.field public final g:I

.field public final h:Lyads/nw4;

.field public final i:[Lyads/hk0;

.field public j:Lyads/er2;

.field public k:Lyads/kc0;

.field public l:I

.field public m:Lyads/vs;

.field public n:Z


# direct methods
.method public constructor <init>(Lyads/dz;Lyads/su3;Lyads/kc0;Lyads/ns;I[ILyads/er2;ILyads/wc0;JIZLjava/util/ArrayList;Lyads/nw4;Lyads/rw4;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v6, p2

    iput-object v6, v0, Lyads/jk0;->a:Lyads/su3;

    iput-object v1, v0, Lyads/jk0;->k:Lyads/kc0;

    iput-object v2, v0, Lyads/jk0;->b:Lyads/ns;

    iput-object v4, v0, Lyads/jk0;->c:[I

    iput-object v5, v0, Lyads/jk0;->j:Lyads/er2;

    move/from16 v6, p8

    iput v6, v0, Lyads/jk0;->d:I

    move-object/from16 v7, p9

    iput-object v7, v0, Lyads/jk0;->e:Lyads/wc0;

    iput v3, v0, Lyads/jk0;->l:I

    move-wide/from16 v7, p10

    iput-wide v7, v0, Lyads/jk0;->f:J

    move/from16 v7, p12

    iput v7, v0, Lyads/jk0;->g:I

    move-object/from16 v10, p15

    iput-object v10, v0, Lyads/jk0;->h:Lyads/nw4;

    invoke-virtual {v1, v3}, Lyads/kc0;->a(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Lyads/u56;->a(J)J

    move-result-wide v12

    iget-object v1, v0, Lyads/jk0;->k:Lyads/kc0;

    iget v3, v0, Lyads/jk0;->l:I

    iget-object v1, v1, Lyads/kc0;->m:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/au4;

    iget-object v1, v1, Lyads/au4;->c:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v7, v4

    const/4 v14, 0x0

    move v8, v14

    :goto_0
    if-ge v8, v7, :cond_0

    aget v9, v4, v8

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lyads/eb;

    iget-object v9, v9, Lyads/eb;->c:Ljava/util/List;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v5}, Lyads/er2;->length()I

    move-result v1

    new-array v1, v1, [Lyads/hk0;

    iput-object v1, v0, Lyads/jk0;->i:[Lyads/hk0;

    move v1, v14

    :goto_1
    iget-object v4, v0, Lyads/jk0;->i:[Lyads/hk0;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    invoke-interface {v5, v1}, Lyads/er2;->b(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/o75;

    iget-object v7, v4, Lyads/o75;->b:Lyads/oe3;

    invoke-virtual {v2, v7}, Lyads/ns;->b(Ljava/util/List;)Lyads/ms;

    move-result-object v7

    iget-object v15, v0, Lyads/jk0;->i:[Lyads/hk0;

    new-instance v16, Lyads/hk0;

    if-eqz v7, :cond_1

    :goto_2
    move-object/from16 v17, v7

    goto :goto_3

    :cond_1
    iget-object v7, v4, Lyads/o75;->b:Lyads/oe3;

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lyads/ms;

    goto :goto_2

    :goto_3
    iget-object v7, v4, Lyads/o75;->a:Lyads/vz2;

    move-object/from16 v8, p1

    check-cast v8, Lch;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v8, p13

    move-object/from16 v9, p14

    move-object/from16 v11, p16

    invoke-static/range {v6 .. v11}, Lyads/nv;->a(ILyads/vz2;ZLjava/util/List;Lyads/k06;Lyads/rw4;)Lyads/ez;

    move-result-object v7

    move-wide v10, v12

    move-object/from16 v13, v17

    invoke-virtual {v4}, Lyads/o75;->d()Lyads/qc0;

    move-result-object v17

    move-object v6, v15

    move-object/from16 v9, v16

    const-wide/16 v15, 0x0

    move-object v12, v4

    move v4, v14

    move-object v14, v7

    invoke-direct/range {v9 .. v17}, Lyads/hk0;-><init>(JLyads/o75;Lyads/ms;Lyads/ez;JLyads/qc0;)V

    aput-object v9, v6, v1

    add-int/lit8 v1, v1, 0x1

    move/from16 v6, p8

    move v14, v4

    move-wide v12, v10

    move-object/from16 v10, p15

    goto :goto_1

    :cond_2
    return-void
.end method
