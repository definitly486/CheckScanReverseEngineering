.class public final synthetic Lsa6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgm3;


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p1

    check-cast v0, Lnb6;

    move-object/from16 v1, p2

    check-cast v1, Ldb6;

    move-object/from16 v2, p3

    check-cast v2, Lib6;

    move-object/from16 v5, p4

    check-cast v5, Ljava/lang/String;

    move-object/from16 v3, p5

    check-cast v3, Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lta6$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v4, v4, v6

    const/16 v17, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v4, v9, :cond_1

    if-ne v4, v7, :cond_0

    move-object v4, v3

    new-instance v3, Liz2;

    new-instance v10, Lk31;

    invoke-direct {v10, v7}, Lk31;-><init>(I)V

    new-instance v11, Ldh0;

    invoke-direct {v11, v9}, Ldh0;-><init>(I)V

    new-instance v12, Lsi1;

    invoke-direct {v12, v9}, Lsi1;-><init>(I)V

    new-instance v13, Lly2;

    invoke-direct {v13, v8}, Lly2;-><init>(I)V

    move-object v14, v10

    new-instance v10, Lmy2;

    invoke-direct {v10, v0}, Lmy2;-><init>(Lnb6;)V

    move-object v15, v11

    new-instance v11, Lvy1;

    invoke-direct {v11, v0, v9}, Lvy1;-><init>(Ljava/lang/Object;I)V

    move-object/from16 v16, v12

    new-instance v12, Lwu2;

    invoke-direct {v12, v9}, Lwu2;-><init>(I)V

    move-object v9, v13

    new-instance v13, Lny2;

    invoke-direct {v13, v1, v8}, Lny2;-><init>(Ljava/lang/Object;I)V

    move-object v1, v14

    sget-object v14, Lfz2;->c:Lfz2;

    move-object v8, v15

    new-instance v15, Lws0;

    invoke-direct {v15, v6}, Lws0;-><init>(I)V

    new-instance v6, Lyc2;

    invoke-direct {v6, v7}, Lyc2;-><init>(I)V

    move-object v7, v4

    const-string v4, "snapshots"

    move-object/from16 v18, v6

    move-object v6, v1

    move-object v1, v7

    move-object v7, v8

    move-object/from16 v8, v16

    move-object/from16 v16, v18

    invoke-direct/range {v3 .. v16}, Liz2;-><init>(Ljava/lang/String;Ljava/lang/String;Lnl3;Lnl3;Lnl3;Lnl3;Lbm3;Lnl3;Lnl3;Lnl3;Lnl3;Lnl3;Lnl3;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lme0;->e()V

    return-object v17

    :cond_1
    move-object v4, v3

    new-instance v3, Liz2;

    new-instance v10, Lzc2;

    invoke-direct {v10, v9}, Lzc2;-><init>(I)V

    new-instance v11, Lyq2;

    invoke-direct {v11, v9}, Lyq2;-><init>(I)V

    new-instance v12, Lv71;

    invoke-direct {v12, v6}, Lv71;-><init>(I)V

    new-instance v6, Loy2;

    invoke-direct {v6, v8}, Loy2;-><init>(I)V

    move-object v13, v6

    move-object v6, v10

    new-instance v10, Lpy2;

    invoke-direct {v10, v0}, Lpy2;-><init>(Lnb6;)V

    move-object v14, v11

    new-instance v11, Lv82;

    invoke-direct {v11, v0, v9}, Lv82;-><init>(Ljava/lang/Object;I)V

    move-object v9, v12

    new-instance v12, Lqy2;

    invoke-direct {v12, v8}, Lqy2;-><init>(I)V

    move-object v15, v9

    move-object v9, v13

    new-instance v13, Lry2;

    invoke-direct {v13, v1, v8}, Lry2;-><init>(Ljava/lang/Object;I)V

    move-object v1, v14

    sget-object v14, Lzy2;->c:Lzy2;

    move-object/from16 v16, v15

    new-instance v15, Lw82;

    invoke-direct {v15, v7}, Lw82;-><init>(I)V

    new-instance v7, Lsy2;

    invoke-direct {v7, v8}, Lsy2;-><init>(I)V

    move-object v8, v4

    const-string v4, "events"

    move-object/from16 v18, v7

    move-object v7, v1

    move-object v1, v8

    move-object/from16 v8, v16

    move-object/from16 v16, v18

    invoke-direct/range {v3 .. v16}, Liz2;-><init>(Ljava/lang/String;Ljava/lang/String;Lnl3;Lnl3;Lnl3;Lnl3;Lbm3;Lnl3;Lnl3;Lnl3;Lnl3;Lnl3;Lnl3;)V

    :goto_0
    new-instance v4, Lwc6;

    invoke-direct {v4, v0, v3, v1}, Lwc6;-><init>(Lnb6;Liz2;Ljava/util/concurrent/ExecutorService;)V

    sget-object v3, Lib6;->SNAPSHOT:Lib6;

    if-ne v2, v3, :cond_4

    new-instance v2, Lqd6;

    invoke-direct {v2, v0, v4, v5, v1}, Lqd6;-><init>(Lnb6;Lwc6;Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    instance-of v1, v0, Lta6;

    if-eqz v1, :cond_2

    move-object/from16 v17, v0

    check-cast v17, Lta6;

    :cond_2
    move-object/from16 v0, v17

    if-eqz v0, :cond_3

    iput-object v2, v0, Lta6;->O:Lqd6;

    :cond_3
    return-object v2

    :cond_4
    return-object v4
.end method
