.class public final Lw66;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw66$a;
    }
.end annotation


# instance fields
.field public final a:Lf66;

.field public final b:Liw2;

.field public final c:Ljf6;

.field public final d:Lz68;

.field public final e:Lz68;

.field public final f:Lz68;


# direct methods
.method public constructor <init>(Lf66;Liw2;Ljf6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw66;->a:Lf66;

    iput-object p2, p0, Lw66;->b:Liw2;

    iput-object p3, p0, Lw66;->c:Ljf6;

    const/4 p1, 0x0

    invoke-static {p1}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Lw66;->d:Lz68;

    sget-object p1, Lkx2;->b:Lkx2;

    invoke-static {p1}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Lw66;->e:Lz68;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Lw66;->f:Lz68;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    iget-object v0, p0, Lw66;->e:Lz68;

    invoke-virtual {v0}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lf56;

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf56;

    iget-object v3, v3, Lf56;->e:Ljava/util/List;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lkn1;->r(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lw56;

    if-eqz v4, :cond_3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_6

    :cond_5
    move v1, v4

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lw56;

    invoke-interface {v5}, Lw56;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Lw56;->i()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    move v1, v3

    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    move v2, v4

    goto :goto_4

    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lw56;

    invoke-interface {v5}, Lw56;->j()Z

    move-result v5

    if-eqz v5, :cond_a

    move v2, v3

    :cond_b
    :goto_4
    iget-object v5, p0, Lw66;->f:Lz68;

    invoke-virtual {v5}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_c

    if-nez v2, :cond_c

    invoke-virtual {v0}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_c

    move v7, v3

    goto :goto_5

    :cond_c
    move v7, v4

    :goto_5
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    return-void
.end method

.method public final b(Ls56$a;)V
    .locals 25

    move-object/from16 v3, p1

    iget-object v12, v3, Ls56$a;->b:Ljava/lang/String;

    iget-object v13, v3, Ls56$a;->a:Ljava/lang/String;

    iget-object v9, v3, Ls56$a;->c:Ljava/lang/String;

    iget-object v14, v3, Ls56$a;->f:Ljava/util/List;

    :goto_0
    move-object/from16 v15, p0

    iget-object v0, v15, Lw66;->e:Lz68;

    invoke-virtual {v0}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/List;

    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-static {v4}, Lqn1;->v0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v6, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpz3;

    instance-of v10, v7, Lf56;

    if-eqz v10, :cond_0

    check-cast v7, Lf56;

    iget-object v7, v7, Lf56;->d:Ljava/lang/String;

    invoke-static {v7, v13}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v2, v6

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    :goto_2
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v6, Lf56;

    iget-object v7, v6, Lf56;->e:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Lpz3;

    instance-of v5, v8, Ls56;

    if-eqz v5, :cond_2

    check-cast v8, Ls56;

    iget-object v5, v8, Ls56;->f:Ljava/lang/String;

    invoke-static {v5, v12}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v11

    goto :goto_4

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, -0x1

    :goto_4
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v8, Ls56;

    iget-object v10, v8, Ls56;->c:Ls56$a;

    if-eqz v10, :cond_4

    iget-object v10, v10, Ls56$a;->f:Ljava/util/List;

    goto :goto_5

    :cond_4
    const/4 v10, 0x0

    :goto_5
    if-nez v10, :cond_5

    sget-object v10, Lkx2;->b:Lkx2;

    :cond_5
    iget-object v11, v8, Ls56;->a:Ljava/util/List;

    check-cast v11, Ljava/lang/Iterable;

    move-object/from16 v17, v1

    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v0, 0xa

    invoke-static {v11, v0}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ls56$a;

    move-object/from16 v19, v0

    iget-object v0, v11, Ls56$a;->c:Ljava/lang/String;

    invoke-static {v0, v9}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    invoke-static {v11, v0}, Ls56$a;->a(Ls56$a;Z)Ls56$a;

    move-result-object v0

    move-object v11, v0

    const/4 v0, 0x0

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    invoke-static {v11, v0}, Ls56$a;->a(Ls56$a;Z)Ls56$a;

    move-result-object v11

    :goto_7
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v19

    goto :goto_6

    :cond_7
    check-cast v7, Ljava/util/Collection;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v7, Lw66$b;

    invoke-direct {v7, v10}, Lw66$b;-><init>(Ljava/util/List;)V

    invoke-static {v7, v0}, Lnn1;->y(Lnl3;Ljava/util/List;)V

    move v7, v2

    iget-object v2, v8, Ls56;->b:Ljava/lang/String;

    move-object v10, v4

    iget-object v4, v8, Ls56;->d:Ljava/lang/String;

    move v11, v5

    iget-object v5, v8, Ls56;->e:Ljava/lang/Integer;

    move-object/from16 v16, v6

    iget-object v6, v8, Ls56;->f:Ljava/lang/String;

    move/from16 v19, v7

    iget-boolean v7, v8, Ls56;->g:Z

    move-object/from16 v20, v0

    iget-boolean v0, v8, Ls56;->h:Z

    move-object/from16 v21, v10

    iget-object v10, v8, Ls56;->j:Ljava/lang/String;

    iget-boolean v8, v8, Ls56;->k:Z

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v22, v11

    move v11, v8

    move v8, v0

    new-instance v0, Ls56;

    move-object/from16 v23, v12

    move-object/from16 v15, v16

    move-object/from16 v24, v18

    move/from16 v12, v22

    move-object/from16 v16, v13

    move-object/from16 v18, v17

    move-object/from16 v13, v20

    move-object/from16 v17, v14

    move/from16 v14, v19

    invoke-direct/range {v0 .. v11}, Ls56;-><init>(Ljava/util/List;Ljava/lang/String;Ls56$a;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v13, v12, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v12, 0x1

    move-object/from16 v0, v17

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v13, v5, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    sget-object v0, Lj59;->a:Lj59;

    invoke-static {v15, v13}, Lf56;->d(Lf56;Ljava/util/ArrayList;)Lf56;

    move-result-object v0

    move-object/from16 v10, v21

    invoke-virtual {v10, v14, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v1, v0, v10}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    move-object/from16 v3, p1

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    move-object/from16 v12, v23

    goto/16 :goto_0
.end method

.method public final c(Lj56;)V
    .locals 20

    move-object/from16 v0, p1

    iget-object v1, v0, Lj56;->b:Ljava/lang/String;

    iget-object v2, v0, Lj56;->c:Ljava/lang/String;

    iget-object v10, v0, Lj56;->d:Ljava/lang/String;

    iget-object v0, v0, Lj56;->f:Ljava/util/List;

    :goto_0
    move-object/from16 v12, p0

    iget-object v13, v12, Lw66;->e:Lz68;

    invoke-virtual {v13}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v14

    move-object v3, v14

    check-cast v3, Ljava/util/List;

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-static {v4}, Lqn1;->v0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpz3;

    instance-of v8, v6, Lf56;

    if-eqz v8, :cond_0

    check-cast v6, Lf56;

    iget-object v6, v6, Lf56;->d:Ljava/lang/String;

    invoke-static {v6, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v5

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, -0x1

    :goto_2
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v5, Lf56;

    iget-object v6, v5, Lf56;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpz3;

    instance-of v7, v11, Lo66;

    if-eqz v7, :cond_2

    check-cast v11, Lo66;

    iget-object v7, v11, Lo66;->d:Ljava/lang/String;

    invoke-static {v7, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v9

    goto :goto_4

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_3
    const/4 v7, -0x1

    :goto_4
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v8, Lo66;

    iget-object v9, v8, Lo66;->b:Ljava/util/List;

    check-cast v9, Ljava/lang/Iterable;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    const/16 v17, 0x0

    if-eqz v16, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Lj56;

    iget-boolean v4, v4, Lj56;->e:Z

    if-eqz v4, :cond_4

    goto :goto_5

    :cond_5
    move-object/from16 v16, v17

    :goto_5
    move-object/from16 v4, v16

    check-cast v4, Lj56;

    if-eqz v4, :cond_6

    iget-object v4, v4, Lj56;->f:Ljava/util/List;

    move-object/from16 v17, v4

    :cond_6
    if-nez v17, :cond_7

    sget-object v17, Lkx2;->b:Lkx2;

    :cond_7
    move-object v11, v5

    move-object/from16 v4, v17

    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const/16 v0, 0xa

    invoke-static {v9, v0}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lj56;

    move-object/from16 v17, v0

    iget-object v0, v9, Lj56;->d:Ljava/lang/String;

    invoke-static {v0, v10}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    invoke-static {v9, v0}, Lj56;->d(Lj56;Z)Lj56;

    move-result-object v0

    move-object v9, v0

    const/4 v0, 0x0

    goto :goto_7

    :cond_8
    const/4 v0, 0x0

    invoke-static {v9, v0}, Lj56;->d(Lj56;Z)Lj56;

    move-result-object v9

    :goto_7
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v17

    goto :goto_6

    :cond_9
    check-cast v6, Ljava/util/Collection;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v6, Lw66$c;

    invoke-direct {v6, v4}, Lw66$c;-><init>(Ljava/util/List;)V

    invoke-static {v6, v0}, Lnn1;->y(Lnl3;Ljava/util/List;)V

    iget-object v4, v8, Lo66;->a:Ljava/lang/String;

    iget-object v6, v8, Lo66;->c:Ljava/lang/String;

    move v9, v7

    iget-object v7, v8, Lo66;->d:Ljava/lang/String;

    move-object/from16 v17, v1

    iget-boolean v1, v8, Lo66;->e:Z

    move/from16 v18, v9

    iget-boolean v9, v8, Lo66;->f:Z

    iget-boolean v8, v8, Lo66;->h:Z

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v19, v3

    new-instance v3, Lo66;

    move/from16 v12, v18

    move-object/from16 v18, v2

    move-object v2, v11

    move v11, v8

    move v8, v1

    move/from16 v1, v19

    invoke-direct/range {v3 .. v11}, Lo66;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z)V

    invoke-virtual {v0, v12, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v12, 0x1

    move-object/from16 v3, v16

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v0, v7, v3}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    sget-object v3, Lj59;->a:Lj59;

    invoke-static {v2, v0}, Lf56;->d(Lf56;Ljava/util/ArrayList;)Lf56;

    move-result-object v0

    invoke-virtual {v15, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v13, v14, v15}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    goto/16 :goto_0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 20

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p0

    :cond_0
    iget-object v1, v0, Lw66;->e:Lz68;

    invoke-virtual {v1}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lqn1;->v0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpz3;

    instance-of v7, v6, Lf56;

    if-eqz v7, :cond_3

    check-cast v6, Lf56;

    iget-object v7, v6, Lf56;->e:Ljava/util/List;

    check-cast v7, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v7, v5}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lpz3;

    instance-of v10, v9, Lm56;

    if-eqz v10, :cond_1

    check-cast v9, Lm56;

    iget-object v11, v9, Lm56;->a:Ljava/lang/String;

    iget-boolean v12, v9, Lm56;->b:Z

    iget-boolean v13, v9, Lm56;->c:Z

    iget-object v14, v9, Lm56;->d:Ljava/lang/String;

    iget-object v15, v9, Lm56;->e:Ljava/lang/Integer;

    iget-object v10, v9, Lm56;->g:Ljava/lang/String;

    iget-boolean v5, v9, Lm56;->h:Z

    iget-object v9, v9, Lm56;->i:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v17, v10

    new-instance v10, Lm56;

    move-object/from16 v16, p1

    move/from16 v18, v5

    move-object/from16 v19, v9

    invoke-direct/range {v10 .. v19}, Lm56;-><init>(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    move-object v9, v10

    :cond_1
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v5, 0xa

    goto :goto_1

    :cond_2
    invoke-static {v6, v8}, Lf56;->d(Lf56;Ljava/util/ArrayList;)Lf56;

    move-result-object v6

    :cond_3
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v5, 0xa

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v2, v4}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lw66;->a()V

    return-void
.end method

.method public final e(ZLf02;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lz66;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lz66;

    iget v1, v0, Lz66;->p:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lz66;->p:I

    goto :goto_0

    :cond_0
    new-instance v0, Lz66;

    invoke-direct {v0, p0, p2}, Lz66;-><init>(Lw66;Lf02;)V

    :goto_0
    iget-object p2, v0, Lz66;->n:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lz66;->p:I

    iget-object v3, p0, Lw66;->e:Lz68;

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget p0, v0, Lz66;->m:I

    iget-object p1, v0, Lz66;->l:Ljava/util/ArrayList;

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_9

    invoke-virtual {v3}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-static {p2}, Lqn1;->v0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, -0x1

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpz3;

    instance-of v6, v6, Lv56;

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    move v5, v7

    :goto_2
    if-ne v5, v7, :cond_5

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_5
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Lv56;

    iget-object v6, p0, Lw66;->c:Ljf6;

    invoke-interface {v6}, Ljf6;->c0()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lw66;->b:Liw2;

    invoke-virtual {v7, v6}, Liw2;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v2, v2, Lv56;->f:Ljava/lang/String;

    if-nez v2, :cond_8

    iput-object p2, v0, Lz66;->l:Ljava/util/ArrayList;

    iput v5, v0, Lz66;->m:I

    iput v4, v0, Lz66;->p:I

    iget-object p0, p0, Lw66;->a:Lf66;

    invoke-interface {p0, p1, v0}, Lf66;->c(ZLf02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    return-object v1

    :cond_6
    move-object p1, p2

    move-object p2, p0

    move p0, v5

    :goto_3
    check-cast p2, Lyk6;

    invoke-virtual {p2}, Lyk6;->a()Lyk6$b;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lyk6$b;->a()Lv56;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_7
    move-object p2, p1

    :cond_8
    invoke-virtual {v3}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/util/List;

    invoke-virtual {v3, p0, p2}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_9
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final f(ZLf02;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p2, La76;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, La76;

    iget v1, v0, La76;->q:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, La76;->q:I

    goto :goto_0

    :cond_0
    new-instance v0, La76;

    invoke-direct {v0, p0, p2}, La76;-><init>(Lw66;Lf02;)V

    :goto_0
    iget-object p2, v0, La76;->o:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, La76;->q:I

    const/4 v3, 0x0

    iget-object v4, p0, Lw66;->e:Lz68;

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v5, :cond_1

    iget-boolean p1, v0, La76;->l:Z

    iget-object v2, v0, La76;->n:Ljava/lang/Object;

    iget-object v6, v0, La76;->m:Lxg5;

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    move-object v6, v4

    :cond_3
    invoke-interface {v6}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object p2, v2

    check-cast p2, Ljava/util/List;

    iput-object v6, v0, La76;->m:Lxg5;

    iput-object v2, v0, La76;->n:Ljava/lang/Object;

    iput-boolean p1, v0, La76;->l:Z

    iput v5, v0, La76;->q:I

    iget-object p2, p0, Lw66;->a:Lf66;

    invoke-interface {p2, p1, v0}, Lf66;->c(ZLf02;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p2, Lyk6;

    :cond_5
    iget-object v7, p0, Lw66;->d:Lz68;

    invoke-virtual {v7}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/a;

    invoke-virtual {p2}, Lyk6;->b()Lyk6$d;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Lyk6$d;->a()Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/a;

    move-result-object v9

    goto :goto_2

    :cond_6
    move-object v9, v3

    :goto_2
    invoke-virtual {v7, v8, v9}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p2}, Lyk6;->c()Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {v6, v2, p2}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {v4}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpz3;

    instance-of v0, p2, Lf56;

    if-eqz v0, :cond_7

    check-cast p2, Lf56;

    iget-object p2, p2, Lf56;->e:Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpz3;

    instance-of v1, v0, Ls56;

    if-eqz v1, :cond_9

    move-object v1, v0

    check-cast v1, Ls56;

    iget-object v1, v1, Ls56;->c:Ls56$a;

    if-eqz v1, :cond_9

    invoke-virtual {p0, v1}, Lw66;->b(Ls56$a;)V

    :cond_9
    instance-of v1, v0, Lo66;

    if-eqz v1, :cond_8

    check-cast v0, Lo66;

    iget-object v0, v0, Lo66;->b:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lj56;

    iget-boolean v2, v2, Lj56;->e:Z

    if-eqz v2, :cond_a

    goto :goto_4

    :cond_b
    move-object v1, v3

    :goto_4
    check-cast v1, Lj56;

    if-eqz v1, :cond_8

    invoke-virtual {p0, v1}, Lw66;->c(Lj56;)V

    goto :goto_3

    :cond_c
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final g(ILjava/lang/String;Lf02;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p3, Lb76;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lb76;

    iget v1, v0, Lb76;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lb76;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Lb76;

    invoke-direct {v0, p0, p3}, Lb76;-><init>(Lw66;Lf02;)V

    :goto_0
    iget-object p3, v0, Lb76;->m:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lb76;->o:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p2, v0, Lb76;->l:Ljava/lang/String;

    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    iput-object p2, v0, Lb76;->l:Ljava/lang/String;

    iput v3, v0, Lb76;->o:I

    iget-object p3, p0, Lw66;->a:Lf66;

    invoke-interface {p3, p1, p2, v0}, Lf66;->a(ILjava/lang/String;Lf02;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, La89;

    iget-object p1, p3, La89;->a:La89$a;

    sget-object p3, La89$a;->Success:La89$a;

    if-ne p1, p3, :cond_4

    invoke-virtual {p0, p2}, Lw66;->d(Ljava/lang/String;)V

    :cond_4
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final h(ZLf02;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lc76;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lc76;

    iget v3, v2, Lc76;->n:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lc76;->n:I

    goto :goto_0

    :cond_0
    new-instance v2, Lc76;

    invoke-direct {v2, v0, v1}, Lc76;-><init>(Lw66;Lf02;)V

    :goto_0
    iget-object v1, v2, Lc76;->l:Ljava/lang/Object;

    sget-object v3, La32;->COROUTINE_SUSPENDED:La32;

    iget v4, v2, Lc76;->n:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_2
    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    iput v5, v2, Lc76;->n:I

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lw66;->e(ZLf02;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_3

    return-object v3

    :cond_3
    :goto_1
    iget-object v1, v0, Lw66;->c:Ljf6;

    invoke-interface {v1}, Ljf6;->U0()Ljava/lang/String;

    move-result-object v6

    :cond_4
    iget-object v1, v0, Lw66;->e:Lz68;

    invoke-virtual {v1}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v10

    move-object v2, v10

    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lqn1;->v0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v11, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v2, v12}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v11, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpz3;

    instance-of v3, v2, Lf56;

    if-eqz v3, :cond_7

    move-object v14, v2

    check-cast v14, Lf56;

    iget-object v2, v14, Lf56;->e:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v15, Ljava/util/ArrayList;

    invoke-static {v2, v12}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v15, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpz3;

    instance-of v3, v2, Lc66;

    if-eqz v3, :cond_5

    check-cast v2, Lc66;

    iget-object v3, v2, Lc66;->a:Ljava/lang/String;

    iget-boolean v4, v2, Lc66;->b:Z

    iget-boolean v5, v2, Lc66;->c:Z

    iget-boolean v7, v2, Lc66;->e:Z

    iget-object v8, v2, Lc66;->f:Ljava/lang/String;

    iget-object v9, v2, Lc66;->g:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lc66;

    invoke-direct/range {v2 .. v9}, Lc66;-><init>(Ljava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-static {v14, v15}, Lf56;->d(Lf56;Ljava/util/ArrayList;)Lf56;

    move-result-object v2

    :cond_7
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    invoke-virtual {v1, v10, v11}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lw66;->a()V

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method
