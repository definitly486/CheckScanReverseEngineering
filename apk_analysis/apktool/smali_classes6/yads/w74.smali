.class public final Lyads/w74;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/e4;

.field public final b:Lyads/t5;

.field public final c:Lyads/v24;

.field public final d:Lyads/n24;

.field public final e:Lyads/mt4;

.field public final f:Lyads/t24;

.field public final g:Lyads/zg5;

.field public final h:Lll3;

.field public final i:Lnl3;

.field public final j:Landroid/content/Context;

.field public final k:Ly22;

.field public l:Lmb4;

.field public m:Ljava/lang/Object;

.field public n:Lnl3;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/t5;Lyads/v24;Lyads/n24;Lyads/mt4;Lyads/t24;Lyads/hb;Lyads/zg5;Lll3;Lnl3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/w74;->a:Lyads/e4;

    iput-object p4, p0, Lyads/w74;->b:Lyads/t5;

    iput-object p5, p0, Lyads/w74;->c:Lyads/v24;

    iput-object p6, p0, Lyads/w74;->d:Lyads/n24;

    iput-object p7, p0, Lyads/w74;->e:Lyads/mt4;

    iput-object p8, p0, Lyads/w74;->f:Lyads/t24;

    iput-object p10, p0, Lyads/w74;->g:Lyads/zg5;

    iput-object p11, p0, Lyads/w74;->h:Lll3;

    iput-object p12, p0, Lyads/w74;->i:Lnl3;

    invoke-static {p1}, Lyads/w60;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lyads/w74;->j:Landroid/content/Context;

    check-cast p3, Lyads/do6;

    iget-object p1, p3, Lyads/do6;->a:Landroid/content/Context;

    invoke-static {p1, p1}, Lyads/mw;->a(Landroid/content/Context;Landroid/content/Context;)Lyads/q84;

    move-result-object p1

    new-instance p2, Lyads/j90;

    invoke-direct {p2, p1}, Lyads/j90;-><init>(Lyads/k75;)V

    invoke-static {}, Lrm9;->b()Ljd8;

    move-result-object p1

    sget-object p3, Lqo2;->a:Loi2;

    sget-object p3, Luy4;->a:Lhu3;

    invoke-virtual {p3}, Lhu3;->k0()Lgu3;

    move-result-object p3

    invoke-static {p1, p3}, Lo22$a$a;->d(Lo22$a;Lo22;)Lo22;

    move-result-object p1

    invoke-interface {p1, p2}, Lo22;->plus(Lo22;)Lo22;

    move-result-object p1

    invoke-static {p1}, Lz22;->a(Lo22;)Lkz1;

    move-result-object p1

    iput-object p1, p0, Lyads/w74;->k:Ly22;

    return-void
.end method

