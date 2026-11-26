.class public final Lyads/qn1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/on1;


# direct methods
.method public constructor <init>(Lyads/on1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/qn1;->a:Lyads/on1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lyads/nn1;)Lyads/vq0;
    .locals 17

    move-object/from16 v0, p1

    sget-object v1, Lyads/zg5;->l:Lyads/zg5;

    if-nez v1, :cond_1

    sget-object v1, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lyads/zg5;->l:Lyads/zg5;

    if-nez v2, :cond_0

    new-instance v2, Lyads/zg5;

    invoke-direct {v2}, Lyads/zg5;-><init>()V

    sput-object v2, Lyads/zg5;->l:Lyads/zg5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    move-object v1, v2

    goto :goto_2

    :goto_1
    monitor-exit v1

    throw v0

    :cond_1
    :goto_2
    invoke-virtual {v1, v0}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-static {v1}, Lyads/je5;->a(Lyads/fe5;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_3

    :cond_2
    move-object v3, v2

    :goto_3
    if-eqz v1, :cond_3

    iget-boolean v1, v1, Lyads/fe5;->a1:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_4

    :cond_3
    move-object v1, v2

    :goto_4
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v1, Lyads/dy1;

    invoke-direct {v1, v0}, Lyads/dy1;-><init>(Landroid/content/Context;)V

    :goto_5
    move-object v13, v1

    goto :goto_6

    :cond_4
    invoke-static {v1, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lyads/cf2;->a:Lyads/bf2;

    goto :goto_5

    :cond_5
    new-instance v1, Lyads/df2;

    invoke-direct {v1, v0}, Lyads/df2;-><init>(Landroid/content/Context;)V

    goto :goto_5

    :goto_6
    new-instance v4, Lyads/qi1;

    invoke-direct {v4, v0}, Lyads/qi1;-><init>(Landroid/content/Context;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lyads/mr2;->b:[Lyads/mr2;

    move-object/from16 v1, p0

    iget-object v5, v1, Lyads/qn1;->a:Lyads/on1;

    new-instance v3, Lyads/c81;

    new-instance v6, Lyads/ff3;

    invoke-direct {v6}, Lyads/ff3;-><init>()V

    sget-object v7, Lyads/qq0;->a:Lyads/qq0;

    sget-object v9, Lyads/oa1;->a:Lyads/na1;

    sget-object v10, Lyads/xc2;->a:Lyads/xc2;

    sget-object v12, Lyads/sc1;->a:Lyads/sc1;

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    new-instance v15, Lyads/rg6;

    invoke-direct {v15}, Lyads/rg6;-><init>()V

    new-instance v16, Lyads/yf2;

    invoke-direct/range {v16 .. v16}, Lyads/yf2;-><init>()V

    invoke-direct/range {v3 .. v16}, Lyads/c81;-><init>(Lyads/oi1;Lyads/lu0;Lyads/ff3;Lyads/qq0;Ljava/util/ArrayList;Lyads/oa1;Lyads/xc2;Ljava/util/ArrayList;Lyads/sc1;Lyads/cf2;Ljava/util/HashMap;Lyads/rg6;Lyads/yf2;)V

    const-string v1, ""

    invoke-static {v0, v3, v2, v1}, Lyads/rh2;->a(Landroid/content/Context;Lyads/c81;Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;)Lyads/vq0;

    move-result-object v1

    move-object/from16 v2, p2

    iget-object v2, v2, Lyads/nn1;->b:Lyads/fo1;

    iget-object v3, v2, Lyads/fo1;->e:Lyads/db1;

    iget-object v2, v2, Lyads/fo1;->f:Lyads/qb1;

    invoke-virtual {v1, v3, v2}, Lyads/vq0;->a(Lyads/db1;Lyads/qb1;)V

    const-string v2, "orientation"

    invoke-static {v0}, Lyads/w60;->b(Landroid/content/Context;)Lyads/yq4;

    move-result-object v0

    sget-object v3, Lyads/yq4;->e:Lyads/yq4;

    if-ne v0, v3, :cond_6

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v3, "PORTRAIT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_7

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_7
    iget-object v3, v1, Lyads/vq0;->z:Lyads/ub5;

    invoke-static {v3}, Lyads/vq0;->a(Lyads/ub5;)Lyads/fs2;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lyads/l76;->a(Lyads/vq0;Ljava/lang/String;Ljava/lang/String;Lyads/fs2;)Lyads/k76;

    return-object v1
.end method
