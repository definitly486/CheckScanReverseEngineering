.class public final Lyads/ff0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/n64;

.field public final b:Lyads/y64;

.field public final c:Lyads/te0;

.field public final d:Lyads/v64;


# direct methods
.method public constructor <init>(Lyads/n64;Lyads/y64;Lyads/te0;Lyads/v64;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ff0;->a:Lyads/n64;

    iput-object p2, p0, Lyads/ff0;->b:Lyads/y64;

    iput-object p3, p0, Lyads/ff0;->c:Lyads/te0;

    iput-object p4, p0, Lyads/ff0;->d:Lyads/v64;

    return-void
.end method


# virtual methods
.method public final a(Lyads/vf0;Lyads/dg0;)Lyads/ef0;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v3, Lkx2;->b:Lkx2;

    if-eqz v2, :cond_0

    iget-object v4, v2, Lyads/dg0;->g:Ljava/util/List;

    if-nez v4, :cond_1

    :cond_0
    move-object v4, v3

    :cond_1
    new-instance v5, Lyads/ef0;

    iget-object v6, v1, Lyads/vf0;->a:Lyads/we0;

    iget-object v7, v1, Lyads/vf0;->b:Lyads/ng0;

    new-instance v8, Lyads/ld0;

    if-eqz v2, :cond_2

    iget-object v10, v2, Lyads/dg0;->a:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    :goto_0
    if-eqz v2, :cond_3

    iget-object v11, v2, Lyads/dg0;->d:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    :goto_1
    if-eqz v2, :cond_4

    iget-object v12, v2, Lyads/dg0;->c:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const/4 v12, 0x0

    :goto_2
    invoke-direct {v8, v10, v11, v12}, Lyads/ld0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v1, Lyads/vf0;->c:Ljava/util/ArrayList;

    iget-object v11, v0, Lyads/ff0;->b:Lyads/y64;

    invoke-virtual {v11, v4}, Lyads/y64;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_5

    goto :goto_3

    :cond_5
    move-object v10, v11

    :goto_3
    new-instance v11, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v10, v12}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v11, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_12

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lyads/m64;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    move-object v9, v15

    check-cast v9, Lyads/ag0;

    iget-object v9, v9, Lyads/ag0;->b:Ljava/lang/String;

    iget-object v12, v13, Lyads/m64;->a:Ljava/lang/String;

    invoke-static {v9, v12}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_6

    :cond_6
    const/16 v12, 0xa

    goto :goto_5

    :cond_7
    const/4 v15, 0x0

    :goto_6
    check-cast v15, Lyads/ag0;

    iget-object v9, v0, Lyads/ff0;->a:Lyads/n64;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13}, Lyads/n64;->a(Lyads/m64;)Z

    move-result v20

    iget-object v9, v0, Lyads/ff0;->d:Lyads/v64;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v13, Lyads/m64;->d:Ljava/util/List;

    instance-of v12, v9, Ljava/util/Collection;

    if-eqz v12, :cond_8

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_8

    goto :goto_a

    :cond_8
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lyads/l64;

    iget-boolean v12, v12, Lyads/l64;->c:Z

    const/4 v14, 0x1

    if-ne v12, v14, :cond_9

    goto :goto_7

    :cond_9
    iget-object v9, v13, Lyads/m64;->d:Ljava/util/List;

    instance-of v12, v9, Ljava/util/Collection;

    if-eqz v12, :cond_a

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_a

    goto :goto_9

    :cond_a
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lyads/l64;

    iget-boolean v12, v12, Lyads/l64;->c:Z

    if-eqz v12, :cond_b

    new-instance v9, Lyads/ie0;

    sget-object v12, Lyads/o64;->b:Lyads/o64;

    invoke-direct {v9}, Lyads/ie0;-><init>()V

    :goto_8
    move-object/from16 v24, v9

    goto :goto_b

    :cond_c
    :goto_9
    sget-object v9, Lyads/je0;->a:Lyads/je0;

    goto :goto_8

    :cond_d
    :goto_a
    sget-object v9, Lyads/he0;->a:Lyads/he0;

    goto :goto_8

    :goto_b
    iget-object v9, v13, Lyads/m64;->a:Ljava/lang/String;

    if-eqz v15, :cond_e

    iget-object v12, v15, Lyads/ag0;->c:Ljava/lang/String;

    move-object/from16 v19, v12

    goto :goto_c

    :cond_e
    const/16 v19, 0x0

    :goto_c
    iget-object v12, v13, Lyads/m64;->d:Ljava/util/List;

    invoke-static {v12}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lyads/l64;

    if-eqz v12, :cond_f

    iget-object v12, v12, Lyads/l64;->b:Ljava/lang/String;

    move-object/from16 v21, v12

    goto :goto_d

    :cond_f
    const/16 v21, 0x0

    :goto_d
    if-eqz v15, :cond_10

    iget-object v12, v15, Lyads/ag0;->f:Ljava/lang/String;

    move-object/from16 v22, v12

    goto :goto_e

    :cond_10
    const/16 v22, 0x0

    :goto_e
    iget-object v12, v13, Lyads/m64;->c:Ljava/lang/String;

    iget-object v13, v13, Lyads/m64;->d:Ljava/util/List;

    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v26, v3

    const/16 v15, 0xa

    invoke-static {v13, v15}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v14, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lyads/l64;

    iget-object v13, v13, Lyads/l64;->a:Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_11
    new-instance v17, Lyads/le0;

    move-object/from16 v18, v9

    move-object/from16 v23, v12

    move-object/from16 v25, v14

    invoke-direct/range {v17 .. v25}, Lyads/le0;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lyads/ke0;Ljava/util/ArrayList;)V

    move-object/from16 v3, v17

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v26

    const/16 v12, 0xa

    goto/16 :goto_4

    :cond_12
    move-object/from16 v26, v3

    new-instance v9, Lyads/ne0;

    invoke-direct {v9, v11}, Lyads/ne0;-><init>(Ljava/util/ArrayList;)V

    iget-object v10, v1, Lyads/vf0;->d:Lyads/df0;

    iget-object v11, v1, Lyads/vf0;->e:Lyads/of0;

    if-eqz v2, :cond_14

    iget-object v1, v2, Lyads/dg0;->f:Ljava/util/List;

    if-nez v1, :cond_13

    goto :goto_10

    :cond_13
    move-object v12, v1

    goto :goto_11

    :cond_14
    :goto_10
    move-object/from16 v12, v26

    :goto_11
    iget-object v0, v0, Lyads/ff0;->c:Lyads/te0;

    if-eqz v2, :cond_15

    iget-object v1, v2, Lyads/dg0;->e:Ljava/util/List;

    goto :goto_12

    :cond_15
    const/4 v1, 0x0

    :goto_12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_1d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lyads/qe0;

    iget-object v4, v3, Lyads/qe0;->a:Ljava/lang/String;

    if-nez v4, :cond_17

    iget-object v3, v3, Lyads/qe0;->b:Ljava/lang/String;

    if-eqz v3, :cond_16

    :cond_17
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_18
    new-instance v3, Ljava/util/ArrayList;

    const/16 v15, 0xa

    invoke-static {v0, v15}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/qe0;

    new-instance v2, Lyads/se0;

    iget-object v4, v1, Lyads/qe0;->a:Ljava/lang/String;

    iget-object v13, v1, Lyads/qe0;->b:Ljava/lang/String;

    invoke-static {}, Lyads/re0;->values()[Lyads/re0;

    move-result-object v14

    array-length v15, v14

    const/16 v16, 0x0

    move-object/from16 p0, v0

    move/from16 v0, v16

    :goto_15
    if-ge v0, v15, :cond_1a

    move/from16 v16, v0

    aget-object v0, v14, v16

    move-object/from16 v17, v5

    iget-object v5, v1, Lyads/qe0;->c:Ljava/lang/String;

    move-object/from16 p1, v1

    iget-object v1, v0, Lyads/re0;->b:Ljava/lang/String;

    invoke-static {v5, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_16

    :cond_19
    add-int/lit8 v0, v16, 0x1

    move-object/from16 v1, p1

    move-object/from16 v5, v17

    goto :goto_15

    :cond_1a
    move-object/from16 v17, v5

    const/4 v0, 0x0

    :goto_16
    if-nez v0, :cond_1b

    sget-object v0, Lyads/re0;->c:Lyads/re0;

    :cond_1b
    invoke-direct {v2, v4, v13, v0}, Lyads/se0;-><init>(Ljava/lang/String;Ljava/lang/String;Lyads/re0;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v5, v17

    goto :goto_14

    :cond_1c
    move-object v13, v3

    goto :goto_17

    :cond_1d
    move-object/from16 v13, v26

    :goto_17
    invoke-direct/range {v5 .. v13}, Lyads/ef0;-><init>(Lyads/we0;Lyads/ng0;Lyads/ld0;Lyads/ne0;Lyads/df0;Lyads/of0;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v17, v5

    return-object v17
.end method