.method public static final a(Lyads/w74;Landroid/content/Context;Lnl3;Lf02;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v1, Lyads/v74;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lyads/v74;

    iget v3, v2, Lyads/v74;->g:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lyads/v74;->g:I

    goto :goto_0

    :cond_0
    new-instance v2, Lyads/v74;

    invoke-direct {v2, v0, v1}, Lyads/v74;-><init>(Lyads/w74;Lf02;)V

    :goto_0
    iget-object v1, v2, Lyads/v74;->e:Ljava/lang/Object;

    sget-object v8, La32;->COROUTINE_SUSPENDED:La32;

    iget v3, v2, Lyads/v74;->g:I

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v3, :cond_3

    if-ne v3, v10, :cond_2

    iget-object v3, v2, Lyads/v74;->d:Lyads/l24;

    iget-object v4, v2, Lyads/v74;->c:Lnl3;

    iget-object v5, v2, Lyads/v74;->b:Landroid/content/Context;

    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    move-object v12, v2

    move-object v2, v5

    :cond_1
    move-object v7, v4

    goto/16 :goto_a

    :cond_2
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v11

    :cond_3
    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    move-object/from16 v7, p2

    move-object v12, v2

    move-object/from16 v2, p1

    :goto_1
    iget-object v1, v0, Lyads/w74;->d:Lyads/n24;

    invoke-interface {v1, v2}, Lyads/n24;->a(Landroid/content/Context;)Lyads/l24;

    move-result-object v13

    iget-object v1, v0, Lyads/w74;->i:Lnl3;

    invoke-interface {v1, v13}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v14, 0x3

    if-nez v13, :cond_8

    iput-object v11, v0, Lyads/w74;->m:Ljava/lang/Object;

    iget-object v0, v0, Lyads/w74;->e:Lyads/mt4;

    iget-object v1, v0, Lyads/mt4;->b:Lyads/e55;

    sget-object v2, Lyads/mt4;->c:[Lze4;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v1, v1, Lyads/e55;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/pp;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lyads/pp;->d()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v0, v0, Lyads/mt4;->a:Lyads/nt4;

    sget-object v2, Lyads/w5;->d:Lyads/w5;

    invoke-virtual {v1, v2}, Lyads/pp;->a(Lyads/w5;)V

    iget-object v2, v1, Lyads/pp;->u:Ly22;

    if-eqz v2, :cond_5

    invoke-static {v2}, Lz22;->e(Ly22;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, v11

    :goto_2
    if-nez v2, :cond_6

    :cond_5
    invoke-virtual {v1}, Lyads/pp;->j()Ly22;

    move-result-object v2

    :cond_6
    new-instance v3, Lyads/jp;

    invoke-direct {v3, v1, v0, v11}, Lyads/jp;-><init>(Lyads/pp;Lyads/nt4;Le02;)V

    invoke-static {v2, v11, v11, v3, v14}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    :cond_7
    sget-object v0, Lj59;->a:Lj59;

    return-object v0

    :cond_8
    iget-object v1, v0, Lyads/w74;->a:Lyads/e4;

    iget-object v3, v13, Lyads/l24;->b:Lyads/x54;

    iput-object v3, v1, Lyads/e4;->k:Lyads/x54;

    iget-object v3, v13, Lyads/l24;->c:Lyads/o24;

    invoke-virtual {v3}, Lyads/o24;->b()Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lyads/e4;->l:Ljava/lang/String;

    iget-object v1, v0, Lyads/w74;->b:Lyads/t5;

    sget-object v3, Lyads/s5;->c:Lyads/s5;

    invoke-virtual {v1, v3, v11}, Lyads/t5;->a(Lyads/s5;Ljava/lang/Object;)V

    iget-object v4, v13, Lyads/l24;->b:Lyads/x54;

    iget-object v1, v13, Lyads/l24;->c:Lyads/o24;

    invoke-virtual {v1}, Lyads/o24;->b()Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v5

    iget-object v1, v0, Lyads/w74;->f:Lyads/t24;

    iget-object v1, v1, Lyads/t24;->d:Lyads/l34;

    sget-object v3, Lyads/e75;->f:Lyads/e75;

    sget-object v6, Lmx2;->b:Lmx2;

    invoke-virtual/range {v1 .. v6}, Lyads/l34;->a(Landroid/content/Context;Lyads/e75;Lyads/x54;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v2, v12, Lyads/v74;->b:Landroid/content/Context;

    iput-object v7, v12, Lyads/v74;->c:Lnl3;

    iput-object v13, v12, Lyads/v74;->d:Lyads/l24;

    iput v10, v12, Lyads/v74;->g:I

    iget-object v1, v0, Lyads/w74;->g:Lyads/zg5;

    iget-object v3, v0, Lyads/w74;->j:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, v1, Lyads/fe5;->R0:Lyads/i54;

    goto :goto_3

    :cond_9
    move-object v1, v11

    :goto_3
    iget-object v3, v0, Lyads/w74;->a:Lyads/e4;

    iget-object v3, v3, Lyads/e4;->a:Lyads/n70;

    if-eqz v5, :cond_14

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_a

    goto :goto_6

    :cond_a
    if-nez v1, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_10

    if-eq v3, v10, :cond_f

    if-eq v3, v9, :cond_e

    if-eq v3, v14, :cond_d

    const/4 v6, 0x5

    if-eq v3, v6, :cond_c

    move-object v3, v11

    goto :goto_4

    :cond_c
    iget-object v3, v1, Lyads/i54;->f:Ljava/util/Map;

    goto :goto_4

    :cond_d
    iget-object v3, v1, Lyads/i54;->e:Ljava/util/Map;

    goto :goto_4

    :cond_e
    iget-object v3, v1, Lyads/i54;->d:Ljava/util/Map;

    goto :goto_4

    :cond_f
    iget-object v3, v1, Lyads/i54;->c:Ljava/util/Map;

    goto :goto_4

    :cond_10
    iget-object v3, v1, Lyads/i54;->b:Ljava/util/Map;

    :goto_4
    const-wide v14, 0x7fffffffffffffffL

    if-eqz v3, :cond_11

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    goto :goto_5

    :cond_11
    iget-object v1, v1, Lyads/i54;->a:Ljava/lang/Long;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    goto :goto_5

    :cond_12
    move-wide/from16 v16, v14

    :goto_5
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    cmp-long v3, v16, v14

    if-nez v3, :cond_13

    goto :goto_6

    :cond_13
    move-object v14, v1

    goto :goto_7

    :cond_14
    :goto_6
    move-object v14, v11

    :goto_7
    if-nez v14, :cond_16

    move-object v1, v2

    move-object v3, v7

    move-object v6, v12

    move-object v2, v13

    invoke-virtual/range {v0 .. v6}, Lyads/w74;->a(Landroid/content/Context;Lyads/l24;Lnl3;Lyads/x54;Ljava/lang/String;Lf02;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v2

    move-object v2, v1

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne v4, v1, :cond_15

    :goto_8
    move-object v1, v4

    move-object v4, v3

    move-object v3, v0

    move-object/from16 v0, p0

    goto :goto_9

    :cond_15
    check-cast v4, Lyads/r74;

    goto :goto_8

    :cond_16
    move-object v3, v7

    move-object v0, v13

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v0

    new-instance v0, Lyads/t74;

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lyads/t74;-><init>(Lyads/w74;Landroid/content/Context;Lyads/l24;Lnl3;Lyads/x54;Ljava/lang/String;Le02;)V

    move-object/from16 v19, v1

    move-object v1, v0

    move-object/from16 v0, v19

    invoke-static {v13, v14, v1, v12}, Lyv8;->c(JLbm3;Le02;)Ljava/lang/Object;

    move-result-object v1

    :goto_9
    if-ne v1, v8, :cond_1

    return-object v8

    :goto_a
    check-cast v1, Lyads/r74;

    const/4 v4, -0x1

    if-nez v1, :cond_17

    move v1, v4

    goto :goto_b

    :cond_17
    sget-object v5, Lyads/s74;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v5, v1

    :goto_b
    if-eq v1, v4, :cond_1a

    if-eq v1, v10, :cond_19

    if-ne v1, v9, :cond_18

    invoke-virtual {v0, v2}, Lyads/w74;->a(Landroid/content/Context;)V

    goto/16 :goto_1

    :cond_18
    invoke-static {}, Lme0;->e()V

    return-object v11

    :cond_19
    sget-object v0, Lj59;->a:Lj59;

    return-object v0

    :cond_1a
    invoke-virtual {v0}, Lyads/w74;->a()V

    iget-object v1, v0, Lyads/w74;->f:Lyads/t24;

    sget-object v4, Lyads/o8;->s:Lyads/m4;

    new-instance v5, Lb36;

    const-string v6, "status"

    const-string v13, "error"

    invoke-direct {v5, v6, v13}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v6, v4, Lyads/m4;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v13, Lb36;

    const-string v14, "error_code"

    invoke-direct {v13, v14, v6}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v4, v4, Lyads/m4;->b:Ljava/lang/String;

    new-instance v6, Lb36;

    const-string v14, "error_description"

    invoke-direct {v6, v14, v4}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v5, v13, v6}, [Lb36;

    move-result-object v4

    invoke-static {v4}, Ln05;->f([Lb36;)Ljava/util/LinkedHashMap;

    move-result-object v4

    if-eqz v3, :cond_1b

    iget-object v5, v3, Lyads/l24;->c:Lyads/o24;

    invoke-static {v5}, Lyads/g34;->a(Lyads/o24;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v13, v1, Lyads/t24;->d:Lyads/l34;

    iget-object v14, v1, Lyads/t24;->f:Landroid/content/Context;

    iget-object v1, v3, Lyads/l24;->b:Lyads/x54;

    iget-object v3, v3, Lyads/l24;->c:Lyads/o24;

    invoke-virtual {v3}, Lyads/o24;->b()Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v17

    sget-object v15, Lyads/e75;->g:Lyads/e75;

    move-object/from16 v16, v1

    move-object/from16 v18, v4

    invoke-virtual/range {v13 .. v18}, Lyads/l34;->a(Landroid/content/Context;Lyads/e75;Lyads/x54;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1b
    invoke-virtual {v0, v2}, Lyads/w74;->a(Landroid/content/Context;)V

    goto/16 :goto_1
.end method

.method public static final a(Lyads/w74;Lc31;Lyads/r74;)Z
    .locals 0

    .line 483
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 484
    :try_start_0
    invoke-virtual {p1, p2}, Lc31;->resumeWith(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lyads/l24;Lnl3;Lyads/x54;Ljava/lang/String;Lf02;)Ljava/lang/Object;
    .locals 8

    .line 513
    new-instance v1, Lc31;

    invoke-static {p6}, Lzya;->b(Le02;)Le02;

    move-result-object p6

    const/4 v0, 0x1

    invoke-direct {v1, v0, p6}, Lc31;-><init>(ILe02;)V

    .line 514
    invoke-virtual {v1}, Lc31;->u()V

    .line 515
    new-instance p6, Lyads/q74;

    invoke-direct {p6, p0, v1, p2}, Lyads/q74;-><init>(Lyads/w74;Lc31;Lyads/l24;)V

    .line 516
    invoke-interface {p3, p6}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 517
    iput-object v5, p0, Lyads/w74;->m:Ljava/lang/Object;

    .line 518
    :try_start_0
    iget-object v2, p0, Lyads/w74;->c:Lyads/v24;

    .line 519
    iget-object v4, p2, Lyads/l24;->a:Lcom/monetization/ads/mediation/base/a;

    .line 520
    iget-object p3, p2, Lyads/l24;->d:Lyads/v34;

    invoke-virtual {p3, p1}, Lyads/v34;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v6

    .line 521
    iget-object p3, p2, Lyads/l24;->d:Lyads/v34;

    iget-object p2, p2, Lyads/l24;->b:Lyads/x54;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 522
    iget-object v7, p2, Lyads/x54;->c:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, p1

    .line 523
    :try_start_1
    invoke-interface/range {v2 .. v7}, Lyads/v24;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p2, v3

    :goto_0
    move-object p1, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p2, p1

    goto :goto_0

    .line 524
    :goto_1
    iget-object p3, p0, Lyads/w74;->f:Lyads/t24;

    .line 525
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p6, "exception_in_adapter"

    .line 526
    invoke-static {p6, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 527
    const-string p6, "reason"

    .line 528
    invoke-static {p6, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 529
    iget-object p1, p3, Lyads/t24;->d:Lyads/l34;

    .line 530
    sget-object p3, Lyads/e75;->e:Lyads/e75;

    .line 531
    invoke-virtual/range {p1 .. p6}, Lyads/l34;->a(Landroid/content/Context;Lyads/e75;Lyads/x54;Ljava/lang/String;Ljava/util/Map;)V

    .line 532
    invoke-virtual {p0}, Lyads/w74;->a()V

    .line 533
    sget-object p1, Lyads/r74;->c:Lyads/r74;

    invoke-static {p0, v1, p1}, Lyads/w74;->a(Lyads/w74;Lc31;Lyads/r74;)Z

    .line 534
    :goto_2
    invoke-virtual {v1}, Lc31;->s()Ljava/lang/Object;

    move-result-object p0

    .line 535
    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    return-object p0
.end method

.method public final a()V
    .locals 4

    .line 506
    iget-object v0, p0, Lyads/w74;->h:Lll3;

    invoke-interface {v0}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/l24;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, v0, Lyads/l24;->b:Lyads/x54;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, v0, Lyads/x54;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 509
    :goto_0
    sget-object v2, Lyads/f75;->d:Lyads/f75;

    .line 510
    new-instance v3, Lyads/gb;

    invoke-direct {v3, v2, v0}, Lyads/gb;-><init>(Lyads/f75;Ljava/lang/String;)V

    .line 511
    iget-object p0, p0, Lyads/w74;->b:Lyads/t5;

    sget-object v0, Lyads/s5;->c:Lyads/s5;

    .line 512
    invoke-virtual {p0, v0, v3, v1}, Lyads/t5;->a(Lyads/s5;Lyads/ju4;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 8

    .line 491
    iget-object v0, p0, Lyads/w74;->h:Lll3;

    invoke-interface {v0}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lyads/l24;

    if-eqz v1, :cond_0

    .line 492
    :try_start_0
    iget-object v0, p0, Lyads/w74;->c:Lyads/v24;

    .line 493
    iget-object v2, v1, Lyads/l24;->a:Lcom/monetization/ads/mediation/base/a;

    .line 494
    invoke-interface {v0, v2}, Lyads/v24;->a(Lcom/monetization/ads/mediation/base/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 495
    iget-object p0, p0, Lyads/w74;->f:Lyads/t24;

    .line 496
    iget-object v5, v1, Lyads/l24;->b:Lyads/x54;

    .line 497
    iget-object v1, v1, Lyads/l24;->c:Lyads/o24;

    .line 498
    invoke-virtual {v1}, Lyads/o24;->b()Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v6

    .line 499
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exception_in_adapter"

    .line 500
    invoke-static {v1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 501
    const-string v1, "reason"

    .line 502
    invoke-static {v1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 503
    iget-object v2, p0, Lyads/t24;->d:Lyads/l34;

    .line 504
    sget-object v4, Lyads/e75;->e:Lyads/e75;

    move-object v3, p1

    .line 505
    invoke-virtual/range {v2 .. v7}, Lyads/l34;->a(Landroid/content/Context;Lyads/e75;Lyads/x54;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;Lnl3;)V
    .locals 3

    .line 485
    iput-object p2, p0, Lyads/w74;->n:Lnl3;

    .line 486
    iget-object v0, p0, Lyads/w74;->l:Lmb4;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 487
    invoke-interface {v0, v1}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 488
    :cond_0
    iget-object v0, p0, Lyads/w74;->k:Ly22;

    new-instance v2, Lyads/u74;

    invoke-direct {v2, p0, p1, p2, v1}, Lyads/u74;-><init>(Lyads/w74;Landroid/content/Context;Lnl3;Le02;)V

    const/4 p1, 0x3

    .line 489
    invoke-static {v0, v1, v1, v2, p1}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p1

    .line 490
    iput-object p1, p0, Lyads/w74;->l:Lmb4;

    return-void
.end method
