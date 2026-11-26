.class public abstract Lyads/r06;
.super Lyads/es;
.source "SourceFile"


# instance fields
.field public final A:Lyads/q84;

.field public final w:Landroid/content/Context;

.field public final x:Lyads/e4;

.field public final y:Ljava/lang/Object;

.field public final z:Lyads/h85;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/e4;ILjava/lang/String;Lyads/ds;Ljava/lang/Object;Lyads/h85;Lyads/w75;Lyads/q84;)V
    .locals 11

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    move-object/from16 v2, p9

    new-instance v3, Lyads/le;

    invoke-direct {v3, p1}, Lyads/le;-><init>(Landroid/content/Context;)V

    new-instance v4, Lyads/v8;

    invoke-direct {v4}, Lyads/v8;-><init>()V

    move-object v5, p0

    move-object v6, p1

    move v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p8

    invoke-direct/range {v5 .. v10}, Lyads/es;-><init>(Landroid/content/Context;ILjava/lang/String;Lyads/ds;Lyads/w75;)V

    iput-object p1, p0, Lyads/r06;->w:Landroid/content/Context;

    iput-object p2, p0, Lyads/r06;->x:Lyads/e4;

    iput-object v0, p0, Lyads/r06;->y:Ljava/lang/Object;

    iput-object v1, p0, Lyads/r06;->z:Lyads/h85;

    iput-object v2, p0, Lyads/r06;->A:Lyads/q84;

    sget-object p2, Lyads/zg5;->l:Lyads/zg5;

    if-nez p2, :cond_1

    sget-object p2, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    sget-object p3, Lyads/zg5;->l:Lyads/zg5;

    if-nez p3, :cond_0

    new-instance p3, Lyads/zg5;

    invoke-direct {p3}, Lyads/zg5;-><init>()V

    sput-object p3, Lyads/zg5;->l:Lyads/zg5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p2

    move-object p2, p3

    goto :goto_2

    :goto_1
    monitor-exit p2

    throw p0

    :cond_1
    :goto_2
    invoke-virtual {p2, p1}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p2, Lyads/fe5;->x0:Ljava/lang/Integer;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_3

    :cond_2
    sget p2, Lyads/ra3;->a:I

    :goto_3
    invoke-virtual {v4, p1, p2}, Lyads/v8;->a(Landroid/content/Context;I)Lyads/am0;

    move-result-object p1

    iput-object p1, p0, Lyads/r75;->o:Lyads/am0;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lyads/r75;->n:Z

    iput-boolean p1, p0, Lyads/r75;->m:Z

    invoke-interface {v1, v0}, Lyads/h85;->a(Ljava/lang/Object;)Lyads/g75;

    move-result-object p0

    invoke-virtual {v2, p0}, Lyads/q84;->a(Lyads/g75;)V

    iget-object p1, p0, Lyads/g75;->a:Ljava/lang/String;

    sget-object p2, Lyads/e75;->j:Lyads/e75;

    const-string p3, "ad_request"

    invoke-static {p1, p3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lyads/g75;->b:Ljava/util/Map;

    const/4 p1, 0x0

    invoke-virtual {v3, p2, p0, p1, p1}, Lyads/le;->a(Lyads/e75;Ljava/util/Map;Ljava/lang/String;Lyads/j5;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public a(Lyads/hi6;)Lyads/hi6;
    .locals 4

    .line 59
    :try_start_0
    iget-object v0, p1, Lyads/hi6;->b:Lyads/en4;

    if-eqz v0, :cond_0

    iget v0, v0, Lyads/en4;->a:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    .line 60
    :goto_0
    iget-object v1, p0, Lyads/r06;->z:Lyads/h85;

    .line 61
    iget-object v2, p0, Lyads/r06;->y:Ljava/lang/Object;

    const/4 v3, 0x0

    .line 62
    invoke-interface {v1, v3, v0, v2, p1}, Lyads/h85;->a(Lyads/z85;ILjava/lang/Object;Lyads/hi6;)Lyads/g75;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lyads/r06;->A:Lyads/q84;

    invoke-virtual {v1, v0}, Lyads/q84;->a(Lyads/g75;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 64
    :goto_1
    iget-object p0, p0, Lyads/r06;->A:Lyads/q84;

    const-string v0, "Failed to parse network error"

    invoke-virtual {p0, v0, p1}, Lyads/q84;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    new-instance p0, Lyads/i4;

    sget-object p1, Lyads/o4;->p:Lyads/o4;

    invoke-direct {p0, p1}, Lyads/i4;-><init>(Lyads/o4;)V

    return-object p0
.end method

.method public final a(Lyads/en4;)Lyads/z85;
    .locals 2

    .line 53
    :try_start_0
    iget v0, p1, Lyads/en4;->a:I

    .line 54
    invoke-virtual {p0, p1, v0}, Lyads/r06;->a(Lyads/en4;I)Lyads/z85;

    move-result-object v1

    .line 55
    invoke-virtual {p0, p1, v1, v0}, Lyads/r06;->a(Lyads/en4;Lyads/z85;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p1

    .line 56
    iget-object p0, p0, Lyads/r06;->A:Lyads/q84;

    const-string v0, "Failed to parse network response"

    invoke-virtual {p0, v0, p1}, Lyads/q84;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    new-instance p0, Lyads/i4;

    sget-object p1, Lyads/o4;->p:Lyads/o4;

    invoke-direct {p0, p1}, Lyads/i4;-><init>(Lyads/o4;)V

    .line 58
    new-instance p1, Lyads/z85;

    invoke-direct {p1, p0}, Lyads/z85;-><init>(Lyads/hi6;)V

    return-object p1
.end method

.method public abstract a(Lyads/en4;I)Lyads/z85;
.end method

.method public final a(Lyads/en4;Lyads/z85;I)V
    .locals 3

    iget-object v0, p0, Lyads/r06;->z:Lyads/h85;

    iget-object v1, p0, Lyads/r06;->y:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {v0, p2, p3, v1, v2}, Lyads/h85;->a(Lyads/z85;ILjava/lang/Object;Lyads/hi6;)Lyads/g75;

    move-result-object p2

    iget-object p3, p2, Lyads/g75;->b:Ljava/util/Map;

    invoke-static {p3}, Lv39;->e(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v2, p3

    :cond_0
    if-nez v2, :cond_1

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_1
    iget-object p3, p1, Lyads/en4;->c:Ljava/util/Map;

    sget-object v0, Lyads/oa3;->q:Lyads/oa3;

    invoke-static {p3, v0}, Lyads/v83;->b(Ljava/util/Map;Lyads/oa3;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    const-string v0, "server_log_id"

    invoke-interface {v2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object p1, p1, Lyads/en4;->c:Ljava/util/Map;

    if-eqz p1, :cond_3

    invoke-static {p1}, Lyads/e9;->a(Ljava/util/Map;)Lyads/c;

    :cond_3
    iget-object p0, p0, Lyads/r06;->A:Lyads/q84;

    invoke-virtual {p0, p2}, Lyads/q84;->a(Lyads/g75;)V

    return-void
.end method

.method public d()Ljava/util/Map;
    .locals 4

    new-instance v0, Luz4;

    invoke-direct {v0}, Luz4;-><init>()V

    sget-object v1, Lyads/oa3;->c:Lyads/oa3;

    iget-object v1, p0, Lyads/r06;->w:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app-id"

    invoke-virtual {v0, v2, v1}, Luz4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lyads/r06;->w:Landroid/content/Context;

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    sget-object v2, Lyads/oa3;->c:Lyads/oa3;

    const-string v2, "app-version-name"

    invoke-virtual {v0, v2, v1}, Luz4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lyads/r06;->x:Lyads/e4;

    iget-object p0, p0, Lyads/e4;->b:Lyads/c40;

    iget-object p0, p0, Lyads/c40;->a:Lyads/vn2;

    iget-object p0, p0, Lyads/vn2;->c:Ljava/util/Map;

    invoke-virtual {v0, p0}, Luz4;->putAll(Ljava/util/Map;)V

    invoke-virtual {v0}, Luz4;->b()Luz4;

    move-result-object p0

    return-object p0
.end method
