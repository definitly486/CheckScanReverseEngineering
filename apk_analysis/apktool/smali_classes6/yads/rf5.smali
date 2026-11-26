.class public final Lyads/rf5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final w:Ljava/lang/Object;

.field public static volatile x:Z


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lyads/bf5;

.field public final c:Ly22;

.field public final d:Lyads/t5;

.field public final e:Lyads/wn2;

.field public final f:Lyads/ed;

.field public final g:Lyads/zg5;

.field public final h:Landroid/content/Context;

.field public final i:Lyads/sb3;

.field public final j:Lyads/sd;

.field public final k:Lyads/oe5;

.field public final l:Lyads/qh;

.field public final m:Lyads/j4;

.field public final n:Lyads/ih5;

.field public final o:Lyads/tf5;

.field public final p:Lyads/xe;

.field public final q:Lyads/qj2;

.field public final r:Lyads/ie;

.field public final s:Lcom/monetization/ads/mediation/base/initialize/a;

.field public final t:Lyads/qz2;

.field public final u:Lyads/ts3;

.field public final v:Lyads/rb3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/rf5;->w:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lyads/bf5;Ly22;Lyads/t5;Lyads/wn2;Lyads/ed;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    and-int/lit8 v3, p7, 0x10

    if-eqz v3, :cond_2

    sget-object v3, Lyads/wn2;->c:Lyads/wn2;

    if-nez v3, :cond_1

    sget-object v3, Lyads/wn2;->d:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v4, Lyads/wn2;->c:Lyads/wn2;

    if-nez v4, :cond_0

    new-instance v4, Lyads/wn2;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lyads/wn2;-><init>(Landroid/content/Context;)V

    sput-object v4, Lyads/wn2;->c:Lyads/wn2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v3

    move-object v7, v4

    goto :goto_2

    :goto_1
    monitor-exit v3

    throw v0

    :cond_1
    move-object v7, v3

    goto :goto_2

    :cond_2
    move-object/from16 v7, p5

    :goto_2
    and-int/lit8 v3, p7, 0x20

    if-eqz v3, :cond_3

    new-instance v3, Lyads/ed;

    invoke-direct {v3}, Lyads/ed;-><init>()V

    move-object v6, v3

    goto :goto_3

    :cond_3
    move-object/from16 v6, p6

    :goto_3
    invoke-static {}, Lyads/yg5;->a()Lyads/zg5;

    move-result-object v9

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v10, Lyads/sb3;

    invoke-direct {v10, v7}, Lyads/sb3;-><init>(Lyads/wn2;)V

    new-instance v11, Lyads/sd;

    invoke-direct {v11}, Lyads/sd;-><init>()V

    new-instance v3, Lyads/oe5;

    move-object v12, v2

    check-cast v12, Lyads/do6;

    iget-object v5, v12, Lyads/do6;->a:Landroid/content/Context;

    invoke-static {v5, v5}, Lyads/mw;->a(Landroid/content/Context;Landroid/content/Context;)Lyads/q84;

    move-result-object v8

    move-object/from16 v5, p4

    invoke-direct/range {v3 .. v8}, Lyads/oe5;-><init>(Landroid/content/Context;Lyads/t5;Lyads/ed;Lyads/wn2;Lyads/q84;)V

    new-instance v8, Lyads/qh;

    invoke-direct {v8, v4, v2}, Lyads/qh;-><init>(Landroid/content/Context;Lyads/bf5;)V

    new-instance v13, Lyads/j4;

    invoke-direct {v13}, Lyads/j4;-><init>()V

    new-instance v14, Lyads/ih5;

    invoke-direct {v14, v4}, Lyads/ih5;-><init>(Landroid/content/Context;)V

    new-instance v15, Lyads/tf5;

    move-object/from16 p5, v14

    iget-object v14, v12, Lyads/do6;->a:Landroid/content/Context;

    invoke-static {v14, v14}, Lyads/mw;->a(Landroid/content/Context;Landroid/content/Context;)Lyads/q84;

    move-result-object v14

    move-object/from16 p6, v13

    sget-object v13, Lyads/hw3;->j:Lyads/hw3;

    iget-object v13, v13, Lyads/hw3;->b:Ljava/lang/String;

    invoke-static {v1, v13}, Lyads/gw3;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    if-eqz v13, :cond_4

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    goto :goto_4

    :cond_4
    const/4 v13, 0x0

    :goto_4
    invoke-direct {v15, v14, v13, v5}, Lyads/tf5;-><init>(Lyads/q84;ZLyads/t5;)V

    new-instance v13, Lyads/xe;

    invoke-direct {v13}, Lyads/xe;-><init>()V

    new-instance v14, Lyads/qj2;

    invoke-direct {v14, v1, v5}, Lyads/qj2;-><init>(Landroid/content/Context;Lyads/t5;)V

    move-object/from16 p7, v14

    new-instance v14, Lyads/ie;

    invoke-direct {v14, v1}, Lyads/ie;-><init>(Landroid/content/Context;)V

    move-object/from16 v16, v14

    new-instance v14, Lcom/monetization/ads/mediation/base/initialize/a;

    invoke-direct {v14, v2}, Lcom/monetization/ads/mediation/base/initialize/a;-><init>(Lyads/bf5;)V

    move-object/from16 v17, v14

    new-instance v14, Lyads/qz2;

    move-object/from16 v18, v13

    iget-object v13, v12, Lyads/do6;->a:Landroid/content/Context;

    invoke-static {v13, v13}, Lyads/mw;->a(Landroid/content/Context;Landroid/content/Context;)Lyads/q84;

    move-result-object v13

    invoke-direct {v14, v4, v13}, Lyads/qz2;-><init>(Landroid/content/Context;Lyads/q84;)V

    new-instance v13, Lyads/ts3;

    iget-object v12, v12, Lyads/do6;->a:Landroid/content/Context;

    invoke-static {v12, v12}, Lyads/mw;->a(Landroid/content/Context;Landroid/content/Context;)Lyads/q84;

    move-result-object v12

    move-object/from16 v19, v14

    const/16 v14, 0x6e

    invoke-direct {v13, v4, v12, v14}, Lyads/ts3;-><init>(Landroid/content/Context;Lyads/q84;I)V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lyads/rf5;->a:Landroid/content/Context;

    iput-object v2, v0, Lyads/rf5;->b:Lyads/bf5;

    move-object/from16 v1, p3

    iput-object v1, v0, Lyads/rf5;->c:Ly22;

    iput-object v5, v0, Lyads/rf5;->d:Lyads/t5;

    iput-object v7, v0, Lyads/rf5;->e:Lyads/wn2;

    iput-object v6, v0, Lyads/rf5;->f:Lyads/ed;

    iput-object v9, v0, Lyads/rf5;->g:Lyads/zg5;

    iput-object v4, v0, Lyads/rf5;->h:Landroid/content/Context;

    iput-object v10, v0, Lyads/rf5;->i:Lyads/sb3;

    iput-object v11, v0, Lyads/rf5;->j:Lyads/sd;

    iput-object v3, v0, Lyads/rf5;->k:Lyads/oe5;

    iput-object v8, v0, Lyads/rf5;->l:Lyads/qh;

    move-object/from16 v1, p6

    iput-object v1, v0, Lyads/rf5;->m:Lyads/j4;

    move-object/from16 v1, p5

    iput-object v1, v0, Lyads/rf5;->n:Lyads/ih5;

    iput-object v15, v0, Lyads/rf5;->o:Lyads/tf5;

    move-object/from16 v1, v18

    iput-object v1, v0, Lyads/rf5;->p:Lyads/xe;

    move-object/from16 v1, p7

    iput-object v1, v0, Lyads/rf5;->q:Lyads/qj2;

    move-object/from16 v1, v16

    iput-object v1, v0, Lyads/rf5;->r:Lyads/ie;

    move-object/from16 v1, v17

    iput-object v1, v0, Lyads/rf5;->s:Lcom/monetization/ads/mediation/base/initialize/a;

    move-object/from16 v1, v19

    iput-object v1, v0, Lyads/rf5;->t:Lyads/qz2;

    iput-object v13, v0, Lyads/rf5;->u:Lyads/ts3;

    new-instance v1, Lyads/rb3;

    iget-object v2, v7, Lyads/wn2;->a:Lyads/vn2;

    new-instance v3, Lyads/c5;

    invoke-direct {v3}, Lyads/c5;-><init>()V

    invoke-direct {v1, v2, v3}, Lyads/rb3;-><init>(Lyads/vn2;Lyads/c5;)V

    iput-object v1, v0, Lyads/rf5;->v:Lyads/rb3;

    return-void
