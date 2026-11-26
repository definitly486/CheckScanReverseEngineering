.class public final Lyads/eo1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lyads/vn1;

.field public final d:Lcl4;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lyads/vn1;I)V
    .locals 1

    and-int/lit8 p3, p3, 0x2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    move-object p2, v0

    .line 21
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lyads/eo1;-><init>(Landroid/content/Context;Lyads/vn1;Lyads/kb0;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lyads/vn1;Lyads/kb0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/eo1;->a:Landroid/content/Context;

    iput-object p2, p0, Lyads/eo1;->b:Lyads/vn1;

    new-instance p1, Lnf0;

    const/4 p2, 0x5

    invoke-direct {p1, p0, p2}, Lnf0;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Lyads/eo1;->d:Lcl4;

    return-void
.end method

.method public static final a(Lyads/eo1;)Lyads/c81;
    .locals 14

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lyads/qi1;

    iget-object v0, p0, Lyads/eo1;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Lyads/qi1;-><init>(Landroid/content/Context;)V

    new-instance v0, Lyads/ua1;

    invoke-direct {v0}, Lyads/ua1;-><init>()V

    new-instance v2, Lyads/ya1;

    invoke-direct {v2}, Lyads/ya1;-><init>()V

    new-instance v3, Lyads/xa1;

    invoke-direct {v3}, Lyads/xa1;-><init>()V

    new-instance v4, Lyads/ta1;

    invoke-direct {v4}, Lyads/ta1;-><init>()V

    new-instance v5, Lyads/ab1;

    invoke-direct {v5}, Lyads/ab1;-><init>()V

    new-instance v6, Lyads/va1;

    invoke-direct {v6}, Lyads/va1;-><init>()V

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

    aput-object v5, v8, v0

    const/4 v0, 0x5

    aput-object v7, v8, v0

    invoke-direct {v6, v8}, Lyads/ma1;-><init>([Lyads/oa1;)V

    sget-object v0, Lyads/zg5;->l:Lyads/zg5;

    if-nez v0, :cond_1

    sget-object v2, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v2

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
    monitor-exit v2

    goto :goto_2

    :goto_1
    monitor-exit v2

    throw p0

    :cond_1
    :goto_2
    iget-object v2, p0, Lyads/eo1;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lyads/je5;->a(Lyads/fe5;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_3

    :cond_2
    move-object v3, v2

    :goto_3
    if-eqz v0, :cond_3

    iget-boolean v0, v0, Lyads/fe5;->a1:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v0, Lyads/dy1;

    iget-object v2, p0, Lyads/eo1;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lyads/dy1;-><init>(Landroid/content/Context;)V

    :goto_4
    move-object v10, v0

    goto :goto_5

    :cond_4
    invoke-static {v2, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lyads/cf2;->a:Lyads/bf2;

    goto :goto_4

    :cond_5
    new-instance v0, Lyads/df2;

    iget-object v2, p0, Lyads/eo1;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lyads/df2;-><init>(Landroid/content/Context;)V

    goto :goto_4

    :goto_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lyads/mr2;->b:[Lyads/mr2;

    iget-object p0, p0, Lyads/eo1;->b:Lyads/vn1;

    if-eqz p0, :cond_6

    new-instance v0, Lyads/xn1;

    invoke-direct {v0, p0}, Lyads/xn1;-><init>(Lyads/vn1;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    new-instance p0, Lyads/lo1;

    invoke-direct {p0}, Lyads/lo1;-><init>()V

    invoke-virtual {v8, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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
