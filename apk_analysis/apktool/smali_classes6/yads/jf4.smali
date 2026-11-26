.class public final Lyads/jf4;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public final synthetic c:Lyads/kf4;

.field public final synthetic d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lyads/kf4;Landroid/view/View;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/jf4;->c:Lyads/kf4;

    iput-object p2, p0, Lyads/jf4;->d:Landroid/view/View;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1

    new-instance p1, Lyads/jf4;

    iget-object v0, p0, Lyads/jf4;->c:Lyads/kf4;

    iget-object p0, p0, Lyads/jf4;->d:Landroid/view/View;

    invoke-direct {p1, v0, p0, p2}, Lyads/jf4;-><init>(Lyads/kf4;Landroid/view/View;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance p1, Lyads/jf4;

    iget-object v0, p0, Lyads/jf4;->c:Lyads/kf4;

    iget-object p0, p0, Lyads/jf4;->d:Landroid/view/View;

    invoke-direct {p1, v0, p0, p2}, Lyads/jf4;-><init>(Lyads/kf4;Landroid/view/View;Le02;)V

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Lyads/jf4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v6, p0

    sget-object v7, La32;->COROUTINE_SUSPENDED:La32;

    iget v0, v6, Lyads/jf4;->b:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    goto/16 :goto_3

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object v0, v6, Lyads/jf4;->c:Lyads/kf4;

    iget-object v2, v0, Lyads/kf4;->b:Lyads/a4;

    iget-object v3, v6, Lyads/jf4;->d:Landroid/view/View;

    iget-object v4, v0, Lyads/kf4;->a:Lyads/ak;

    iget-object v5, v0, Lyads/kf4;->e:Lyads/ot3;

    iget-object v0, v0, Lyads/kf4;->c:Lyads/dh4;

    iput v1, v6, Lyads/jf4;->b:I

    iget-object v8, v2, Lyads/a4;->d:Lyads/lf4;

    iget-object v8, v8, Lyads/lf4;->b:Lyads/o1;

    iget-object v15, v5, Lyads/ot3;->b:Lyads/mt2;

    iget-object v10, v8, Lyads/o1;->e:Landroid/content/Context;

    iget-object v11, v8, Lyads/o1;->a:Lyads/e4;

    iget-object v12, v8, Lyads/o1;->b:Lyads/bf5;

    iget-object v13, v8, Lyads/o1;->c:Lyads/d9;

    iget-object v14, v8, Lyads/o1;->d:Lyads/nf4;

    new-instance v9, Lyads/n1;

    invoke-direct/range {v9 .. v15}, Lyads/n1;-><init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/d9;Lyads/p1;Lyads/mt2;)V

    iput-object v9, v8, Lyads/o1;->f:Lyads/n1;

    iget-object v10, v8, Lyads/o1;->g:Lyads/zh4;

    if-eqz v10, :cond_2

    iput-object v10, v8, Lyads/o1;->g:Lyads/zh4;

    iget-object v8, v9, Lyads/n1;->b:Lyads/r1;

    iput-object v10, v8, Lyads/r1;->k:Lyads/zh4;

    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    iget-object v8, v2, Lyads/a4;->i:Lyads/q5;

    iget-object v8, v8, Lyads/q5;->a:Lyads/h9;

    iget-object v9, v2, Lyads/a4;->g:Lyads/qe4;

    iget-object v4, v4, Lyads/ak;->a:Ljava/lang/String;

    iget-object v0, v0, Lyads/dh4;->c:Lyads/nn0;

    new-instance v10, Lyads/re4;

    iget-object v11, v9, Lyads/qe4;->e:Lyads/zh4;

    invoke-direct {v10, v4, v11, v0}, Lyads/re4;-><init>(Ljava/lang/String;Lyads/zh4;Lyads/nn0;)V

    new-instance v17, Lyads/l00;

    iget-object v14, v9, Lyads/qe4;->d:Landroid/content/Context;

    iget-object v15, v9, Lyads/qe4;->c:Lyads/d9;

    iget-object v0, v9, Lyads/qe4;->a:Lyads/e4;

    iget-object v4, v9, Lyads/qe4;->b:Lyads/bf5;

    move-object/from16 v16, v0

    move-object/from16 v18, v10

    move-object/from16 v13, v17

    move-object/from16 v17, v4

    invoke-direct/range {v13 .. v18}, Lyads/l00;-><init>(Landroid/content/Context;Lyads/d9;Lyads/e4;Lyads/bf5;Lyads/re4;)V

    move-object v0, v13

    iget-object v4, v2, Lyads/a4;->e:Lyads/hv5;

    iget-object v13, v2, Lyads/a4;->a:Lyads/bf5;

    iget-object v14, v2, Lyads/a4;->c:Lyads/e4;

    iget-object v15, v2, Lyads/a4;->b:Lyads/d9;

    iget-boolean v9, v5, Lyads/ot3;->f:Z

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lyads/zg5;->l:Lyads/zg5;

    if-nez v4, :cond_4

    sget-object v4, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    sget-object v10, Lyads/zg5;->l:Lyads/zg5;

    if-nez v10, :cond_3

    new-instance v10, Lyads/zg5;

    invoke-direct {v10}, Lyads/zg5;-><init>()V

    sput-object v10, Lyads/zg5;->l:Lyads/zg5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_3
    :goto_0
    monitor-exit v4

    move-object v4, v10

    goto :goto_2

    :goto_1
    monitor-exit v4

    throw v0

    :cond_4
    :goto_2
    invoke-virtual {v4, v12}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-boolean v4, v4, Lyads/fe5;->f:Z

    :cond_5
    new-instance v11, Lyads/xi0;

    move-object/from16 v16, v8

    move/from16 v17, v9

    invoke-direct/range {v11 .. v17}, Lyads/xi0;-><init>(Landroid/content/Context;Lyads/bf5;Lyads/e4;Lyads/d9;Lyads/h9;Z)V

    new-instance v1, Lyads/mk4;

    invoke-direct {v1, v11}, Lyads/mk4;-><init>(Lyads/gv5;)V

    new-instance v4, Lyads/lk4;

    invoke-direct {v4, v11}, Lyads/lk4;-><init>(Lyads/gv5;)V

    new-instance v8, Lyads/nk4;

    iget-object v9, v2, Lyads/a4;->h:Lyads/h16;

    invoke-direct {v8, v4, v9}, Lyads/nk4;-><init>(Lyads/lk4;Lyads/h16;)V

    move-object v4, v5

    new-instance v5, Lyads/ji4;

    invoke-direct {v5, v0}, Lyads/ji4;-><init>(Lyads/l00;)V

    new-instance v13, Lyads/d1;

    iget-object v14, v2, Lyads/a4;->c:Lyads/e4;

    iget-object v15, v2, Lyads/a4;->a:Lyads/bf5;

    iget-object v9, v2, Lyads/a4;->b:Lyads/d9;

    iget-object v10, v2, Lyads/a4;->d:Lyads/lf4;

    iget-object v11, v2, Lyads/a4;->h:Lyads/h16;

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v21, v8

    move-object/from16 v16, v9

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    invoke-direct/range {v13 .. v21}, Lyads/d1;-><init>(Lyads/e4;Lyads/bf5;Lyads/d9;Lyads/l00;Lyads/mk4;Lyads/lf4;Lyads/h16;Lyads/nk4;)V

    move-object v0, v2

    move-object v1, v3

    move-object v2, v4

    move-object v3, v13

    move-object/from16 v4, v21

    invoke-virtual/range {v0 .. v6}, Lyads/a4;->a(Landroid/view/View;Lyads/ot3;Lyads/d1;Lyads/nk4;Lyads/ji4;Lf02;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_6

    return-object v7

    :cond_6
    :goto_3
    check-cast v0, Lyads/m83;

    iget-boolean v0, v0, Lyads/m83;->a:Z

    if-eqz v0, :cond_7

    iget-object v0, v6, Lyads/jf4;->c:Lyads/kf4;

    iget-object v0, v0, Lyads/kf4;->f:Lyads/tz2;

    invoke-interface {v0}, Lyads/tz2;->a()V

    :cond_7
    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method
