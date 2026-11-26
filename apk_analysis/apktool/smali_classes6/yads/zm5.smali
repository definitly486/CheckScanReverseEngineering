.class public final Lyads/zm5;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lyads/ym5;Lyads/vn1;)Lyads/c81;
    .locals 14

    new-instance v1, Lyads/qi1;

    invoke-direct {v1, p0}, Lyads/qi1;-><init>(Landroid/content/Context;)V

    new-instance v0, Lyads/ua1;

    invoke-direct {v0}, Lyads/ua1;-><init>()V

    new-instance v2, Lyads/ya1;

    invoke-direct {v2}, Lyads/ya1;-><init>()V

    new-instance v3, Lyads/xa1;

    invoke-direct {v3}, Lyads/xa1;-><init>()V

    new-instance v4, Lyads/ta1;

    invoke-direct {v4}, Lyads/ta1;-><init>()V

    new-instance v5, Lyads/va1;

    invoke-direct {v5}, Lyads/va1;-><init>()V

    new-instance v6, Lyads/ab1;

    invoke-direct {v6}, Lyads/ab1;-><init>()V

    move-object v7, v6

    new-instance v6, Lyads/ma1;

    const/4 v8, 0x6

    new-array v8, v8, [Lyads/oa1;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v0, 0x1

    aput-object v2, v8, v0

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v0, 0x3

    aput-object v4, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v5, v8, v0

    invoke-direct {v6, v8}, Lyads/ma1;-><init>([Lyads/oa1;)V

    new-instance v0, Lyads/xn1;

    move-object/from16 v2, p2

    invoke-direct {v0, v2}, Lyads/xn1;-><init>(Lyads/vn1;)V

    sget-object v2, Lyads/zg5;->l:Lyads/zg5;

    if-nez v2, :cond_1

    sget-object v2, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lyads/zg5;->l:Lyads/zg5;

    if-nez v3, :cond_0

    new-instance v3, Lyads/zg5;

    invoke-direct {v3}, Lyads/zg5;-><init>()V

    sput-object v3, Lyads/zg5;->l:Lyads/zg5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v2

    move-object v2, v3

    goto :goto_2

    :goto_1
    monitor-exit v2

    throw p0

    :cond_1
    :goto_2
    invoke-virtual {v2, p0}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-static {v2}, Lyads/je5;->a(Lyads/fe5;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_3

    :cond_2
    move-object v4, v3

    :goto_3
    if-eqz v2, :cond_3

    iget-boolean v2, v2, Lyads/fe5;->a1:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :cond_3
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v2, Lyads/dy1;

    invoke-direct {v2, p0}, Lyads/dy1;-><init>(Landroid/content/Context;)V

    :goto_4
    move-object v10, v2

    goto :goto_5

    :cond_4
    invoke-static {v3, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lyads/cf2;->a:Lyads/bf2;

    goto :goto_4

    :cond_5
    new-instance v2, Lyads/df2;

    invoke-direct {v2, p0}, Lyads/df2;-><init>(Landroid/content/Context;)V

    goto :goto_4

    :goto_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sget-object p0, Lyads/mr2;->b:[Lyads/mr2;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lyads/c81;

    new-instance v2, Lyads/lu0;

    invoke-direct {v2}, Lyads/lu0;-><init>()V

    new-instance v3, Lyads/ff3;

    invoke-direct {v3}, Lyads/ff3;-><init>()V

    sget-object v4, Lyads/qq0;->a:Lyads/qq0;

    sget-object v7, Lyads/xc2;->a:Lyads/xc2;

    sget-object v9, Lyads/sc1;->a:Lyads/sc1;

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    new-instance v12, Lyads/rg6;

    invoke-direct {v12}, Lyads/rg6;-><init>()V

    new-instance v13, Lyads/yf2;

    invoke-direct {v13}, Lyads/yf2;-><init>()V

    invoke-direct/range {v0 .. v13}, Lyads/c81;-><init>(Lyads/oi1;Lyads/lu0;Lyads/ff3;Lyads/qq0;Ljava/util/ArrayList;Lyads/oa1;Lyads/xc2;Ljava/util/ArrayList;Lyads/sc1;Lyads/cf2;Ljava/util/HashMap;Lyads/rg6;Lyads/yf2;)V

    return-object v0
.end method