.end method

.method public static final a(Lyads/yl0;)Lyads/n13;
    .locals 0

    .line 1419
    invoke-virtual {p0}, Lyads/yl0;->a()Lyads/n13;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lf02;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p1, Lyads/pf5;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lyads/pf5;

    iget v1, v0, Lyads/pf5;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lyads/pf5;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/pf5;

    invoke-direct {v0, p0, p1}, Lyads/pf5;-><init>(Lyads/rf5;Lf02;)V

    :goto_0
    iget-object p1, v0, Lyads/pf5;->d:Ljava/lang/Object;

    .line 1353
    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    .line 1354
    iget v2, v0, Lyads/pf5;->f:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object v1, v0, Lyads/pf5;->c:Lyads/s5;

    iget-object v0, v0, Lyads/pf5;->b:Lyads/t5;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    .line 1355
    iget-object p1, p0, Lyads/rf5;->d:Lyads/t5;

    sget-object v2, Lyads/s5;->d:Lyads/s5;

    .line 1356
    invoke-virtual {p1, v2, v3}, Lyads/t5;->a(Lyads/s5;Ljava/lang/Object;)V

    .line 1357
    iget-object v5, p0, Lyads/rf5;->j:Lyads/sd;

    iget-object v6, p0, Lyads/rf5;->h:Landroid/content/Context;

    iput-object p1, v0, Lyads/pf5;->b:Lyads/t5;

    iput-object v2, v0, Lyads/pf5;->c:Lyads/s5;

    iput v4, v0, Lyads/pf5;->f:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1358
    sget-object v5, Lqo2;->a:Loi2;

    .line 1359
    sget-object v5, Lsh2;->c:Lsh2;

    .line 1360
    new-instance v7, Lyads/rd;

    invoke-direct {v7, v6, v3}, Lyads/rd;-><init>(Landroid/content/Context;Le02;)V

    .line 1361
    invoke-static {v5, v7, v0}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    move-object v1, v2

    .line 1362
    :goto_1
    check-cast p1, Lyads/kd;

    if-eqz p1, :cond_4

    .line 1363
    iget-object v2, p0, Lyads/rf5;->f:Lyads/ed;

    .line 1364
    iget-object v3, p1, Lyads/kd;->a:Lyads/id;

    .line 1365
    iput-object v3, v2, Lyads/ed;->a:Lyads/id;

    .line 1366
    iget-object v5, p1, Lyads/kd;->b:Lyads/id;

    .line 1367
    iput-object v5, v2, Lyads/ed;->b:Lyads/id;

    .line 1368
    iget-boolean v5, p1, Lyads/kd;->c:Z

    .line 1369
    iput-boolean v5, v2, Lyads/ed;->c:Z

    .line 1370
    iget-object p1, p1, Lyads/kd;->d:Ljava/lang/String;

    .line 1371
    iput-object p1, v2, Lyads/ed;->d:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 1372
    iget-object p0, p0, Lyads/rf5;->e:Lyads/wn2;

    .line 1373
    iget-object p0, p0, Lyads/wn2;->a:Lyads/vn2;

    .line 1374
    iput-boolean v4, p0, Lyads/vn2;->f:Z

    .line 1375
    :cond_4
    sget-object p0, Lj59;->a:Lj59;

    .line 1376
    invoke-virtual {v0, v1}, Lyads/t5;->a(Lyads/s5;)V

    return-object p0
.end method

