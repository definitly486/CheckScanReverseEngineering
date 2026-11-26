.class public final Lyads/k23;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/kg0;


# direct methods
.method public constructor <init>(Lyads/kg0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/k23;->a:Lyads/kg0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lf02;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lyads/j23;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lyads/j23;

    iget v3, v2, Lyads/j23;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lyads/j23;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Lyads/j23;

    invoke-direct {v2, v0, v1}, Lyads/j23;-><init>(Lyads/k23;Lf02;)V

    :goto_0
    iget-object v1, v2, Lyads/j23;->c:Ljava/lang/Object;

    sget-object v3, La32;->COROUTINE_SUSPENDED:La32;

    iget v4, v2, Lyads/j23;->e:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v0, v2, Lyads/j23;->b:Ljava/lang/String;

    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v6

    :cond_2
    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object v0, v0, Lyads/k23;->a:Lyads/kg0;

    move-object/from16 v1, p1

    iput-object v1, v2, Lyads/j23;->b:Ljava/lang/String;

    iput v5, v2, Lyads/j23;->e:I

    iget-object v4, v0, Lyads/kg0;->d:Lr22;

    new-instance v5, Lyads/jg0;

    invoke-direct {v5, v0, v6}, Lyads/jg0;-><init>(Lyads/kg0;Le02;)V

    invoke-static {v4, v5, v2}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_3

    return-object v3

    :cond_3
    move-object/from16 v18, v1

    move-object v1, v0

    move-object/from16 v0, v18

    :goto_1
    check-cast v1, Lyads/ef0;

    iget-object v2, v1, Lyads/ef0;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lyads/od0;

    iget-object v4, v4, Lyads/od0;->c:Ljava/lang/String;

    invoke-static {v4, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_5
    move-object v3, v6

    :goto_2
    check-cast v3, Lyads/od0;

    if-eqz v3, :cond_13

    iget-object v1, v1, Lyads/ef0;->d:Lyads/ne0;

    iget-object v1, v1, Lyads/ne0;->a:Ljava/util/ArrayList;

    iget-object v2, v3, Lyads/od0;->d:Lyads/wd0;

    if-nez v2, :cond_6

    new-instance v1, Lyads/be0;

    sget-object v2, Lkx2;->b:Lkx2;

    invoke-direct {v1, v2}, Lyads/be0;-><init>(Ljava/util/List;)V

    goto/16 :goto_d

    :cond_6
    iget-object v4, v2, Lyads/wd0;->b:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v4, v7}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v9, ""

    if-eqz v8, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lyads/rd0;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Lyads/le0;

    iget-object v12, v12, Lyads/le0;->a:Ljava/lang/String;

    iget-object v13, v8, Lyads/rd0;->b:Ljava/lang/String;

    invoke-static {v12, v13}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    goto :goto_4

    :cond_8
    move-object v11, v6

    :goto_4
    check-cast v11, Lyads/le0;

    if-eqz v11, :cond_a

    iget-object v10, v11, Lyads/le0;->b:Ljava/lang/String;

    if-nez v10, :cond_9

    goto :goto_5

    :cond_9
    move-object v12, v10

    goto :goto_6

    :cond_a
    :goto_5
    move-object v12, v9

    :goto_6
    iget-object v9, v8, Lyads/rd0;->c:Ljava/util/List;

    new-instance v14, Ljava/util/ArrayList;

    invoke-static {v9, v7}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v14, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lyads/ze0;

    new-instance v11, Lyads/xf0;

    iget-object v13, v10, Lyads/ze0;->a:Ljava/lang/String;

    iget-object v10, v10, Lyads/ze0;->b:Ljava/lang/String;

    invoke-direct {v11, v13, v10}, Lyads/xf0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_b
    new-instance v11, Lyads/ae0;

    iget-object v13, v8, Lyads/rd0;->b:Ljava/lang/String;

    iget-object v15, v8, Lyads/rd0;->d:Ljava/lang/String;

    iget-object v8, v8, Lyads/rd0;->e:Ljava/lang/String;

    sget-object v17, Lyads/xd0;->a:Lyads/xd0;

    move-object/from16 v16, v8

    invoke-direct/range {v11 .. v17}, Lyads/ae0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lyads/zd0;)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_c
    iget-object v2, v2, Lyads/wd0;->a:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v2, v7}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lyads/ee0;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Lyads/le0;

    iget-object v12, v12, Lyads/le0;->a:Ljava/lang/String;

    iget-object v13, v8, Lyads/ee0;->b:Ljava/lang/String;

    invoke-static {v12, v13}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    goto :goto_9

    :cond_e
    move-object v11, v6

    :goto_9
    check-cast v11, Lyads/le0;

    if-eqz v11, :cond_f

    iget-object v10, v11, Lyads/le0;->b:Ljava/lang/String;

    goto :goto_a

    :cond_f
    move-object v10, v6

    :goto_a
    if-nez v10, :cond_10

    move-object v12, v9

    goto :goto_b

    :cond_10
    move-object v12, v10

    :goto_b
    iget-object v10, v8, Lyads/ee0;->c:Ljava/util/List;

    new-instance v14, Ljava/util/ArrayList;

    invoke-static {v10, v7}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v14, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lyads/fi0;

    new-instance v13, Lyads/xf0;

    iget-object v15, v11, Lyads/fi0;->a:Ljava/lang/String;

    iget-object v11, v11, Lyads/fi0;->b:Ljava/lang/String;

    invoke-direct {v13, v15, v11}, Lyads/xf0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_11
    new-instance v10, Lyads/yd0;

    iget-object v11, v8, Lyads/ee0;->e:Lyads/ci0;

    iget-object v13, v8, Lyads/ee0;->f:Ljava/util/List;

    invoke-direct {v10, v11, v13}, Lyads/yd0;-><init>(Lyads/ci0;Ljava/util/List;)V

    new-instance v11, Lyads/ae0;

    iget-object v13, v8, Lyads/ee0;->b:Ljava/lang/String;

    const/4 v15, 0x0

    iget-object v8, v8, Lyads/ee0;->d:Ljava/lang/String;

    move-object/from16 v16, v8

    move-object/from16 v17, v10

    invoke-direct/range {v11 .. v17}, Lyads/ae0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lyads/zd0;)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_12
    new-instance v1, Lyads/be0;

    invoke-static {v4, v5}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Lyads/be0;-><init>(Ljava/util/List;)V

    :goto_d
    new-instance v2, Lyads/td0;

    iget-object v4, v3, Lyads/od0;->a:Ljava/lang/String;

    iget-object v3, v3, Lyads/od0;->b:Ljava/lang/String;

    invoke-direct {v2, v4, v3, v0, v1}, Lyads/td0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lyads/be0;)V

    return-object v2

    :cond_13
    return-object v6
.end method
