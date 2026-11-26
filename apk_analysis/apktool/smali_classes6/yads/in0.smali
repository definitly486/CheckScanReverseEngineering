.class public final Lyads/in0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/q84;

.field public final b:Lyads/w1;

.field public final c:Lyads/r2;


# direct methods
.method public constructor <init>(Lyads/e4;Lyads/bf5;Lyads/d9;)V
    .locals 3

    move-object v0, p2

    check-cast v0, Lyads/do6;

    iget-object v1, v0, Lyads/do6;->a:Landroid/content/Context;

    invoke-static {v1, v1}, Lyads/mw;->a(Landroid/content/Context;Landroid/content/Context;)Lyads/q84;

    move-result-object v1

    new-instance v2, Lyads/w1;

    invoke-direct {v2, p1, p2, p3}, Lyads/w1;-><init>(Lyads/e4;Lyads/bf5;Lyads/d9;)V

    new-instance p1, Lyads/r2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lyads/eo6;

    invoke-direct {p2}, Lyads/eo6;-><init>()V

    invoke-direct {p1, p2}, Lyads/r2;-><init>(Lyads/eo6;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lyads/in0;->a:Lyads/q84;

    iput-object v2, p0, Lyads/in0;->b:Lyads/w1;

    iput-object p1, p0, Lyads/in0;->c:Lyads/r2;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/Intent;Lyads/fy4;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    new-instance v2, Lc31;

    invoke-static/range {p3 .. p3}, Lzya;->b(Le02;)Le02;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3}, Lc31;-><init>(ILe02;)V

    invoke-virtual {v2}, Lc31;->u()V

    sget-object v3, Lyads/qb3;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v3

    iget-object v5, v1, Lyads/in0;->c:Lyads/r2;

    iget-object v5, v5, Lyads/r2;->a:Lyads/eo6;

    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/yandex/mobile/ads/common/AdActivity;

    invoke-direct {v5, v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "window_type"

    const-string v7, "window_type_activity_result"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "data_identifier"

    invoke-virtual {v5, v6, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v6, v1, Lyads/in0;->b:Lyads/w1;

    new-instance v7, Lyads/gn0;

    invoke-direct {v7, v2}, Lyads/gn0;-><init>(Lc31;)V

    new-instance v8, Lyads/hn0;

    invoke-direct {v8, v2}, Lyads/hn0;-><init>(Lc31;)V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lyads/en0;

    move-object/from16 v10, p2

    invoke-direct {v9, v10, v7, v8}, Lyads/en0;-><init>(Landroid/content/Intent;Lyads/gn0;Lyads/hn0;)V

    iget-object v10, v6, Lyads/w1;->c:Lyads/d9;

    iget-object v11, v6, Lyads/w1;->a:Lyads/e4;

    iget-object v13, v6, Lyads/w1;->b:Lyads/bf5;

    new-instance v12, Lyads/h9;

    invoke-direct {v12}, Lyads/h9;-><init>()V

    move-object/from16 v16, v9

    new-instance v9, Lyads/f2;

    const/4 v15, 0x0

    const/16 v17, 0x30

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v17}, Lyads/f2;-><init>(Lyads/d9;Lyads/e4;Lyads/h9;Lyads/bf5;Lyads/pg4;ILyads/en0;I)V

    sget-object v6, Lyads/h2;->c:Lyads/h2;

    if-nez v6, :cond_1

    sget-object v6, Lyads/h2;->b:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    sget-object v7, Lyads/h2;->c:Lyads/h2;

    if-nez v7, :cond_0

    new-instance v7, Lyads/h2;

    invoke-direct {v7}, Lyads/h2;-><init>()V

    sput-object v7, Lyads/h2;->c:Lyads/h2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v6

    move-object v6, v7

    goto :goto_2

    :goto_1
    monitor-exit v6

    throw v0

    :cond_1
    :goto_2
    invoke-virtual {v6, v3, v4, v9}, Lyads/h2;->a(JLyads/f2;)V

    new-instance v7, Lyads/fn0;

    invoke-direct {v7, v6, v3, v4}, Lyads/fn0;-><init>(Lyads/h2;J)V

    invoke-virtual {v2, v7}, Lc31;->n(Lnl3;)V

    :try_start_1
    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    new-instance v5, Lk57$a;

    invoke-direct {v5, v0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v5

    :goto_3
    invoke-static {v0}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v6, v3, v4}, Lyads/h2;->a(J)Lyads/f2;

    iget-object v1, v1, Lyads/in0;->a:Lyads/q84;

    const-string v3, "Failed to launch AdActivity for result"

    invoke-virtual {v1, v3, v0}, Lyads/q84;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2}, Lc31;->t()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lno5;

    if-eqz v1, :cond_2

    new-instance v1, Lk57$a;

    invoke-direct {v1, v0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v1}, Lc31;->resumeWith(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v2}, Lc31;->s()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne v0, v1, :cond_3

    return-object v0

    :cond_3
    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method
