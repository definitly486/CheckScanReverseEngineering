.class public final Lyads/m24;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lyads/l24;

.field public final b:Lyads/t24;

.field public final c:Lyads/w74;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/d9;Lyads/t5;Lyads/v24;Lyads/l34;Lyads/n24;Lyads/mt4;)V
    .locals 15

    new-instance v10, Lyads/g34;

    invoke-direct {v10}, Lyads/g34;-><init>()V

    new-instance v11, Lyads/fa;

    invoke-direct {v11}, Lyads/fa;-><init>()V

    new-instance v12, Lyads/hb;

    invoke-direct {v12}, Lyads/hb;-><init>()V

    new-instance v13, Lyads/e40;

    invoke-direct {v13}, Lyads/e40;-><init>()V

    sget-object v0, Lyads/zg5;->l:Lyads/zg5;

    if-nez v0, :cond_1

    sget-object v1, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lyads/zg5;->l:Lyads/zg5;

    if-nez v0, :cond_0

    new-instance v0, Lyads/zg5;

    invoke-direct {v0}, Lyads/zg5;-><init>()V

    sput-object v0, Lyads/zg5;->l:Lyads/zg5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    :cond_1
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object v14, v0

    move-object v0, p0

    goto :goto_2

    :goto_1
    monitor-exit v1

    throw p0

    :goto_2
    invoke-direct/range {v0 .. v14}, Lyads/m24;-><init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/d9;Lyads/t5;Lyads/v24;Lyads/l34;Lyads/n24;Lyads/mt4;Lyads/g34;Lyads/fa;Lyads/hb;Lyads/e40;Lyads/zg5;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/d9;Lyads/t5;Lyads/v24;Lyads/l34;Lyads/n24;Lyads/mt4;Lyads/g34;Lyads/fa;Lyads/hb;Lyads/e40;Lyads/zg5;)V
    .locals 13

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v8, Lyads/t24;

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p7

    move-object/from16 v6, p11

    move-object/from16 v7, p13

    move-object v0, v8

    move-object/from16 v8, p10

    invoke-direct/range {v0 .. v8}, Lyads/t24;-><init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/d9;Lyads/l34;Lyads/fa;Lyads/e40;Lyads/g34;)V

    move-object v8, v0

    iput-object v8, p0, Lyads/m24;->b:Lyads/t24;

    .line 72
    new-instance v0, Lyads/w74;

    .line 73
    new-instance v11, Ljb7;

    const/4 v1, 0x1

    invoke-direct {v11, p0, v1}, Ljb7;-><init>(Ljava/lang/Object;I)V

    .line 74
    new-instance v12, Ltl2;

    const/4 v1, 0x3

    invoke-direct {v12, p0, v1}, Ltl2;-><init>(Ljava/lang/Object;I)V

    move-object v1, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v9, p12

    move-object/from16 v10, p14

    .line 75
    invoke-direct/range {v0 .. v12}, Lyads/w74;-><init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/t5;Lyads/v24;Lyads/n24;Lyads/mt4;Lyads/t24;Lyads/hb;Lyads/zg5;Lll3;Lnl3;)V

    iput-object v0, p0, Lyads/m24;->c:Lyads/w74;

    return-void
.end method

.method public static final a(Lyads/m24;Lyads/l24;)Lj59;
    .locals 0

    .line 54
    iput-object p1, p0, Lyads/m24;->a:Lyads/l24;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/m24;)Lyads/l24;
    .locals 0

    .line 55
    iget-object p0, p0, Lyads/m24;->a:Lyads/l24;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget-object v0, p0, Lyads/m24;->b:Lyads/t24;

    iget-object p0, p0, Lyads/m24;->a:Lyads/l24;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p0, :cond_1

    iget-object v4, p0, Lyads/l24;->b:Lyads/x54;

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lyads/t24;->d:Lyads/l34;

    iget-object v2, v0, Lyads/t24;->f:Landroid/content/Context;

    iget-object p0, p0, Lyads/l24;->c:Lyads/o24;

    invoke-virtual {p0}, Lyads/o24;->b()Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v5

    sget-object p0, Lyads/l34;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lyads/e75;

    sget-object v6, Lmx2;->b:Lmx2;

    invoke-virtual/range {v1 .. v6}, Lyads/l34;->a(Landroid/content/Context;Lyads/e75;Lyads/x54;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