.method public final a(Lyads/fe5;Lf02;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lyads/qf5;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lyads/qf5;

    iget v1, v0, Lyads/qf5;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lyads/qf5;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/qf5;

    invoke-direct {v0, p0, p2}, Lyads/qf5;-><init>(Lyads/rf5;Lf02;)V

    :goto_0
    iget-object p2, v0, Lyads/qf5;->b:Ljava/lang/Object;

    .line 1343
    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    .line 1344
    iget v2, v0, Lyads/qf5;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    .line 1345
    :try_start_1
    new-instance p2, Lyads/yl0;

    .line 1346
    iget-object v2, p0, Lyads/rf5;->h:Landroid/content/Context;

    .line 1347
    iget-object v4, p0, Lyads/rf5;->b:Lyads/bf5;

    .line 1348
    iget-object p0, p0, Lyads/rf5;->c:Ly22;

    .line 1349
    invoke-direct {p2, v2, v4, p0}, Lyads/yl0;-><init>(Landroid/content/Context;Lyads/bf5;Ly22;)V

    .line 1350
    new-instance p0, Lyads/co5;

    new-instance v2, Lib7;

    const/4 v4, 0x3

    invoke-direct {v2, p2, v4}, Lib7;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p0, p1, v2}, Lyads/co5;-><init>(Lyads/fe5;Lll3;)V

    .line 1351
    iput v3, v0, Lyads/qf5;->d:I

    invoke-virtual {p0, v0}, Lyads/co5;->a(Lf02;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p0, v1, :cond_3

    return-object v1

    .line 1352
    :catch_0
    :cond_3
    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final a(Lyads/kg3;Lf02;)Ljava/lang/Object;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lyads/kf5;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lyads/kf5;

    iget v3, v2, Lyads/kf5;->h:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lyads/kf5;->h:I

    goto :goto_0

    :cond_0
    new-instance v2, Lyads/kf5;

    invoke-direct {v2, v0, v1}, Lyads/kf5;-><init>(Lyads/rf5;Lf02;)V

    :goto_0
    iget-object v1, v2, Lyads/kf5;->f:Ljava/lang/Object;

    sget-object v3, La32;->COROUTINE_SUSPENDED:La32;

    iget v4, v2, Lyads/kf5;->h:I

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v4, :cond_6

    if-eq v4, v10, :cond_5

    if-eq v4, v8, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v2, v2, Lyads/kf5;->b:Ljava/lang/Object;

    check-cast v2, Lyads/ze5;

    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    move/from16 v16, v10

    goto/16 :goto_d

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v11

    :cond_2
    iget-object v4, v2, Lyads/kf5;->d:Lyads/s5;

    iget-object v6, v2, Lyads/kf5;->c:Lyads/t5;

    iget-object v8, v2, Lyads/kf5;->b:Ljava/lang/Object;

    check-cast v8, Lyads/kg3;

    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    move/from16 v16, v10

    goto/16 :goto_6

    :cond_3
    iget-object v4, v2, Lyads/kf5;->d:Lyads/s5;

    iget-object v8, v2, Lyads/kf5;->c:Lyads/t5;

    iget-object v12, v2, Lyads/kf5;->b:Ljava/lang/Object;

    check-cast v12, Lyads/kg3;

    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    move-object v6, v8

    move/from16 v16, v10

    move-object v8, v12

    goto/16 :goto_5

    :cond_4
    iget-object v4, v2, Lyads/kf5;->e:Lmb4;

    iget-object v8, v2, Lyads/kf5;->d:Lyads/s5;

    iget-object v12, v2, Lyads/kf5;->c:Lyads/t5;

    iget-object v13, v2, Lyads/kf5;->b:Ljava/lang/Object;

    check-cast v13, Lyads/kg3;

    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    move/from16 v16, v10

    goto/16 :goto_4

    :cond_5
    iget-object v4, v2, Lyads/kf5;->b:Ljava/lang/Object;

    check-cast v4, Lyads/kg3;

    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object v1, v0, Lyads/rf5;->p:Lyads/xe;

    iget-object v1, v1, Lyads/xe;->a:Lyads/ye;

    sget-object v1, Lqo2;->a:Loi2;

    sget-object v1, Lsh2;->c:Lsh2;

    new-instance v4, Lyads/lf5;

    invoke-direct {v4, v0, v11}, Lyads/lf5;-><init>(Lyads/rf5;Le02;)V

    move-object/from16 v12, p1

    iput-object v12, v2, Lyads/kf5;->b:Ljava/lang/Object;

    iput v10, v2, Lyads/kf5;->h:I

    invoke-static {v1, v4, v2}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_7

    goto/16 :goto_c

    :cond_7
    move-object v4, v12

    :goto_1
    iget-object v1, v0, Lyads/rf5;->g:Lyads/zg5;

    iget-object v12, v0, Lyads/rf5;->h:Landroid/content/Context;

    invoke-virtual {v1, v12}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-boolean v1, v1, Lyads/fe5;->C0:Z

    if-ne v1, v10, :cond_8

    move v1, v10

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    :goto_2
    iget-object v12, v0, Lyads/rf5;->d:Lyads/t5;

    sget-object v13, Lyads/s5;->i:Lyads/s5;

    invoke-virtual {v12, v13, v11}, Lyads/t5;->a(Lyads/s5;Ljava/lang/Object;)V

    iget-object v14, v0, Lyads/rf5;->r:Lyads/ie;

    iget-object v15, v0, Lyads/rf5;->h:Landroid/content/Context;

    invoke-virtual {v14, v15}, Lyads/ie;->a(Landroid/content/Context;)V

    iget-object v14, v0, Lyads/rf5;->h:Landroid/content/Context;

    iget-object v15, v0, Lyads/rf5;->b:Lyads/bf5;

    check-cast v15, Lyads/do6;

    iget-object v15, v15, Lyads/do6;->a:Landroid/content/Context;

    new-instance v9, Lyads/lm6;

    invoke-direct {v9, v15}, Lyads/lm6;-><init>(Landroid/content/Context;)V

    invoke-static {v15, v9}, Lyads/re;->a(Landroid/content/Context;Lyads/lm6;)Lyads/q84;

    move-result-object v9

    invoke-static {v14, v9}, Lyads/g46;->a(Landroid/content/Context;Lyads/q84;)V

    iget-object v9, v0, Lyads/rf5;->h:Landroid/content/Context;

    iget-object v14, v0, Lyads/rf5;->b:Lyads/bf5;

    check-cast v14, Lyads/do6;

    iget-object v14, v14, Lyads/do6;->a:Landroid/content/Context;

    new-instance v15, Lyads/lm6;

    invoke-direct {v15, v14}, Lyads/lm6;-><init>(Landroid/content/Context;)V

    invoke-static {v14, v15}, Lyads/re;->a(Landroid/content/Context;Lyads/lm6;)Lyads/q84;

    move-result-object v14

    invoke-static {v9, v14}, Lyads/nf;->a(Landroid/content/Context;Lyads/q84;)V

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x1e

    if-lt v9, v14, :cond_9

    sget-object v9, Lyads/zh;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v9, v0, Lyads/rf5;->a:Landroid/content/Context;

    iget-object v14, v0, Lyads/rf5;->b:Lyads/bf5;

    check-cast v14, Lyads/do6;

    iget-object v14, v14, Lyads/do6;->a:Landroid/content/Context;

    new-instance v15, Lyads/lm6;

    invoke-direct {v15, v14}, Lyads/lm6;-><init>(Landroid/content/Context;)V

    invoke-static {v14, v15}, Lyads/re;->a(Landroid/content/Context;Lyads/lm6;)Lyads/q84;

    move-result-object v14

    invoke-static {v9, v14}, Lyads/zh;->a(Landroid/content/Context;Lyads/q84;)V

    :cond_9
    iget-object v9, v0, Lyads/rf5;->g:Lyads/zg5;

    iget-object v14, v0, Lyads/rf5;->h:Landroid/content/Context;

    invoke-virtual {v9, v14}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v9

    if-eqz v9, :cond_a

    iget-object v9, v9, Lyads/fe5;->K0:Lyads/fz2;

    if-eqz v9, :cond_a

    iget-object v9, v9, Lyads/fz2;->a:Lyads/nz2;

    if-nez v9, :cond_b

    :cond_a
    move/from16 v16, v10

    goto :goto_3

    :cond_b
    iget-object v14, v0, Lyads/rf5;->t:Lyads/qz2;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v15, Lyads/c65;

    move/from16 v16, v10

    sget-object v10, Lyads/cz2;->b:Lyads/cz2;

    iget-object v5, v9, Lyads/nz2;->b:Ljava/lang/String;

    invoke-direct {v15, v10, v5}, Lyads/c65;-><init>(Lyads/cz2;Ljava/lang/String;)V

    new-instance v5, Lyads/c65;

    sget-object v10, Lyads/cz2;->c:Lyads/cz2;

    iget-object v6, v9, Lyads/nz2;->c:Ljava/lang/String;

    invoke-direct {v5, v10, v6}, Lyads/c65;-><init>(Lyads/cz2;Ljava/lang/String;)V

    new-instance v6, Lyads/c65;

    sget-object v10, Lyads/cz2;->d:Lyads/cz2;

    iget-object v8, v9, Lyads/nz2;->d:Ljava/lang/String;

    invoke-direct {v6, v10, v8}, Lyads/c65;-><init>(Lyads/cz2;Ljava/lang/String;)V

    new-instance v8, Lyads/c65;

    sget-object v10, Lyads/cz2;->e:Lyads/cz2;

    iget-object v9, v9, Lyads/nz2;->a:Ljava/lang/String;

    invoke-direct {v8, v10, v9}, Lyads/c65;-><init>(Lyads/cz2;Ljava/lang/String;)V

    filled-new-array {v15, v5, v6, v8}, [Lyads/c65;

    move-result-object v5

    invoke-static {v5}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iget-object v6, v14, Lyads/qz2;->b:Ly22;

    new-instance v8, Lyads/pz2;

    invoke-direct {v8, v14, v5, v11}, Lyads/pz2;-><init>(Lyads/qz2;Ljava/util/List;Le02;)V

    invoke-static {v6, v11, v11, v8, v7}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    :goto_3
    iget-object v5, v0, Lyads/rf5;->c:Ly22;

    new-instance v6, Lyads/nf5;

    invoke-direct {v6, v1, v0, v11}, Lyads/nf5;-><init>(ZLyads/rf5;Le02;)V

    invoke-static {v5, v11, v11, v6, v7}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object v1

    invoke-virtual {v0}, Lyads/rf5;->a()V

    iput-object v4, v2, Lyads/kf5;->b:Ljava/lang/Object;

    iput-object v12, v2, Lyads/kf5;->c:Lyads/t5;

    iput-object v13, v2, Lyads/kf5;->d:Lyads/s5;

    iput-object v1, v2, Lyads/kf5;->e:Lmb4;

    const/4 v5, 0x2

    iput v5, v2, Lyads/kf5;->h:I

    invoke-virtual {v0, v2}, Lyads/rf5;->a(Lf02;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_c

    goto/16 :goto_c

    :cond_c
    move-object v8, v13

    move-object v13, v4

    move-object v4, v1

    :goto_4
    iput-object v13, v2, Lyads/kf5;->b:Ljava/lang/Object;

    iput-object v12, v2, Lyads/kf5;->c:Lyads/t5;

    iput-object v8, v2, Lyads/kf5;->d:Lyads/s5;

    iput-object v11, v2, Lyads/kf5;->e:Lmb4;

    iput v7, v2, Lyads/kf5;->h:I

    invoke-interface {v4, v2}, Lmb4;->e0(Le02;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_d

    goto/16 :goto_c

    :cond_d
    move-object v4, v8

    move-object v6, v12

    move-object v8, v13

    :goto_5
    iput-object v8, v2, Lyads/kf5;->b:Ljava/lang/Object;

    iput-object v6, v2, Lyads/kf5;->c:Lyads/t5;

    iput-object v4, v2, Lyads/kf5;->d:Lyads/s5;

    const/4 v1, 0x4

    iput v1, v2, Lyads/kf5;->h:I

    invoke-virtual {v0, v8, v2}, Lyads/rf5;->b(Lyads/kg3;Lf02;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_e

    goto/16 :goto_c

    :cond_e
    :goto_6
    check-cast v1, Lyads/ze5;

    invoke-virtual {v6, v4}, Lyads/t5;->a(Lyads/s5;)V

    instance-of v4, v1, Lyads/ye5;

    if-eqz v4, :cond_1a

    iget-object v4, v0, Lyads/rf5;->o:Lyads/tf5;

    move-object v5, v1

    check-cast v5, Lyads/ye5;

    iget-object v6, v5, Lyads/ye5;->a:Lyads/fe5;

    iget-object v9, v5, Lyads/ye5;->b:Lyads/p50;

    iget-object v10, v4, Lyads/tf5;->a:Lyads/q84;

    new-instance v12, Lyads/g75;

    sget-object v13, Lyads/e75;->c:Lyads/e75;

    const-string v13, "creation_date"

    iget-object v14, v4, Lyads/tf5;->c:Lyads/eu5;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    new-instance v15, Lb36;

    invoke-direct {v15, v13, v14}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v13, "startup_version"

    iget-object v14, v6, Lyads/fe5;->f0:Ljava/lang/String;

    new-instance v7, Lb36;

    invoke-direct {v7, v13, v14}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v13, "user_consent"

    iget-object v14, v6, Lyads/fe5;->O:Ljava/lang/Boolean;

    new-instance v11, Lb36;

    invoke-direct {v11, v13, v14}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v13, "ad_host"

    iget-object v6, v6, Lyads/fe5;->Y:Ljava/lang/String;

    new-instance v14, Lb36;

    invoke-direct {v14, v13, v6}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v6, "integrated_mediation"

    iget-object v13, v4, Lyads/tf5;->d:Lyads/s54;

    move-object/from16 v19, v7

    iget-boolean v7, v4, Lyads/tf5;->b:Z

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v7, :cond_f

    const-string v7, "ads-mediation"

    :goto_7
    move-object/from16 v20, v11

    goto :goto_8

    :cond_f
    const-string v7, "single"

    goto :goto_7

    :goto_8
    invoke-static {}, Lyads/u54;->a()Ljava/util/List;

    move-result-object v11

    iget-object v13, v13, Lyads/s54;->a:Lyads/z64;

    invoke-virtual {v13, v11}, Lyads/z64;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v11

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_11

    move-object/from16 p1, v11

    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v18, v11

    check-cast v18, Lyads/m64;

    invoke-static/range {v18 .. v18}, Lyads/n64;->a(Lyads/m64;)Z

    move-result v18

    if-eqz v18, :cond_10

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    move-object/from16 v11, p1

    goto :goto_9

    :cond_11
    const-string v11, "integration_type"

    move-object/from16 v21, v14

    new-instance v14, Lb36;

    invoke-direct {v14, v11, v7}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v7, "networks"

    new-instance v11, Ljava/util/ArrayList;

    move-object/from16 v18, v15

    const/16 v15, 0xa

    invoke-static {v13, v15}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v15

    invoke-direct {v11, v15}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_12

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lyads/m64;

    move-object/from16 p1, v13

    const-string v13, "name"

    iget-object v15, v15, Lyads/m64;->a:Ljava/lang/String;

    invoke-static {v13, v15}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v13, p1

    goto :goto_a

    :cond_12
    new-instance v13, Lb36;

    invoke-direct {v13, v7, v11}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v14, v13}, [Lb36;

    move-result-object v7

    invoke-static {v7}, Ln05;->e([Lb36;)Ljava/util/Map;

    move-result-object v7

    new-instance v11, Lb36;

    invoke-direct {v11, v6, v7}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v6, "call_source"

    iget-object v7, v8, Lyads/kg3;->b:Ljava/lang/String;

    new-instance v8, Lb36;

    invoke-direct {v8, v6, v7}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v6, "configuration_source"

    if-eqz v9, :cond_13

    iget-object v7, v9, Lyads/p50;->b:Ljava/lang/String;

    goto :goto_b

    :cond_13
    const/4 v7, 0x0

    :goto_b
    new-instance v9, Lb36;

    invoke-direct {v9, v6, v7}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v4, v4, Lyads/tf5;->e:Lyads/sf5;

    invoke-virtual {v4}, Lyads/sf5;->a()Ljava/util/Map;

    move-result-object v4

    const-string v6, "durations"

    new-instance v7, Lb36;

    invoke-direct {v7, v6, v4}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v4, Lkotlin/KotlinVersion;->CURRENT:Lkotlin/KotlinVersion;

    invoke-virtual {v4}, Lkotlin/KotlinVersion;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "kotlin_stdlib_version"

    new-instance v13, Lb36;

    invoke-direct {v13, v6, v4}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v25, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v22, v11

    move-object/from16 v26, v13

    filled-new-array/range {v18 .. v26}, [Lb36;

    move-result-object v4

    invoke-static {v4}, Ln05;->e([Lb36;)Ljava/util/Map;

    move-result-object v4

    const-string v6, "sdk_configuration_success"

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7, v4}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    const/4 v4, 0x0

    invoke-direct {v12, v6, v7, v4}, Lyads/g75;-><init>(Ljava/lang/String;Ljava/util/Map;Lyads/c;)V

    invoke-virtual {v10, v12}, Lyads/q84;->a(Lyads/g75;)V

    iget-object v6, v0, Lyads/rf5;->n:Lyads/ih5;

    invoke-virtual {v6}, Lyads/ih5;->a()V

    invoke-static {}, Lyads/ka4;->a()V

    iget-object v5, v5, Lyads/ye5;->a:Lyads/fe5;

    iget-boolean v5, v5, Lyads/fe5;->A:Z

    if-eqz v5, :cond_14

    iget-object v5, v0, Lyads/rf5;->u:Lyads/ts3;

    iput-object v1, v2, Lyads/kf5;->b:Ljava/lang/Object;

    iput-object v4, v2, Lyads/kf5;->c:Lyads/t5;

    iput-object v4, v2, Lyads/kf5;->d:Lyads/s5;

    const/4 v4, 0x5

    iput v4, v2, Lyads/kf5;->h:I

    invoke-virtual {v5, v2}, Lyads/ts3;->a(Lf02;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_14

    :goto_c
    return-object v3

    :cond_14
    move-object v2, v1

    :goto_d
    iget-object v1, v0, Lyads/rf5;->a:Landroid/content/Context;

    move-object v3, v2

    check-cast v3, Lyads/ye5;

    iget-object v3, v3, Lyads/ye5;->a:Lyads/fe5;

    iget-object v4, v0, Lyads/rf5;->s:Lcom/monetization/ads/mediation/base/initialize/a;

    iget-object v5, v0, Lyads/rf5;->c:Ly22;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v3, Lyads/fe5;->e0:Lyads/dt;

    if-nez v6, :cond_15

    goto :goto_f

    :cond_15
    iget-boolean v7, v3, Lyads/fe5;->c0:Z

    if-eqz v7, :cond_16

    new-instance v7, Lyads/s44;

    const/4 v8, 0x0

    invoke-direct {v7, v4, v1, v6, v8}, Lyads/s44;-><init>(Lcom/monetization/ads/mediation/base/initialize/a;Landroid/content/Context;Lyads/dt;Le02;)V

    const/4 v9, 0x3

    invoke-static {v5, v8, v8, v7, v9}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    goto :goto_e

    :cond_16
    const/4 v8, 0x0

    const/4 v9, 0x3

    :goto_e
    iget-boolean v3, v3, Lyads/fe5;->d0:Z

    if-eqz v3, :cond_17

    new-instance v3, Lyads/t44;

    invoke-direct {v3, v4, v1, v6, v8}, Lyads/t44;-><init>(Lcom/monetization/ads/mediation/base/initialize/a;Landroid/content/Context;Lyads/dt;Le02;)V

    invoke-static {v5, v8, v8, v3, v9}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    :cond_17
    :goto_f
    sget-object v1, Lyads/rf5;->w:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v3, Lyads/rf5;->x:Z

    if-eqz v3, :cond_18

    const/4 v3, 0x0

    goto :goto_10

    :cond_18
    sput-boolean v16, Lyads/rf5;->x:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v3, v16

    :goto_10
    monitor-exit v1

    if-eqz v3, :cond_19

    iget-object v1, v0, Lyads/rf5;->c:Ly22;

    new-instance v3, Lyads/mf5;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v2, v4}, Lyads/mf5;-><init>(Lyads/rf5;Lyads/ze5;Le02;)V

    const/4 v9, 0x3

    invoke-static {v1, v4, v4, v3, v9}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    :cond_19
    new-instance v1, Lyads/ff5;

    iget-object v2, v0, Lyads/rf5;->f:Lyads/ed;

    iget-object v3, v0, Lyads/rf5;->e:Lyads/wn2;

    iget-object v3, v3, Lyads/wn2;->a:Lyads/vn2;

    invoke-direct {v1, v2, v3}, Lyads/ff5;-><init>(Lyads/ed;Lyads/vn2;)V

    goto/16 :goto_13

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1a
    instance-of v2, v1, Lyads/xe5;

    if-eqz v2, :cond_2d

    iget-object v2, v0, Lyads/rf5;->m:Lyads/j4;

    check-cast v1, Lyads/xe5;

    iget-object v3, v1, Lyads/xe5;->a:Lyads/hi6;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v3, Lyads/i4;

    if-eqz v2, :cond_1b

    check-cast v3, Lyads/i4;

    iget-object v2, v3, Lyads/i4;->c:Lyads/o4;

    const/4 v4, 0x0

    invoke-static {v4, v2}, Lyads/p4;->a(Lyads/e4;Lyads/o4;)Lyads/m4;

    move-result-object v2

    goto :goto_11

    :cond_1b
    sget-object v2, Lyads/o8;->b:Lyads/m4;

    :goto_11
    iget-object v3, v0, Lyads/rf5;->o:Lyads/tf5;

    iget-object v1, v1, Lyads/xe5;->b:Lyads/p50;

    iget-object v4, v3, Lyads/tf5;->a:Lyads/q84;

    new-instance v5, Lyads/g75;

    sget-object v6, Lyads/e75;->c:Lyads/e75;

    const-string v6, "failure_reason"

    iget-object v7, v2, Lyads/m4;->b:Ljava/lang/String;

    new-instance v9, Lb36;

    invoke-direct {v9, v6, v7}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v6, "call_source"

    iget-object v7, v8, Lyads/kg3;->b:Ljava/lang/String;

    new-instance v8, Lb36;

    invoke-direct {v8, v6, v7}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v6, "configuration_source"

    if-eqz v1, :cond_1c

    iget-object v1, v1, Lyads/p50;->b:Ljava/lang/String;

    goto :goto_12

    :cond_1c
    const/4 v1, 0x0

    :goto_12
    new-instance v7, Lb36;

    invoke-direct {v7, v6, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, v3, Lyads/tf5;->e:Lyads/sf5;

    invoke-virtual {v1}, Lyads/sf5;->a()Ljava/util/Map;

    move-result-object v1

    const-string v3, "durations"

    new-instance v6, Lb36;

    invoke-direct {v6, v3, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lkotlin/KotlinVersion;->CURRENT:Lkotlin/KotlinVersion;

    invoke-virtual {v1}, Lkotlin/KotlinVersion;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "kotlin_stdlib_version"

    new-instance v10, Lb36;

    invoke-direct {v10, v3, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v9, v8, v7, v6, v10}, [Lb36;

    move-result-object v1

    invoke-static {v1}, Ln05;->e([Lb36;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "sdk_configuration_failure"

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    const/4 v8, 0x0

    invoke-direct {v5, v3, v6, v8}, Lyads/g75;-><init>(Ljava/lang/String;Ljava/util/Map;Lyads/c;)V

    invoke-virtual {v4, v5}, Lyads/q84;->a(Lyads/g75;)V

    new-instance v1, Lyads/ef5;

    invoke-direct {v1, v2}, Lyads/ef5;-><init>(Lyads/m4;)V

    :goto_13
    iget-object v0, v0, Lyads/rf5;->l:Lyads/qh;

    iget-object v2, v0, Lyads/qh;->c:Lyads/zg5;

    iget-object v3, v0, Lyads/qh;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v2

    if-eqz v2, :cond_1d

    iget-boolean v3, v2, Lyads/fe5;->J:Z

    goto :goto_14

    :cond_1d
    const/4 v3, 0x0

    :goto_14
    if-eqz v3, :cond_2c

    sget-object v3, Lyads/qh;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    move/from16 v4, v16

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    if-nez v3, :cond_2c

    if-eqz v2, :cond_1e

    iget-boolean v2, v2, Lyads/fe5;->K:Z

    if-ne v2, v4, :cond_1e

    move v10, v4

    goto :goto_15

    :cond_1e
    const/4 v10, 0x0

    :goto_15
    iget-object v2, v0, Lyads/qh;->e:Lyads/qt2;

    iget-object v3, v2, Lyads/qt2;->a:Lyads/zu3;

    check-cast v3, Lyads/av3;

    iget-object v3, v3, Lyads/av3;->d:Lcl4;

    invoke-interface {v3}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1f
    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lyads/qt2;->a:Lyads/zu3;

    check-cast v6, Lyads/av3;

    invoke-virtual {v6, v5}, Lyads/av3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1f

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_20
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_21
    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lyads/qt2;->b:Lyads/ot2;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    if-nez v5, :cond_22

    goto/16 :goto_1c

    :cond_22
    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v5, Lyads/n70;->c:Lyads/m70;

    const-string v7, "ad_type"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lyads/m70;->a(Ljava/lang/String;)Lyads/n70;

    move-result-object v12

    if-nez v12, :cond_23

    goto :goto_1c

    :cond_23
    const-string v5, "start_time"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    const-string v5, "false_click"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v7, Lorg/json/JSONObject;

    if-nez v5, :cond_24

    goto :goto_18

    :cond_24
    invoke-direct {v7, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "url"

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "interval"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    new-instance v9, Lyads/mt2;

    invoke-direct {v9, v5, v7, v8}, Lyads/mt2;-><init>(Ljava/lang/String;J)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v16, v9

    goto :goto_19

    :catch_0
    :goto_18
    const/16 v16, 0x0

    :goto_19
    :try_start_3
    invoke-static {v6}, Lyads/ot2;->a(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v17

    const-string v5, "ab_experiments"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lyads/d;->a(Ljava/lang/String;)Lyads/c;

    move-result-object v18

    invoke-static {}, Lyads/q1;->values()[Lyads/q1;

    move-result-object v5

    array-length v7, v5

    const/4 v8, 0x0

    :goto_1a
    if-ge v8, v7, :cond_26

    aget-object v9, v5, v8

    iget-object v11, v9, Lyads/q1;->b:Ljava/lang/String;

    const-string v15, "type"

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v11, v15}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_25

    move-object v15, v9

    goto :goto_1b

    :cond_25
    add-int/lit8 v8, v8, 0x1

    goto :goto_1a

    :cond_26
    const/4 v15, 0x0

    :goto_1b
    if-nez v15, :cond_27

    goto :goto_1c

    :cond_27
    new-instance v11, Lyads/nt2;

    invoke-direct/range {v11 .. v18}, Lyads/nt2;-><init>(Lyads/n70;JLyads/q1;Lyads/mt2;Ljava/util/Map;Lyads/c;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1d

    :catchall_1
    :goto_1c
    const/4 v11, 0x0

    :goto_1d
    if-eqz v11, :cond_21

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17

    :cond_28
    invoke-static {v3}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/nt2;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v3, Lyads/nt2;->b:J

    sub-long/2addr v4, v6

    iget-object v6, v3, Lyads/nt2;->d:Lyads/mt2;

    if-eqz v6, :cond_2a

    if-eqz v10, :cond_29

    move-wide v7, v4

    goto :goto_1f

    :cond_29
    iget-wide v7, v6, Lyads/mt2;->c:J

    :goto_1f
    new-instance v9, Lyads/e4;

    iget-object v11, v3, Lyads/nt2;->a:Lyads/n70;

    invoke-direct {v9, v11}, Lyads/e4;-><init>(Lyads/n70;)V

    iget-object v11, v0, Lyads/qh;->a:Landroid/content/Context;

    iget-object v12, v0, Lyads/qh;->b:Lyads/bf5;

    new-instance v13, Lyads/ea;

    invoke-direct {v13, v11, v9, v12}, Lyads/ea;-><init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;)V

    iget-wide v11, v6, Lyads/mt2;->c:J

    cmp-long v7, v7, v11

    if-gtz v7, :cond_2a

    iget-object v6, v6, Lyads/mt2;->b:Ljava/lang/String;

    sget-object v7, Lyads/i16;->d:Lyads/i16;

    const/16 v8, 0xc

    const/4 v9, 0x0

    invoke-static {v13, v6, v7, v9, v8}, Lyads/ea;->a(Lyads/ea;Ljava/lang/String;Lyads/i16;Lyads/h75;I)V

    :cond_2a
    iget-object v6, v0, Lyads/qh;->e:Lyads/qt2;

    iget-wide v7, v3, Lyads/nt2;->b:J

    iget-object v6, v6, Lyads/qt2;->a:Lyads/zu3;

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    check-cast v6, Lyads/av3;

    invoke-virtual {v6, v7}, Lyads/av3;->d(Ljava/lang/String;)V

    iget-object v6, v3, Lyads/nt2;->e:Ljava/util/Map;

    invoke-static {v6}, Ln05;->n(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v6

    invoke-static {v4, v5}, Lyads/zp3;->a(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "interval"

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lyads/g75;

    sget-object v5, Lyads/e75;->c:Lyads/e75;

    iget-object v3, v3, Lyads/nt2;->f:Lyads/c;

    const-string v5, "returned_to_app"

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7, v6}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-direct {v4, v5, v7, v3}, Lyads/g75;-><init>(Ljava/lang/String;Ljava/util/Map;Lyads/c;)V

    iget-object v3, v0, Lyads/qh;->d:Lyads/q84;

    invoke-virtual {v3, v4}, Lyads/q84;->a(Lyads/g75;)V

    goto :goto_1e

    :cond_2b
    iget-object v0, v0, Lyads/qh;->e:Lyads/qt2;

    iget-object v0, v0, Lyads/qt2;->a:Lyads/zu3;

    check-cast v0, Lyads/av3;

    invoke-virtual {v0}, Lyads/av3;->a()V

    :cond_2c
    return-object v1

    :cond_2d
    invoke-static {}, Lme0;->e()V

    const/16 v27, 0x0

    return-object v27
.end method

.method public final a()V
    .locals 9

    .line 1377
    iget-object v0, p0, Lyads/rf5;->d:Lyads/t5;

    sget-object v1, Lyads/s5;->h:Lyads/s5;

    const/4 v2, 0x0

    .line 1378
    invoke-virtual {v0, v1, v2}, Lyads/t5;->a(Lyads/s5;Ljava/lang/Object;)V

    .line 1379
    iget-object v3, p0, Lyads/rf5;->i:Lyads/sb3;

    .line 1380
    iget-object v3, v3, Lyads/sb3;->a:Lyads/wn2;

    .line 1381
    iget-object v3, v3, Lyads/wn2;->b:Lyads/tb3;

    .line 1382
    iget-object v4, v3, Lyads/tb3;->b:Lyads/ig;

    .line 1383
    iget-object v4, v4, Lyads/ig;->d:Lyads/fg;

    if-nez v4, :cond_0

    .line 1384
    iget-object v4, v3, Lyads/tb3;->a:Lyads/vg;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1385
    :try_start_0
    iget-object v4, v4, Lyads/vg;->b:Lyads/ej0;

    .line 1386
    iget-object v4, v4, Lyads/ej0;->a:Landroid/content/Context;

    .line 1387
    invoke-static {v4}, Lio/appmetrica/analytics/AppMetrica;->getUuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v4, v2

    .line 1388
    :goto_0
    iget-object v5, v3, Lyads/tb3;->a:Lyads/vg;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1389
    :try_start_1
    iget-object v5, v5, Lyads/vg;->b:Lyads/ej0;

    .line 1390
    iget-object v5, v5, Lyads/ej0;->a:Landroid/content/Context;

    .line 1391
    invoke-static {v5}, Lio/appmetrica/analytics/AppMetrica;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-object v5, v2

    .line 1392
    :goto_1
    new-instance v6, Lyads/fg;

    invoke-direct {v6, v2, v5, v4}, Lyads/fg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    iget-object v4, v3, Lyads/tb3;->b:Lyads/ig;

    iget-object v5, v3, Lyads/tb3;->c:Landroid/content/Context;

    .line 1394
    iget-object v7, v4, Lyads/ig;->c:Ly22;

    .line 1395
    new-instance v8, Lyads/hg;

    invoke-direct {v8, v4, v5, v2}, Lyads/hg;-><init>(Lyads/ig;Landroid/content/Context;Le02;)V

    const/4 v4, 0x3

    .line 1396
    invoke-static {v7, v2, v2, v8, v4}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-object v4, v6

    .line 1397
    :cond_0
    iget-object v2, v3, Lyads/tb3;->e:Ljava/lang/String;

    .line 1398
    iget-object v3, v3, Lyads/tb3;->d:Lyads/ub3;

    .line 1399
    iget-object v5, p0, Lyads/rf5;->v:Lyads/rb3;

    iget-object p0, p0, Lyads/rf5;->h:Landroid/content/Context;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1400
    iget-object v6, v5, Lyads/rb3;->b:Lyads/c5;

    .line 1401
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v7, 0x1

    if-ne v3, v7, :cond_1

    .line 1402
    iget-object v3, v4, Lyads/fg;->a:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 1403
    invoke-virtual {v6, p0}, Lyads/c5;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_1
    invoke-static {}, Lme0;->e()V

    return-void

    .line 1404
    :cond_2
    invoke-virtual {v6, p0}, Lyads/c5;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 1405
    :cond_3
    :goto_2
    iget-object p0, v5, Lyads/rb3;->a:Lyads/vn2;

    .line 1406
    iput-object v3, p0, Lyads/vn2;->e:Ljava/lang/String;

    .line 1407
    iget-object v3, v4, Lyads/fg;->b:Ljava/lang/String;

    .line 1408
    iput-object v3, p0, Lyads/vn2;->a:Ljava/lang/String;

    .line 1409
    iget-object v3, v4, Lyads/fg;->c:Ljava/lang/String;

    .line 1410
    sget-object v4, Lyads/vn2;->h:Ljava/lang/Object;

    monitor-enter v4

    if-eqz v3, :cond_5

    .line 1411
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_4

    goto :goto_3

    .line 1412
    :cond_4
    iput-object v3, p0, Lyads/vn2;->g:Ljava/lang/String;

    goto :goto_3

    :catchall_2
    move-exception p0

    goto :goto_4

    .line 1413
    :cond_5
    :goto_3
    sget-object p0, Lj59;->a:Lj59;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1414
    monitor-exit v4

    .line 1415
    iget-object p0, v5, Lyads/rb3;->a:Lyads/vn2;

    .line 1416
    iput-object v2, p0, Lyads/vn2;->d:Ljava/lang/String;

    .line 1417
    invoke-virtual {v0, v1}, Lyads/t5;->a(Lyads/s5;)V

    return-void

    .line 1418
    :goto_4
    monitor-exit v4

    throw p0
.end method

.method public final b(Lyads/kg3;Lf02;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lyads/of5;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lyads/of5;

    iget v1, v0, Lyads/of5;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lyads/of5;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/of5;

    invoke-direct {v0, p0, p2}, Lyads/of5;-><init>(Lyads/rf5;Lf02;)V

    :goto_0
    iget-object p2, v0, Lyads/of5;->d:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lyads/of5;->f:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lyads/of5;->c:Lyads/s5;

    iget-object p1, v0, Lyads/of5;->b:Lyads/t5;

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lyads/rf5;->d:Lyads/t5;

    sget-object v2, Lyads/s5;->k:Lyads/s5;

    invoke-virtual {p2, v2, v3}, Lyads/t5;->a(Lyads/s5;Ljava/lang/Object;)V

    iget-object p0, p0, Lyads/rf5;->k:Lyads/oe5;

    iput-object p2, v0, Lyads/of5;->b:Lyads/t5;

    iput-object v2, v0, Lyads/of5;->c:Lyads/s5;

    iput v4, v0, Lyads/of5;->f:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lqo2;->a:Loi2;

    sget-object v4, Lsh2;->c:Lsh2;

    new-instance v5, Lyads/ne5;

    invoke-direct {v5, p0, p1, v3}, Lyads/ne5;-><init>(Lyads/oe5;Lyads/kg3;Le02;)V

    invoke-static {v4, v5, v0}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p2

    move-object p2, p0

    move-object p0, v2

    :goto_1
    check-cast p2, Lyads/ze5;

    invoke-virtual {p1, p0}, Lyads/t5;->a(Lyads/s5;)V

    return-object p2
.end method
