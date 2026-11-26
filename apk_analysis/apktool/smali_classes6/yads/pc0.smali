.class public final Lyads/pc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/z04;
.implements Lyads/ti5;


# static fields
.field public static final A:Ljava/util/regex/Pattern;

.field public static final z:Ljava/util/regex/Pattern;


# instance fields
.field public final b:I

.field public final c:Lyads/gk0;

.field public final d:Lyads/p16;

.field public final e:Lyads/xl2;

.field public final f:Lyads/ll0;

.field public final g:Lyads/ns;

.field public final h:J

.field public final i:Lyads/su3;

.field public final j:Lyads/aj0;

.field public final k:Lyads/g06;

.field public final l:[Lyads/oc0;

.field public final m:Lyads/dk0;

.field public final n:Lyads/ow4;

.field public final o:Ljava/util/IdentityHashMap;

.field public final p:Lyads/k14;

.field public final q:Lyads/tl2;

.field public final r:Lyads/rw4;

.field public s:Lyads/y04;

.field public t:[Lyads/jz;

.field public u:[Lyads/hp2;

.field public v:Lyads/i50;

.field public w:Lyads/kc0;

.field public x:I

.field public y:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CC([1-4])=(.+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lyads/pc0;->z:Ljava/util/regex/Pattern;

    const-string v0, "([1-4])=lang:(\\w+)(,.+)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lyads/pc0;->A:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(ILyads/kc0;Lyads/ns;ILyads/gk0;Lyads/p16;Lyads/xl2;Lyads/tl2;Lyads/ll0;Lyads/k14;JLyads/su3;Lyads/aj0;Lyads/dk0;Lcom/monetization/ads/exo/source/dash/c;Lyads/rw4;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    move-object/from16 v3, p7

    move-object/from16 v4, p14

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move/from16 v5, p1

    iput v5, v0, Lyads/pc0;->b:I

    iput-object v1, v0, Lyads/pc0;->w:Lyads/kc0;

    move-object/from16 v5, p3

    iput-object v5, v0, Lyads/pc0;->g:Lyads/ns;

    iput v2, v0, Lyads/pc0;->x:I

    move-object/from16 v5, p5

    iput-object v5, v0, Lyads/pc0;->c:Lyads/gk0;

    move-object/from16 v5, p6

    iput-object v5, v0, Lyads/pc0;->d:Lyads/p16;

    iput-object v3, v0, Lyads/pc0;->e:Lyads/xl2;

    move-object/from16 v5, p8

    iput-object v5, v0, Lyads/pc0;->q:Lyads/tl2;

    move-object/from16 v5, p9

    iput-object v5, v0, Lyads/pc0;->f:Lyads/ll0;

    move-object/from16 v5, p10

    iput-object v5, v0, Lyads/pc0;->p:Lyads/k14;

    move-wide/from16 v5, p11

    iput-wide v5, v0, Lyads/pc0;->h:J

    move-object/from16 v5, p13

    iput-object v5, v0, Lyads/pc0;->i:Lyads/su3;

    iput-object v4, v0, Lyads/pc0;->j:Lyads/aj0;

    move-object/from16 v5, p15

    iput-object v5, v0, Lyads/pc0;->m:Lyads/dk0;

    move-object/from16 v6, p17

    iput-object v6, v0, Lyads/pc0;->r:Lyads/rw4;

    new-instance v6, Lyads/ow4;

    move-object/from16 v7, p16

    invoke-direct {v6, v1, v7, v4}, Lyads/ow4;-><init>(Lyads/kc0;Lcom/monetization/ads/exo/source/dash/c;Lyads/aj0;)V

    iput-object v6, v0, Lyads/pc0;->n:Lyads/ow4;

    const/4 v4, 0x0

    new-array v6, v4, [Lyads/jz;

    iput-object v6, v0, Lyads/pc0;->t:[Lyads/jz;

    new-array v6, v4, [Lyads/hp2;

    iput-object v6, v0, Lyads/pc0;->u:[Lyads/hp2;

    new-instance v6, Ljava/util/IdentityHashMap;

    invoke-direct {v6}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v6, v0, Lyads/pc0;->o:Ljava/util/IdentityHashMap;

    iget-object v6, v0, Lyads/pc0;->t:[Lyads/jz;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lyads/i50;

    invoke-direct {v5, v6}, Lyads/i50;-><init>([Lyads/ui5;)V

    iput-object v5, v0, Lyads/pc0;->v:Lyads/i50;

    iget-object v1, v1, Lyads/kc0;->m:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/au4;

    iget-object v2, v1, Lyads/au4;->d:Ljava/util/List;

    iput-object v2, v0, Lyads/pc0;->y:Ljava/util/List;

    iget-object v1, v1, Lyads/au4;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6, v5}, Landroid/util/SparseIntArray;-><init>(I)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8, v5}, Landroid/util/SparseArray;-><init>(I)V

    move v9, v4

    :goto_0
    if-ge v9, v5, :cond_0

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lyads/eb;

    iget v10, v10, Lyads/eb;->a:I

    invoke-virtual {v6, v10, v9}, Landroid/util/SparseIntArray;->put(II)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    move v9, v4

    :goto_1
    const/4 v10, -0x1

    if-ge v9, v5, :cond_6

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lyads/eb;

    iget-object v12, v11, Lyads/eb;->e:Ljava/util/List;

    const-string v13, "http://dashif.org/guidelines/trickmode"

    invoke-static {v13, v12}, Lyads/pc0;->a(Ljava/lang/String;Ljava/util/List;)Lyads/kn0;

    move-result-object v12

    if-nez v12, :cond_1

    iget-object v12, v11, Lyads/eb;->f:Ljava/util/List;

    invoke-static {v13, v12}, Lyads/pc0;->a(Ljava/lang/String;Ljava/util/List;)Lyads/kn0;

    move-result-object v12

    :cond_1
    if-eqz v12, :cond_2

    iget-object v12, v12, Lyads/kn0;->b:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v6, v12, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    if-eq v12, v10, :cond_2

    goto :goto_2

    :cond_2
    move v12, v9

    :goto_2
    if-ne v12, v9, :cond_4

    iget-object v11, v11, Lyads/eb;->f:Ljava/util/List;

    const-string v13, "urn:mpeg:dash:adaptation-set-switching:2016"

    invoke-static {v13, v11}, Lyads/pc0;->a(Ljava/lang/String;Ljava/util/List;)Lyads/kn0;

    move-result-object v11

    if-eqz v11, :cond_4

    iget-object v11, v11, Lyads/kn0;->b:Ljava/lang/String;

    sget v13, Lyads/u56;->a:I

    const-string v13, ","

    invoke-virtual {v11, v13, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v11

    array-length v13, v11

    move v14, v4

    :goto_3
    if-ge v14, v13, :cond_4

    aget-object v15, v11, v14

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v6, v15, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v15

    if-eq v15, v10, :cond_3

    invoke-static {v12, v15}, Ljava/lang/Math;->min(II)I

    move-result v12

    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_4
    if-eq v12, v9, :cond_5

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-virtual {v8, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v8, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v6, v5, [[I

    move v8, v4

    :goto_4
    if-ge v8, v5, :cond_7

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    invoke-static {v9}, Lyads/bq3;->a(Ljava/util/Collection;)[I

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v9}, Ljava/util/Arrays;->sort([I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_7
    new-array v7, v5, [Z

    new-array v8, v5, [[Lyads/vz2;

    move v9, v4

    move v11, v9

    :goto_5
    if-ge v9, v5, :cond_10

    aget-object v12, v6, v9

    array-length v13, v12

    move v14, v4

    :goto_6
    if-ge v14, v13, :cond_a

    aget v15, v12, v14

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lyads/eb;

    iget-object v15, v15, Lyads/eb;->c:Ljava/util/List;

    move v10, v4

    :goto_7
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v4

    if-ge v10, v4, :cond_9

    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/o75;

    iget-object v4, v4, Lyads/o75;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    const/4 v4, 0x1

    aput-boolean v4, v7, v9

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_9
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x0

    const/4 v10, -0x1

    goto :goto_6

    :cond_a
    :goto_8
    aget-object v4, v6, v9

    array-length v10, v4

    const/4 v12, 0x0

    :goto_9
    if-ge v12, v10, :cond_e

    aget v13, v4, v12

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lyads/eb;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lyads/eb;

    iget-object v13, v13, Lyads/eb;->d:Ljava/util/List;

    move-object/from16 p2, v4

    const/4 v15, 0x0

    :goto_a
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    if-ge v15, v4, :cond_d

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/kn0;

    move-object/from16 p4, v6

    iget-object v6, v4, Lyads/kn0;->a:Ljava/lang/String;

    move-object/from16 p5, v7

    const-string v7, "urn:scte:dash:cc:cea-608:2015"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    new-instance v6, Lyads/uz2;

    invoke-direct {v6}, Lyads/uz2;-><init>()V

    const-string v7, "application/cea-608"

    iput-object v7, v6, Lyads/uz2;->k:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v14, Lyads/eb;->a:I

    const-string v12, ":cea608"

    invoke-static {v7, v12, v10}, Ll2;->e(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lyads/uz2;->a:Ljava/lang/String;

    new-instance v7, Lyads/vz2;

    invoke-direct {v7, v6}, Lyads/vz2;-><init>(Lyads/uz2;)V

    sget-object v6, Lyads/pc0;->z:Ljava/util/regex/Pattern;

    invoke-static {v4, v6, v7}, Lyads/pc0;->a(Lyads/kn0;Ljava/util/regex/Pattern;Lyads/vz2;)[Lyads/vz2;

    move-result-object v4

    goto :goto_b

    :cond_b
    iget-object v6, v4, Lyads/kn0;->a:Ljava/lang/String;

    const-string v7, "urn:scte:dash:cc:cea-708:2015"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    new-instance v6, Lyads/uz2;

    invoke-direct {v6}, Lyads/uz2;-><init>()V

    const-string v7, "application/cea-708"

    iput-object v7, v6, Lyads/uz2;->k:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v14, Lyads/eb;->a:I

    const-string v12, ":cea708"

    invoke-static {v7, v12, v10}, Ll2;->e(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lyads/uz2;->a:Ljava/lang/String;

    new-instance v7, Lyads/vz2;

    invoke-direct {v7, v6}, Lyads/vz2;-><init>(Lyads/uz2;)V

    sget-object v6, Lyads/pc0;->A:Ljava/util/regex/Pattern;

    invoke-static {v4, v6, v7}, Lyads/pc0;->a(Lyads/kn0;Ljava/util/regex/Pattern;Lyads/vz2;)[Lyads/vz2;

    move-result-object v4

    goto :goto_b

    :cond_c
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    goto :goto_a

    :cond_d
    move-object/from16 p4, v6

    move-object/from16 p5, v7

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, p2

    goto/16 :goto_9

    :cond_e
    move-object/from16 p4, v6

    move-object/from16 p5, v7

    const/4 v4, 0x0

    new-array v6, v4, [Lyads/vz2;

    move-object v4, v6

    :goto_b
    aput-object v4, v8, v9

    array-length v4, v4

    if-eqz v4, :cond_f

    add-int/lit8 v11, v11, 0x1

    :cond_f
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    const/4 v4, 0x0

    const/4 v10, -0x1

    goto/16 :goto_5

    :cond_10
    move-object/from16 p4, v6

    move-object/from16 p5, v7

    add-int/2addr v11, v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v11

    new-array v6, v4, [Lyads/f06;

    new-array v4, v4, [Lyads/oc0;

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_c
    const-string v10, "application/x-emsg"

    if-ge v7, v5, :cond_18

    aget-object v11, p4, v7

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    array-length v13, v11

    const/4 v14, 0x0

    :goto_d
    if-ge v14, v13, :cond_11

    aget v15, v11, v14

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lyads/eb;

    iget-object v15, v15, Lyads/eb;->c:Ljava/util/List;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_d

    :cond_11
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v14, v13, [Lyads/vz2;

    const/4 v15, 0x0

    :goto_e
    if-ge v15, v13, :cond_12

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 p2, v5

    move-object/from16 v5, v16

    check-cast v5, Lyads/o75;

    iget-object v5, v5, Lyads/o75;->a:Lyads/vz2;

    move-object/from16 v16, v8

    invoke-interface {v3, v5}, Lyads/xl2;->a(Lyads/vz2;)I

    move-result v8

    new-instance v3, Lyads/uz2;

    invoke-direct {v3, v5}, Lyads/uz2;-><init>(Lyads/vz2;)V

    iput v8, v3, Lyads/uz2;->D:I

    new-instance v5, Lyads/vz2;

    invoke-direct {v5, v3}, Lyads/vz2;-><init>(Lyads/uz2;)V

    aput-object v5, v14, v15

    add-int/lit8 v15, v15, 0x1

    move/from16 v5, p2

    move-object/from16 v3, p7

    move-object/from16 v8, v16

    goto :goto_e

    :cond_12
    move/from16 p2, v5

    move-object/from16 v16, v8

    const/4 v3, 0x0

    aget v5, v11, v3

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/eb;

    iget v5, v3, Lyads/eb;->a:I

    const/4 v8, -0x1

    if-eq v5, v8, :cond_13

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_f

    :cond_13
    const-string v5, "unset:"

    invoke-static {v7, v5}, Lyads/vx4;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_f
    add-int/lit8 v8, v9, 0x1

    aget-boolean v12, p5, v7

    if-eqz v12, :cond_14

    add-int/lit8 v12, v9, 0x2

    move/from16 v19, v12

    move v12, v8

    move/from16 v8, v19

    goto :goto_10

    :cond_14
    const/4 v12, -0x1

    :goto_10
    aget-object v13, v16, v7

    array-length v13, v13

    if-eqz v13, :cond_15

    add-int/lit8 v13, v8, 0x1

    goto :goto_11

    :cond_15
    move v13, v8

    const/4 v8, -0x1

    :goto_11
    new-instance v15, Lyads/f06;

    invoke-direct {v15, v5, v14}, Lyads/f06;-><init>(Ljava/lang/String;[Lyads/vz2;)V

    aput-object v15, v6, v9

    iget v3, v3, Lyads/eb;->b:I

    new-instance v14, Lyads/oc0;

    const/4 v15, 0x0

    const/16 v17, -0x1

    move/from16 p9, v3

    move/from16 p14, v8

    move/from16 p12, v9

    move-object/from16 p11, v11

    move/from16 p13, v12

    move-object/from16 p8, v14

    move/from16 p10, v15

    move/from16 p15, v17

    invoke-direct/range {p8 .. p15}, Lyads/oc0;-><init>(II[IIIII)V

    move-object/from16 v12, p8

    move-object/from16 v8, p11

    move/from16 v3, p12

    move/from16 v9, p13

    move/from16 v11, p14

    aput-object v12, v4, v3

    const/4 v12, -0x1

    if-eq v9, v12, :cond_16

    const-string v12, ":emsg"

    invoke-static {v5, v12}, Lni0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v14, Lyads/uz2;

    invoke-direct {v14}, Lyads/uz2;-><init>()V

    iput-object v12, v14, Lyads/uz2;->a:Ljava/lang/String;

    iput-object v10, v14, Lyads/uz2;->k:Ljava/lang/String;

    new-instance v10, Lyads/vz2;

    invoke-direct {v10, v14}, Lyads/vz2;-><init>(Lyads/uz2;)V

    new-instance v14, Lyads/f06;

    filled-new-array {v10}, [Lyads/vz2;

    move-result-object v10

    invoke-direct {v14, v12, v10}, Lyads/f06;-><init>(Ljava/lang/String;[Lyads/vz2;)V

    aput-object v14, v6, v9

    new-instance v10, Lyads/oc0;

    const/4 v12, -0x1

    const/4 v14, -0x1

    const/4 v15, 0x5

    const/16 v17, 0x1

    const/16 v18, -0x1

    move/from16 p12, v3

    move-object/from16 p11, v8

    move-object/from16 p8, v10

    move/from16 p14, v12

    move/from16 p15, v14

    move/from16 p9, v15

    move/from16 p10, v17

    move/from16 p13, v18

    invoke-direct/range {p8 .. p15}, Lyads/oc0;-><init>(II[IIIII)V

    aput-object v10, v4, v9

    const/4 v12, -0x1

    :cond_16
    if-eq v11, v12, :cond_17

    const-string v9, ":cc"

    invoke-static {v5, v9}, Lni0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v9, Lyads/f06;

    aget-object v10, v16, v7

    invoke-direct {v9, v5, v10}, Lyads/f06;-><init>(Ljava/lang/String;[Lyads/vz2;)V

    aput-object v9, v6, v11

    new-instance v5, Lyads/oc0;

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v14, 0x3

    const/4 v15, 0x1

    const/16 v17, -0x1

    move/from16 p12, v3

    move-object/from16 p8, v5

    move-object/from16 p11, v8

    move/from16 p14, v9

    move/from16 p15, v10

    move/from16 p9, v14

    move/from16 p10, v15

    move/from16 p13, v17

    invoke-direct/range {p8 .. p15}, Lyads/oc0;-><init>(II[IIIII)V

    move-object/from16 v3, p8

    aput-object v3, v4, v11

    :cond_17
    add-int/lit8 v7, v7, 0x1

    move/from16 v5, p2

    move-object/from16 v3, p7

    move v9, v13

    move-object/from16 v8, v16

    goto/16 :goto_c

    :cond_18
    move v3, v9

    const/4 v1, 0x0

    :goto_12
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_19

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/ip2;

    new-instance v5, Lyads/uz2;

    invoke-direct {v5}, Lyads/uz2;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v3, Lyads/ip2;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v3, Lyads/ip2;->d:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lyads/uz2;->a:Ljava/lang/String;

    iput-object v10, v5, Lyads/uz2;->k:Ljava/lang/String;

    new-instance v7, Lyads/vz2;

    invoke-direct {v7, v5}, Lyads/vz2;-><init>(Lyads/uz2;)V

    new-instance v5, Ljava/lang/StringBuilder;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v3, Lyads/ip2;->c:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lyads/ip2;->d:Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-static {v5, v3, v1}, Lag;->d(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lyads/f06;

    filled-new-array {v7}, [Lyads/vz2;

    move-result-object v7

    invoke-direct {v5, v3, v7}, Lyads/f06;-><init>(Ljava/lang/String;[Lyads/vz2;)V

    aput-object v5, v6, v9

    add-int/lit8 v3, v9, 0x1

    new-instance v5, Lyads/oc0;

    const/4 v7, 0x0

    new-array v8, v7, [I

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x5

    const/4 v14, 0x2

    const/4 v15, -0x1

    move/from16 p13, v1

    move-object/from16 p6, v5

    move-object/from16 p9, v8

    move/from16 p11, v11

    move/from16 p12, v12

    move/from16 p7, v13

    move/from16 p8, v14

    move/from16 p10, v15

    invoke-direct/range {p6 .. p13}, Lyads/oc0;-><init>(II[IIIII)V

    aput-object v5, v4, v9

    add-int/lit8 v1, v1, 0x1

    move v9, v3

    goto/16 :goto_12

    :cond_19
    new-instance v1, Lyads/g06;

    invoke-direct {v1, v6}, Lyads/g06;-><init>([Lyads/f06;)V

    invoke-static {v1, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lyads/g06;

    iput-object v2, v0, Lyads/pc0;->k:Lyads/g06;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Lyads/oc0;

    iput-object v1, v0, Lyads/pc0;->l:[Lyads/oc0;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;)Lyads/kn0;
    .locals 3

    const/4 v0, 0x0

    .line 819
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 820
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/kn0;

    .line 821
    iget-object v2, v1, Lyads/kn0;->a:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lyads/kn0;Ljava/util/regex/Pattern;Lyads/vz2;)[Lyads/vz2;
    .locals 7

    .line 822
    iget-object p0, p0, Lyads/kn0;->b:Ljava/lang/String;

    if-nez p0, :cond_0

    .line 823
    filled-new-array {p2}, [Lyads/vz2;

    move-result-object p0

    return-object p0

    .line 824
    :cond_0
    sget v0, Lyads/u56;->a:I

    const/4 v0, -0x1

    .line 825
    const-string v1, ";"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 826
    array-length v0, p0

    new-array v0, v0, [Lyads/vz2;

    const/4 v1, 0x0

    .line 827
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 828
    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 829
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_1

    .line 830
    filled-new-array {p2}, [Lyads/vz2;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v3, 0x1

    .line 831
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 832
    new-instance v4, Lyads/uz2;

    invoke-direct {v4, p2}, Lyads/uz2;-><init>(Lyads/vz2;)V

    .line 833
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p2, Lyads/vz2;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 834
    iput-object v5, v4, Lyads/uz2;->a:Ljava/lang/String;

    .line 835
    iput v3, v4, Lyads/uz2;->C:I

    const/4 v3, 0x2

    .line 836
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 837
    iput-object v2, v4, Lyads/uz2;->c:Ljava/lang/String;

    .line 838
    new-instance v2, Lyads/vz2;

    invoke-direct {v2, v4}, Lyads/vz2;-><init>(Lyads/uz2;)V

    .line 839
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final a(JLyads/th5;)J
    .locals 18

    move-wide/from16 v1, p1

    move-object/from16 v0, p0

    .line 804
    iget-object v0, v0, Lyads/pc0;->t:[Lyads/jz;

    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_4

    aget-object v6, v0, v5

    .line 805
    iget v7, v6, Lyads/jz;->b:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 806
    iget-object v0, v6, Lyads/jz;->f:Lyads/jk0;

    .line 807
    iget-object v0, v0, Lyads/jk0;->i:[Lyads/hk0;

    .line 808
    array-length v3, v0

    :goto_1
    if-ge v4, v3, :cond_4

    aget-object v5, v0, v4

    .line 809
    iget-object v6, v5, Lyads/hk0;->d:Lyads/qc0;

    if-eqz v6, :cond_2

    .line 810
    iget-wide v3, v5, Lyads/hk0;->e:J

    invoke-interface {v6, v1, v2, v3, v4}, Lyads/qc0;->a(JJ)J

    move-result-wide v3

    iget-wide v6, v5, Lyads/hk0;->f:J

    add-long/2addr v3, v6

    .line 811
    iget-object v0, v5, Lyads/hk0;->d:Lyads/qc0;

    sub-long v6, v3, v6

    invoke-interface {v0, v6, v7}, Lyads/qc0;->a(J)J

    move-result-wide v6

    .line 812
    iget-object v0, v5, Lyads/hk0;->d:Lyads/qc0;

    iget-wide v8, v5, Lyads/hk0;->e:J

    invoke-interface {v0, v8, v9}, Lyads/qc0;->c(J)J

    move-result-wide v8

    cmp-long v0, v6, v1

    if-gez v0, :cond_1

    const-wide/16 v10, -0x1

    cmp-long v0, v8, v10

    const-wide/16 v10, 0x1

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, v5, Lyads/hk0;->d:Lyads/qc0;

    invoke-interface {v0}, Lyads/qc0;->b()J

    move-result-wide v12

    iget-wide v14, v5, Lyads/hk0;->f:J

    add-long/2addr v12, v14

    add-long/2addr v12, v8

    sub-long/2addr v12, v10

    cmp-long v0, v3, v12

    if-gez v0, :cond_1

    :cond_0
    add-long/2addr v3, v10

    .line 814
    iget-object v0, v5, Lyads/hk0;->d:Lyads/qc0;

    iget-wide v8, v5, Lyads/hk0;->f:J

    sub-long/2addr v3, v8

    invoke-interface {v0, v3, v4}, Lyads/qc0;->a(J)J

    move-result-wide v3

    move-wide/from16 v16, v6

    move-wide v5, v3

    move-wide/from16 v3, v16

    :goto_2
    move-object/from16 v0, p3

    goto :goto_3

    :cond_1
    move-wide v3, v6

    move-wide v5, v3

    goto :goto_2

    .line 815
    :goto_3
    invoke-virtual/range {v0 .. v6}, Lyads/th5;->a(JJJ)J

    move-result-wide v0

    return-wide v0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v1, p1

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v1, p1

    goto :goto_0

    :cond_4
    return-wide p1
.end method

.method public final a([Lyads/er2;[Z[Lyads/mc5;[ZJ)J
    .locals 39

    move-object/from16 v5, p0

    move-object/from16 v13, p1

    array-length v15, v13

    new-array v0, v15, [I

    const/16 v16, 0x0

    move/from16 v1, v16

    :goto_0
    array-length v2, v13

    const/4 v3, -0x1

    if-ge v1, v2, :cond_2

    aget-object v2, v13, v1

    if-eqz v2, :cond_1

    iget-object v4, v5, Lyads/pc0;->k:Lyads/g06;

    invoke-interface {v2}, Lyads/er2;->c()Lyads/f06;

    move-result-object v2

    iget-object v4, v4, Lyads/g06;->c:Lyads/k55;

    invoke-virtual {v4, v2}, Lyads/oe3;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    move v3, v2

    :cond_0
    aput v3, v0, v1

    goto :goto_1

    :cond_1
    aput v3, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move/from16 v1, v16

    :goto_2
    array-length v2, v13

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    if-ge v1, v2, :cond_9

    aget-object v2, v13, v1

    if-eqz v2, :cond_3

    aget-boolean v2, p2, v1

    if-nez v2, :cond_8

    :cond_3
    aget-object v2, p3, v1

    instance-of v4, v2, Lyads/jz;

    if-eqz v4, :cond_5

    check-cast v2, Lyads/jz;

    iput-object v5, v2, Lyads/jz;->s:Lyads/pc0;

    iget-object v4, v2, Lyads/jz;->n:Lyads/lc5;

    invoke-virtual {v4}, Lyads/lc5;->a()V

    invoke-virtual {v4}, Lyads/lc5;->d()V

    iget-object v4, v2, Lyads/jz;->o:[Lyads/lc5;

    array-length v6, v4

    move/from16 v7, v16

    :goto_3
    if-ge v7, v6, :cond_4

    aget-object v8, v4, v7

    invoke-virtual {v8}, Lyads/lc5;->a()V

    invoke-virtual {v8}, Lyads/lc5;->d()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    iget-object v4, v2, Lyads/jz;->j:Lyads/ru3;

    invoke-virtual {v4, v2}, Lyads/ru3;->a(Lyads/ou3;)V

    goto :goto_4

    :cond_5
    instance-of v4, v2, Lyads/iz;

    if-eqz v4, :cond_7

    check-cast v2, Lyads/iz;

    iget-object v4, v2, Lyads/iz;->f:Lyads/jz;

    iget-object v4, v4, Lyads/jz;->e:[Z

    iget v2, v2, Lyads/iz;->d:I

    aget-boolean v6, v4, v2

    if-eqz v6, :cond_6

    aput-boolean v16, v4, v2

    goto :goto_4

    :cond_6
    invoke-static {}, Lud;->g()V

    return-wide v17

    :cond_7
    :goto_4
    aput-object v19, p3, v1

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    move/from16 v1, v16

    :goto_5
    array-length v2, v13

    const/4 v4, 0x1

    if-ge v1, v2, :cond_13

    aget-object v2, p3, v1

    instance-of v6, v2, Lyads/cn2;

    if-nez v6, :cond_a

    instance-of v2, v2, Lyads/iz;

    if-eqz v2, :cond_12

    :cond_a
    aget v2, v0, v1

    if-ne v2, v3, :cond_b

    goto :goto_7

    :cond_b
    iget-object v6, v5, Lyads/pc0;->l:[Lyads/oc0;

    aget-object v2, v6, v2

    iget v2, v2, Lyads/oc0;->e:I

    move/from16 v6, v16

    :goto_6
    if-ge v6, v15, :cond_d

    aget v7, v0, v6

    if-ne v7, v2, :cond_c

    iget-object v8, v5, Lyads/pc0;->l:[Lyads/oc0;

    aget-object v7, v8, v7

    iget v7, v7, Lyads/oc0;->c:I

    if-nez v7, :cond_c

    goto :goto_8

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_d
    :goto_7
    move v6, v3

    :goto_8
    if-ne v6, v3, :cond_e

    aget-object v2, p3, v1

    instance-of v4, v2, Lyads/cn2;

    goto :goto_9

    :cond_e
    aget-object v2, p3, v1

    instance-of v7, v2, Lyads/iz;

    if-eqz v7, :cond_f

    check-cast v2, Lyads/iz;

    iget-object v2, v2, Lyads/iz;->b:Lyads/jz;

    aget-object v6, p3, v6

    if-ne v2, v6, :cond_f

    goto :goto_9

    :cond_f
    move/from16 v4, v16

    :goto_9
    if-nez v4, :cond_12

    aget-object v2, p3, v1

    instance-of v4, v2, Lyads/iz;

    if-eqz v4, :cond_11

    check-cast v2, Lyads/iz;

    iget-object v4, v2, Lyads/iz;->f:Lyads/jz;

    iget-object v4, v4, Lyads/jz;->e:[Z

    iget v2, v2, Lyads/iz;->d:I

    aget-boolean v6, v4, v2

    if-eqz v6, :cond_10

    aput-boolean v16, v4, v2

    goto :goto_a

    :cond_10
    invoke-static {}, Lud;->g()V

    return-wide v17

    :cond_11
    :goto_a
    aput-object v19, p3, v1

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_13
    move/from16 v1, v16

    :goto_b
    array-length v2, v13

    if-ge v1, v2, :cond_20

    aget-object v27, v13, v1

    if-nez v27, :cond_14

    move-wide/from16 v7, p5

    move-object/from16 v37, v0

    move/from16 v38, v1

    move/from16 v20, v15

    move v15, v4

    goto/16 :goto_14

    :cond_14
    aget-object v2, p3, v1

    if-nez v2, :cond_1e

    aput-boolean v4, p4, v1

    aget v2, v0, v1

    iget-object v6, v5, Lyads/pc0;->l:[Lyads/oc0;

    aget-object v2, v6, v2

    iget v6, v2, Lyads/oc0;->c:I

    if-nez v6, :cond_1d

    iget v6, v2, Lyads/oc0;->f:I

    if-eq v6, v3, :cond_15

    move/from16 v33, v4

    goto :goto_c

    :cond_15
    move/from16 v33, v16

    :goto_c
    if-eqz v33, :cond_16

    iget-object v7, v5, Lyads/pc0;->k:Lyads/g06;

    invoke-virtual {v7, v6}, Lyads/g06;->a(I)Lyads/f06;

    move-result-object v6

    move v7, v4

    goto :goto_d

    :cond_16
    move/from16 v7, v16

    move-object/from16 v6, v19

    :goto_d
    iget v8, v2, Lyads/oc0;->g:I

    if-eq v8, v3, :cond_17

    move v9, v4

    goto :goto_e

    :cond_17
    move/from16 v9, v16

    :goto_e
    if-eqz v9, :cond_18

    iget-object v10, v5, Lyads/pc0;->k:Lyads/g06;

    invoke-virtual {v10, v8}, Lyads/g06;->a(I)Lyads/f06;

    move-result-object v8

    iget v10, v8, Lyads/f06;->b:I

    add-int/2addr v7, v10

    :goto_f
    move v10, v3

    goto :goto_10

    :cond_18
    move-object/from16 v8, v19

    goto :goto_f

    :goto_10
    new-array v3, v7, [Lyads/vz2;

    new-array v7, v7, [I

    if-eqz v33, :cond_19

    iget-object v6, v6, Lyads/f06;->e:[Lyads/vz2;

    aget-object v6, v6, v16

    aput-object v6, v3, v16

    const/4 v6, 0x5

    aput v6, v7, v16

    move v6, v4

    goto :goto_11

    :cond_19
    move/from16 v6, v16

    :goto_11
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    if-eqz v9, :cond_1a

    move/from16 v9, v16

    :goto_12
    iget v12, v8, Lyads/f06;->b:I

    if-ge v9, v12, :cond_1a

    iget-object v12, v8, Lyads/f06;->e:[Lyads/vz2;

    aget-object v12, v12, v9

    aput-object v12, v3, v6

    const/16 v20, 0x3

    aput v20, v7, v6

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v6, v4

    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    :cond_1a
    iget-object v6, v5, Lyads/pc0;->w:Lyads/kc0;

    iget-boolean v6, v6, Lyads/kc0;->d:Z

    if-eqz v6, :cond_1b

    if-eqz v33, :cond_1b

    iget-object v6, v5, Lyads/pc0;->n:Lyads/ow4;

    new-instance v8, Lyads/nw4;

    iget-object v9, v6, Lyads/ow4;->b:Lyads/aj0;

    invoke-direct {v8, v6, v9}, Lyads/nw4;-><init>(Lyads/ow4;Lyads/aj0;)V

    move-object/from16 v35, v8

    goto :goto_13

    :cond_1b
    move-object/from16 v35, v19

    :goto_13
    iget-object v6, v5, Lyads/pc0;->c:Lyads/gk0;

    iget-object v8, v5, Lyads/pc0;->i:Lyads/su3;

    iget-object v9, v5, Lyads/pc0;->w:Lyads/kc0;

    iget-object v12, v5, Lyads/pc0;->g:Lyads/ns;

    iget v4, v5, Lyads/pc0;->x:I

    iget-object v10, v2, Lyads/oc0;->a:[I

    move-object/from16 v37, v0

    iget v0, v2, Lyads/oc0;->b:I

    move/from16 v28, v0

    move/from16 v38, v1

    iget-wide v0, v5, Lyads/pc0;->h:J

    move-wide/from16 v30, v0

    iget-object v0, v5, Lyads/pc0;->d:Lyads/p16;

    iget-object v1, v5, Lyads/pc0;->r:Lyads/rw4;

    move-object/from16 v36, v1

    iget-object v1, v6, Lyads/gk0;->a:Lyads/vc0;

    invoke-interface {v1}, Lyads/vc0;->a()Lyads/wc0;

    move-result-object v1

    if-eqz v0, :cond_1c

    invoke-interface {v1, v0}, Lyads/wc0;->a(Lyads/p16;)V

    :cond_1c
    new-instance v20, Lyads/jk0;

    iget-object v0, v6, Lyads/gk0;->c:Lyads/dz;

    iget v6, v6, Lyads/gk0;->b:I

    move-object/from16 v21, v0

    move-object/from16 v29, v1

    move/from16 v25, v4

    move/from16 v32, v6

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v26, v10

    move-object/from16 v34, v11

    move-object/from16 v24, v12

    invoke-direct/range {v20 .. v36}, Lyads/jk0;-><init>(Lyads/dz;Lyads/su3;Lyads/kc0;Lyads/ns;I[ILyads/er2;ILyads/wc0;JIZLjava/util/ArrayList;Lyads/nw4;Lyads/rw4;)V

    new-instance v0, Lyads/jz;

    iget v1, v2, Lyads/oc0;->b:I

    iget-object v6, v5, Lyads/pc0;->j:Lyads/aj0;

    iget-object v9, v5, Lyads/pc0;->e:Lyads/xl2;

    iget-object v10, v5, Lyads/pc0;->q:Lyads/tl2;

    iget-object v11, v5, Lyads/pc0;->f:Lyads/ll0;

    iget-object v12, v5, Lyads/pc0;->p:Lyads/k14;

    move-object v2, v7

    move-object/from16 v4, v20

    move-object/from16 v14, v35

    move-wide/from16 v7, p5

    move/from16 v20, v15

    const/4 v15, 0x1

    invoke-direct/range {v0 .. v12}, Lyads/jz;-><init>(I[I[Lyads/vz2;Lyads/jk0;Lyads/pc0;Lyads/aj0;JLyads/xl2;Lyads/tl2;Lyads/ll0;Lyads/k14;)V

    monitor-enter p0

    :try_start_0
    iget-object v1, v5, Lyads/pc0;->o:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, v0, v14}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    aput-object v0, p3, v38

    goto :goto_14

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1d
    move-wide/from16 v7, p5

    move-object/from16 v37, v0

    move/from16 v38, v1

    move/from16 v20, v15

    move-object/from16 v0, v27

    move v15, v4

    const/4 v1, 0x2

    if-ne v6, v1, :cond_1f

    iget-object v1, v5, Lyads/pc0;->y:Ljava/util/List;

    iget v2, v2, Lyads/oc0;->d:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/ip2;

    invoke-interface {v0}, Lyads/er2;->c()Lyads/f06;

    move-result-object v0

    iget-object v0, v0, Lyads/f06;->e:[Lyads/vz2;

    aget-object v0, v0, v16

    new-instance v2, Lyads/hp2;

    iget-object v3, v5, Lyads/pc0;->w:Lyads/kc0;

    iget-boolean v3, v3, Lyads/kc0;->d:Z

    invoke-direct {v2, v1, v0, v3}, Lyads/hp2;-><init>(Lyads/ip2;Lyads/vz2;Z)V

    aput-object v2, p3, v38

    goto :goto_14

    :cond_1e
    move-wide/from16 v7, p5

    move-object/from16 v37, v0

    move/from16 v38, v1

    move/from16 v20, v15

    move-object/from16 v0, v27

    move v15, v4

    instance-of v1, v2, Lyads/jz;

    if-eqz v1, :cond_1f

    check-cast v2, Lyads/jz;

    iget-object v1, v2, Lyads/jz;->f:Lyads/jk0;

    iput-object v0, v1, Lyads/jk0;->j:Lyads/er2;

    :cond_1f
    :goto_14
    add-int/lit8 v1, v38, 0x1

    move v4, v15

    move/from16 v15, v20

    move-object/from16 v0, v37

    const/4 v3, -0x1

    goto/16 :goto_b

    :cond_20
    move-wide/from16 v7, p5

    move-object/from16 v37, v0

    move/from16 v20, v15

    move v15, v4

    move/from16 v0, v16

    :goto_15
    array-length v1, v13

    if-ge v0, v1, :cond_29

    aget-object v1, p3, v0

    if-nez v1, :cond_28

    aget-object v1, v13, v0

    if-eqz v1, :cond_28

    aget v1, v37, v0

    iget-object v2, v5, Lyads/pc0;->l:[Lyads/oc0;

    aget-object v2, v2, v1

    iget v3, v2, Lyads/oc0;->c:I

    if-ne v3, v15, :cond_28

    const/4 v10, -0x1

    if-ne v1, v10, :cond_21

    move/from16 v4, v20

    goto :goto_18

    :cond_21
    iget v1, v2, Lyads/oc0;->e:I

    move/from16 v3, v16

    move/from16 v4, v20

    :goto_16
    if-ge v3, v4, :cond_23

    aget v6, v37, v3

    if-ne v6, v1, :cond_22

    iget-object v9, v5, Lyads/pc0;->l:[Lyads/oc0;

    aget-object v6, v9, v6

    iget v6, v6, Lyads/oc0;->c:I

    if-nez v6, :cond_22

    :goto_17
    const/4 v10, -0x1

    goto :goto_19

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_23
    :goto_18
    const/4 v3, -0x1

    goto :goto_17

    :goto_19
    if-ne v3, v10, :cond_24

    new-instance v1, Lyads/cn2;

    invoke-direct {v1}, Lyads/cn2;-><init>()V

    aput-object v1, p3, v0

    goto :goto_1b

    :cond_24
    aget-object v1, p3, v3

    check-cast v1, Lyads/jz;

    iget v2, v2, Lyads/oc0;->b:I

    move/from16 v3, v16

    :goto_1a
    iget-object v6, v1, Lyads/jz;->o:[Lyads/lc5;

    array-length v9, v6

    if-ge v3, v9, :cond_27

    iget-object v9, v1, Lyads/jz;->c:[I

    aget v9, v9, v3

    if-ne v9, v2, :cond_26

    iget-object v2, v1, Lyads/jz;->e:[Z

    aget-boolean v9, v2, v3

    if-nez v9, :cond_25

    aput-boolean v15, v2, v3

    aget-object v2, v6, v3

    invoke-virtual {v2, v7, v8, v15}, Lyads/lc5;->c(JZ)Z

    new-instance v2, Lyads/iz;

    iget-object v6, v1, Lyads/jz;->o:[Lyads/lc5;

    aget-object v6, v6, v3

    invoke-direct {v2, v1, v1, v6, v3}, Lyads/iz;-><init>(Lyads/jz;Lyads/jz;Lyads/lc5;I)V

    aput-object v2, p3, v0

    goto :goto_1b

    :cond_25
    invoke-static {}, Lud;->g()V

    return-wide v17

    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_27
    invoke-static {}, Lud;->g()V

    return-wide v17

    :cond_28
    move/from16 v4, v20

    const/4 v10, -0x1

    :goto_1b
    add-int/lit8 v0, v0, 0x1

    move/from16 v20, v4

    goto :goto_15

    :cond_29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v14, p3

    array-length v2, v14

    move/from16 v3, v16

    :goto_1c
    if-ge v3, v2, :cond_2c

    aget-object v4, v14, v3

    instance-of v6, v4, Lyads/jz;

    if-eqz v6, :cond_2a

    check-cast v4, Lyads/jz;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_2a
    instance-of v6, v4, Lyads/hp2;

    if-eqz v6, :cond_2b

    check-cast v4, Lyads/hp2;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    :goto_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_2c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lyads/jz;

    iput-object v2, v5, Lyads/pc0;->t:[Lyads/jz;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lyads/hp2;

    iput-object v0, v5, Lyads/pc0;->u:[Lyads/hp2;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v0, v5, Lyads/pc0;->m:Lyads/dk0;

    iget-object v1, v5, Lyads/pc0;->t:[Lyads/jz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lyads/i50;

    invoke-direct {v0, v1}, Lyads/i50;-><init>([Lyads/ui5;)V

    iput-object v0, v5, Lyads/pc0;->v:Lyads/i50;

    return-wide v7
.end method

.method public final a(J)V
    .locals 10

    .line 784
    iget-object p0, p0, Lyads/pc0;->t:[Lyads/jz;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_6

    aget-object v3, p0, v2

    .line 785
    invoke-virtual {v3}, Lyads/jz;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_3

    .line 786
    :cond_0
    iget-object v4, v3, Lyads/jz;->n:Lyads/lc5;

    .line 787
    iget v5, v4, Lyads/lc5;->q:I

    const/4 v6, 0x1

    .line 788
    invoke-virtual {v4, p1, p2, v6}, Lyads/lc5;->a(JZ)V

    .line 789
    iget-object v4, v3, Lyads/jz;->n:Lyads/lc5;

    .line 790
    iget v6, v4, Lyads/lc5;->q:I

    if-le v6, v5, :cond_2

    .line 791
    monitor-enter v4

    .line 792
    :try_start_0
    iget v5, v4, Lyads/lc5;->p:I

    if-nez v5, :cond_1

    const-wide/high16 v7, -0x8000000000000000L

    goto :goto_1

    :cond_1
    iget-object v5, v4, Lyads/lc5;->n:[J

    iget v7, v4, Lyads/lc5;->r:I

    aget-wide v7, v5, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v4

    move v4, v1

    .line 793
    :goto_2
    iget-object v5, v3, Lyads/jz;->o:[Lyads/lc5;

    array-length v9, v5

    if-ge v4, v9, :cond_2

    .line 794
    aget-object v5, v5, v4

    iget-object v9, v3, Lyads/jz;->e:[Z

    aget-boolean v9, v9, v4

    invoke-virtual {v5, v7, v8, v9}, Lyads/lc5;->a(JZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 795
    monitor-exit v4

    throw p0

    .line 796
    :cond_2
    invoke-virtual {v3, v6, v1}, Lyads/jz;->a(II)I

    move-result v4

    .line 797
    iget v5, v3, Lyads/jz;->v:I

    .line 798
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-lez v4, :cond_5

    .line 799
    iget-object v5, v3, Lyads/jz;->l:Ljava/util/ArrayList;

    sget v6, Lyads/u56;->a:I

    .line 800
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-gt v4, v6, :cond_4

    if-ltz v4, :cond_4

    if-eqz v4, :cond_3

    .line 801
    invoke-interface {v5, v1, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 802
    :cond_3
    iget v5, v3, Lyads/jz;->v:I

    sub-int/2addr v5, v4

    iput v5, v3, Lyads/jz;->v:I

    goto :goto_3

    .line 803
    :cond_4
    invoke-static {}, Lmi2;->b()V

    return-void

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public final a(Lyads/ui5;)V
    .locals 0

    .line 816
    iget-object p1, p0, Lyads/pc0;->s:Lyads/y04;

    invoke-interface {p1, p0}, Lyads/ti5;->a(Lyads/ui5;)V

    return-void
.end method

.method public final a(Lyads/y04;J)V
    .locals 0

    .line 817
    iput-object p1, p0, Lyads/pc0;->s:Lyads/y04;

    .line 818
    invoke-interface {p1, p0}, Lyads/y04;->a(Lyads/z04;)V

    return-void
.end method

.method public final c(J)Z
    .locals 0

    iget-object p0, p0, Lyads/pc0;->v:Lyads/i50;

    invoke-virtual {p0, p1, p2}, Lyads/i50;->c(J)Z

    move-result p0

    return p0
.end method

.method public final getBufferedPositionUs()J
    .locals 2

    iget-object p0, p0, Lyads/pc0;->v:Lyads/i50;

    invoke-virtual {p0}, Lyads/i50;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getNextLoadPositionUs()J
    .locals 2

    iget-object p0, p0, Lyads/pc0;->v:Lyads/i50;

    invoke-virtual {p0}, Lyads/i50;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getTrackGroups()Lyads/g06;
    .locals 0

    iget-object p0, p0, Lyads/pc0;->k:Lyads/g06;

    return-object p0
.end method

.method public final isLoading()Z
    .locals 0

    iget-object p0, p0, Lyads/pc0;->v:Lyads/i50;

    invoke-virtual {p0}, Lyads/i50;->isLoading()Z

    move-result p0

    return p0
.end method

.method public final maybeThrowPrepareError()V
    .locals 0

    iget-object p0, p0, Lyads/pc0;->i:Lyads/su3;

    invoke-interface {p0}, Lyads/su3;->a()V

    return-void
.end method

.method public final readDiscontinuity()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final reevaluateBuffer(J)V
    .locals 0

    iget-object p0, p0, Lyads/pc0;->v:Lyads/i50;

    invoke-virtual {p0, p1, p2}, Lyads/i50;->reevaluateBuffer(J)V

    return-void
.end method

.method public final seekToUs(J)J
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Lyads/pc0;->t:[Lyads/jz;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/4 v9, 0x1

    if-ge v6, v4, :cond_d

    aget-object v10, v3, v6

    iput-wide v1, v10, Lyads/jz;->u:J

    invoke-virtual {v10}, Lyads/jz;->d()Z

    move-result v11

    if-eqz v11, :cond_0

    iput-wide v1, v10, Lyads/jz;->t:J

    goto/16 :goto_b

    :cond_0
    move v11, v5

    :goto_1
    iget-object v12, v10, Lyads/jz;->l:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x0

    if-ge v11, v12, :cond_3

    iget-object v12, v10, Lyads/jz;->l:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lyads/zr;

    iget-wide v14, v12, Lyads/cz;->g:J

    cmp-long v14, v14, v1

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v14, :cond_1

    iget-wide v7, v12, Lyads/zr;->k:J

    cmp-long v7, v7, v15

    if-nez v7, :cond_1

    goto :goto_3

    :cond_1
    if-lez v14, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    move-object v12, v13

    :goto_3
    iget-object v7, v10, Lyads/jz;->n:Lyads/lc5;

    if-eqz v12, :cond_6

    invoke-virtual {v12, v5}, Lyads/zr;->a(I)I

    move-result v8

    monitor-enter v7

    :try_start_0
    invoke-virtual {v7}, Lyads/lc5;->e()V

    iget v11, v7, Lyads/lc5;->q:I

    if-lt v8, v11, :cond_5

    iget v12, v7, Lyads/lc5;->p:I

    add-int/2addr v12, v11

    if-le v8, v12, :cond_4

    goto :goto_4

    :cond_4
    const-wide/high16 v14, -0x8000000000000000L

    iput-wide v14, v7, Lyads/lc5;->t:J

    sub-int/2addr v8, v11

    iput v8, v7, Lyads/lc5;->s:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    move v7, v9

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_5
    :goto_4
    monitor-exit v7

    move v7, v5

    goto :goto_7

    :goto_5
    monitor-exit v7

    throw v0

    :cond_6
    invoke-virtual {v10}, Lyads/jz;->getNextLoadPositionUs()J

    move-result-wide v11

    cmp-long v8, v1, v11

    if-gez v8, :cond_7

    move v8, v9

    goto :goto_6

    :cond_7
    move v8, v5

    :goto_6
    invoke-virtual {v7, v1, v2, v8}, Lyads/lc5;->c(JZ)Z

    move-result v7

    :goto_7
    if-eqz v7, :cond_8

    iget-object v7, v10, Lyads/jz;->n:Lyads/lc5;

    iget v8, v7, Lyads/lc5;->q:I

    iget v7, v7, Lyads/lc5;->s:I

    add-int/2addr v8, v7

    invoke-virtual {v10, v8, v5}, Lyads/jz;->a(II)I

    move-result v7

    iput v7, v10, Lyads/jz;->v:I

    iget-object v7, v10, Lyads/jz;->o:[Lyads/lc5;

    array-length v8, v7

    move v10, v5

    :goto_8
    if-ge v10, v8, :cond_c

    aget-object v11, v7, v10

    invoke-virtual {v11, v1, v2, v9}, Lyads/lc5;->c(JZ)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_8
    iput-wide v1, v10, Lyads/jz;->t:J

    iput-boolean v5, v10, Lyads/jz;->x:Z

    iget-object v7, v10, Lyads/jz;->l:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iput v5, v10, Lyads/jz;->v:I

    iget-object v7, v10, Lyads/jz;->j:Lyads/ru3;

    invoke-virtual {v7}, Lyads/ru3;->b()Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, v10, Lyads/jz;->n:Lyads/lc5;

    invoke-virtual {v7}, Lyads/lc5;->a()V

    iget-object v7, v10, Lyads/jz;->o:[Lyads/lc5;

    array-length v8, v7

    move v9, v5

    :goto_9
    if-ge v9, v8, :cond_9

    aget-object v11, v7, v9

    invoke-virtual {v11}, Lyads/lc5;->a()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_9
    iget-object v7, v10, Lyads/jz;->j:Lyads/ru3;

    iget-object v7, v7, Lyads/ru3;->b:Lyads/mu3;

    if-eqz v7, :cond_a

    invoke-virtual {v7, v5}, Lyads/mu3;->a(Z)V

    goto :goto_b

    :cond_a
    invoke-static {}, Lud;->g()V

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_b
    iget-object v7, v10, Lyads/jz;->j:Lyads/ru3;

    iput-object v13, v7, Lyads/ru3;->c:Ljava/io/IOException;

    iget-object v7, v10, Lyads/jz;->n:Lyads/lc5;

    invoke-virtual {v7, v5}, Lyads/lc5;->b(Z)V

    iget-object v7, v10, Lyads/jz;->o:[Lyads/lc5;

    array-length v8, v7

    move v9, v5

    :goto_a
    if-ge v9, v8, :cond_c

    aget-object v10, v7, v9

    invoke-virtual {v10, v5}, Lyads/lc5;->b(Z)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_c
    :goto_b
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_d
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v0, v0, Lyads/pc0;->u:[Lyads/hp2;

    array-length v3, v0

    :goto_c
    if-ge v5, v3, :cond_f

    aget-object v4, v0, v5

    iget-object v6, v4, Lyads/hp2;->d:[J

    invoke-static {v6, v1, v2, v9}, Lyads/u56;->a([JJZ)I

    move-result v6

    iput v6, v4, Lyads/hp2;->h:I

    iget-boolean v7, v4, Lyads/hp2;->e:Z

    if-eqz v7, :cond_e

    iget-object v7, v4, Lyads/hp2;->d:[J

    array-length v7, v7

    if-ne v6, v7, :cond_e

    move-wide v6, v1

    goto :goto_d

    :cond_e
    move-wide v6, v15

    :goto_d
    iput-wide v6, v4, Lyads/hp2;->i:J

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_f
    return-wide v1
.end method
