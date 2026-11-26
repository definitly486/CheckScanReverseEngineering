.class public final Lyads/le;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/ke;

.field public final b:Lyads/j75;

.field public final c:Lyads/lg;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lyads/me;->a:Lyads/ke;

    if-nez v0, :cond_1

    sget-object v0, Lyads/ke;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Lyads/w60;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lyads/me;->a:Lyads/ke;

    if-nez v2, :cond_0

    new-instance v2, Lyads/ke;

    invoke-direct {v2, v1}, Lyads/ke;-><init>(Landroid/content/Context;)V

    sput-object v2, Lyads/me;->a:Lyads/ke;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    move-object v0, v2

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    :cond_1
    :goto_2
    new-instance v1, Lyads/j75;

    invoke-direct {v1}, Lyads/j75;-><init>()V

    new-instance v2, Lyads/lg;

    invoke-direct {v2, p1}, Lyads/lg;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/le;->a:Lyads/ke;

    iput-object v1, p0, Lyads/le;->b:Lyads/j75;

    iput-object v2, p0, Lyads/le;->c:Lyads/lg;

    return-void
.end method


# virtual methods
.method public final a(Lyads/e75;Ljava/util/Map;Ljava/lang/String;Lyads/j5;)V
    .locals 4

    iget-object v0, p0, Lyads/le;->c:Lyads/lg;

    iget-object v1, v0, Lyads/lg;->a:Lyads/zg5;

    iget-object v2, v0, Lyads/lg;->b:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lyads/fe5;->t0:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lyads/lg;->a:Lyads/zg5;

    sget-object v3, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v2, v2, Lyads/zg5;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v3

    invoke-virtual {v0}, Lyads/lg;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez v1, :cond_7

    if-eqz v2, :cond_7

    iget-object v0, p0, Lyads/le;->b:Lyads/j75;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_6

    const/4 v1, 0x4

    if-eq p1, v1, :cond_5

    const/16 v1, 0x8

    if-eq p1, v1, :cond_4

    const/16 v1, 0x15

    if-eq p1, v1, :cond_3

    const/16 p4, 0x1a

    if-eq p1, p4, :cond_2

    const/16 p4, 0x23

    if-eq p1, p4, :cond_1

    :catchall_0
    move-object p1, v0

    goto :goto_1

    :cond_1
    new-instance p1, Lyads/rf;

    sget-object p4, Lyads/sf;->h:Lyads/sf;

    invoke-static {p3, p2}, Lyads/j75;->d(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {p1, p4, p2}, Lyads/rf;-><init>(Lyads/sf;Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_2
    new-instance p1, Lyads/rf;

    sget-object p4, Lyads/sf;->g:Lyads/sf;

    invoke-static {p3, p2}, Lyads/j75;->b(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {p1, p4, p2}, Lyads/rf;-><init>(Lyads/sf;Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_3
    new-instance p1, Lyads/rf;

    sget-object v1, Lyads/sf;->f:Lyads/sf;

    invoke-static {p2, p4, p3}, Lyads/j75;->a(Ljava/util/Map;Lyads/j5;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Lyads/rf;-><init>(Lyads/sf;Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_4
    new-instance p1, Lyads/rf;

    sget-object p3, Lyads/sf;->c:Lyads/sf;

    invoke-static {p2}, Lyads/j75;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Lyads/rf;-><init>(Lyads/sf;Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_5
    new-instance p1, Lyads/rf;

    sget-object p4, Lyads/sf;->d:Lyads/sf;

    invoke-static {p3, p2}, Lyads/j75;->a(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {p1, p4, p2}, Lyads/rf;-><init>(Lyads/sf;Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_6
    new-instance p1, Lyads/rf;

    sget-object p4, Lyads/sf;->e:Lyads/sf;

    invoke-static {p3, p2}, Lyads/j75;->c(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {p1, p4, p2}, Lyads/rf;-><init>(Lyads/sf;Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz p1, :cond_7

    iget-object p0, p0, Lyads/le;->a:Lyads/ke;

    iget-object p2, p0, Lyads/ke;->b:Ly22;

    new-instance p3, Lyads/je;

    invoke-direct {p3, p0, p1, v0}, Lyads/je;-><init>(Lyads/ke;Lyads/rf;Le02;)V

    const/4 p0, 0x3

    invoke-static {p2, v0, v0, p3, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    :cond_7
    return-void

    :catchall_1
    move-exception p0

    monitor-exit v3

    throw p0
.end method
