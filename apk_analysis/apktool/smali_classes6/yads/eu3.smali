.class public final Lyads/eu3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lyads/e4;

.field public final c:Lyads/mg;

.field public final d:Lyads/s94;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/e4;)V
    .locals 3

    new-instance v0, Lyads/mg;

    invoke-direct {v0, p1}, Lyads/mg;-><init>(Landroid/content/Context;)V

    sget-object v1, Lyads/s94;->e:Lyads/r94;

    sget-object v2, Lyads/s94;->f:Lyads/s94;

    if-nez v2, :cond_1

    monitor-enter v1

    :try_start_0
    sget-object v2, Lyads/s94;->f:Lyads/s94;

    if-nez v2, :cond_0

    new-instance v2, Lyads/s94;

    invoke-direct {v2}, Lyads/s94;-><init>()V

    sput-object v2, Lyads/s94;->f:Lyads/s94;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1

    throw p0

    :cond_1
    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/eu3;->a:Landroid/content/Context;

    iput-object p2, p0, Lyads/eu3;->b:Lyads/e4;

    iput-object v0, p0, Lyads/eu3;->c:Lyads/mg;

    iput-object v2, p0, Lyads/eu3;->d:Lyads/s94;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lyads/eu3;->c:Lyads/mg;

    invoke-virtual {v2}, Lyads/mg;->a()V
    :try_end_0
    .catch Lyads/vm3; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lyads/o8;->a:Lyads/m4;

    invoke-virtual {v2}, Lyads/vm3;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lyads/vm3;->c:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lyads/o8;->a(ILjava/lang/String;Ljava/lang/String;)Lyads/m4;

    move-result-object v2

    :goto_0
    :try_start_1
    iget-object v3, p0, Lyads/eu3;->d:Lyads/s94;

    iget-object v4, p0, Lyads/eu3;->a:Landroid/content/Context;

    iget-boolean v5, v3, Lyads/s94;->b:Z

    if-eqz v5, :cond_2

    iget-object v5, v3, Lyads/s94;->a:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catch Lyads/vm3; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-boolean v6, v3, Lyads/s94;->b:Z

    if-eqz v6, :cond_1

    invoke-static {v4}, Lyads/za;->a(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v3, Lyads/s94;->c:Lyads/l2;

    invoke-virtual {v6, v4}, Lyads/l2;->a(Landroid/content/Context;)V

    iget-object v6, v3, Lyads/s94;->d:Lyads/cu4;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lyads/cu4;->a(Landroid/content/Context;)V

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :cond_0
    :goto_1
    const/4 v4, 0x0

    iput-boolean v4, v3, Lyads/s94;->b:Z

    :cond_1
    sget-object v3, Lj59;->a:Lj59;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v5

    goto :goto_3

    :catch_1
    move-exception v3

    goto :goto_4

    :goto_2
    monitor-exit v5

    throw v3
    :try_end_3
    .catch Lyads/vm3; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_3
    move-object v0, v1

    goto :goto_5

    :goto_4
    sget-object v4, Lyads/o8;->a:Lyads/m4;

    invoke-virtual {v3}, Lyads/vm3;->getMessage()Ljava/lang/String;

    move-result-object v4

    iget-object v3, v3, Lyads/vm3;->c:Ljava/lang/String;

    invoke-static {v0, v4, v3}, Lyads/o8;->a(ILjava/lang/String;Ljava/lang/String;)Lyads/m4;

    move-result-object v0

    :goto_5
    iget-object p0, p0, Lyads/eu3;->b:Lyads/e4;

    iget-object v3, p0, Lyads/e4;->c:Lyads/ma;

    iget-object v3, v3, Lyads/ma;->a:Ljava/lang/String;

    if-nez v3, :cond_3

    sget-object v3, Lyads/o8;->l:Lyads/m4;

    goto :goto_6

    :cond_3
    move-object v3, v1

    :goto_6
    iget-object p0, p0, Lyads/e4;->e:Lyads/n8;

    if-nez p0, :cond_4

    sget-object v1, Lyads/o8;->i:Lyads/m4;

    :cond_4
    filled-new-array {v2, v0, v3, v1}, [Lyads/m4;

    move-result-object p0

    invoke-static {p0}, Lyr;->G([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method
