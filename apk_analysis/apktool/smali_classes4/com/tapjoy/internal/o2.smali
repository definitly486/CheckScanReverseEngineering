.class public final Lcom/tapjoy/internal/o2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Landroid/content/Context;

.field public final d:Lcom/tapjoy/internal/n2;

.field public final synthetic e:Lcom/tapjoy/internal/p2;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/p2;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/o2;->e:Lcom/tapjoy/internal/p2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/tapjoy/internal/n2;

    invoke-direct {p1, p0}, Lcom/tapjoy/internal/n2;-><init>(Lcom/tapjoy/internal/o2;)V

    iput-object p1, p0, Lcom/tapjoy/internal/o2;->d:Lcom/tapjoy/internal/n2;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/o2;->e:Lcom/tapjoy/internal/p2;

    iget-object v1, v0, Lcom/tapjoy/internal/p2;->f:Lcom/tapjoy/internal/o2;

    if-ne v1, p0, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tapjoy/internal/p2;->f:Lcom/tapjoy/internal/o2;

    :cond_0
    iget v0, v0, Lcom/tapjoy/internal/p2;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/tapjoy/internal/o2;->e:Lcom/tapjoy/internal/p2;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/p2;->a(I)V

    :cond_1
    return-void
.end method

.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/tapjoy/internal/o2;->e:Lcom/tapjoy/internal/p2;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/p2;->a(I)V

    iget-object v0, p0, Lcom/tapjoy/internal/o2;->e:Lcom/tapjoy/internal/p2;

    invoke-virtual {v0}, Lcom/tapjoy/internal/p2;->a()Lcom/tapjoy/internal/l2;

    move-result-object v0

    iget-object v0, v0, Lcom/tapjoy/internal/l2;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/tapjoy/internal/o2;->c:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v3, p0, Lcom/tapjoy/internal/o2;->c:Landroid/content/Context;

    const/16 v4, 0x21

    if-lt v2, v4, :cond_0

    iget-object v2, p0, Lcom/tapjoy/internal/o2;->d:Lcom/tapjoy/internal/n2;

    const/4 v4, 0x4

    invoke-virtual {v3, v2, v0, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/tapjoy/internal/o2;->d:Lcom/tapjoy/internal/n2;

    invoke-virtual {v3, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    :try_start_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sget-object v3, Lcom/tapjoy/internal/s;->b:Lcom/tapjoy/internal/r;

    new-instance v4, Lcom/tapjoy/internal/m2;

    invoke-direct {v4, p0, v0}, Lcom/tapjoy/internal/m2;-><init>(Lcom/tapjoy/internal/o2;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v3, v4}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    iget-object v3, p0, Lcom/tapjoy/internal/o2;->e:Lcom/tapjoy/internal/p2;

    invoke-virtual {v3}, Lcom/tapjoy/internal/p2;->a()Lcom/tapjoy/internal/l2;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/internal/o2;->e:Lcom/tapjoy/internal/p2;

    iget-object v5, v3, Lcom/tapjoy/internal/l2;->a:Landroid/content/Context;

    iget-object v6, v3, Lcom/tapjoy/internal/l2;->b:Ljava/lang/String;

    iget-object v3, v3, Lcom/tapjoy/internal/l2;->c:Ljava/util/Hashtable;

    check-cast v4, Lcom/tapjoy/internal/g2;

    iget-object v4, v4, Lcom/tapjoy/internal/g2;->l:Lcom/tapjoy/internal/h2;

    iget v7, v4, Lcom/tapjoy/internal/h2;->e:I

    const/4 v8, 0x5

    if-le v7, v8, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    iput v7, v4, Lcom/tapjoy/internal/h2;->e:I

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v3, v7}, Lcom/tapjoy/internal/h2;->a(Lcom/tapjoy/internal/h2;Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    const-string v4, "Failed to connect"

    if-nez v3, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/o2;->e:Lcom/tapjoy/internal/p2;

    invoke-virtual {v0, v2, v4}, Lcom/tapjoy/internal/p2;->c(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/tapjoy/internal/o2;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/tapjoy/internal/o2;->d:Lcom/tapjoy/internal/n2;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/tapjoy/internal/o2;->a()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    :goto_2
    iget-boolean v0, p0, Lcom/tapjoy/internal/o2;->a:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tapjoy/internal/o2;->e:Lcom/tapjoy/internal/p2;

    invoke-virtual {v0, v8}, Lcom/tapjoy/internal/p2;->a(I)V

    iget-object v0, p0, Lcom/tapjoy/internal/o2;->e:Lcom/tapjoy/internal/p2;

    invoke-virtual {v0}, Lcom/tapjoy/internal/p2;->c()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/tapjoy/internal/o2;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/tapjoy/internal/o2;->d:Lcom/tapjoy/internal/n2;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/tapjoy/internal/o2;->a()V

    return-void

    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/tapjoy/internal/o2;->b:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tapjoy/internal/o2;->e:Lcom/tapjoy/internal/p2;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/p2;->a(I)V

    iget-object v0, p0, Lcom/tapjoy/internal/o2;->e:Lcom/tapjoy/internal/p2;

    iget-object v1, p0, Lcom/tapjoy/internal/o2;->b:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/tapjoy/internal/p2;->b(ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, p0, Lcom/tapjoy/internal/o2;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/tapjoy/internal/o2;->d:Lcom/tapjoy/internal/n2;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/tapjoy/internal/o2;->a()V

    return-void

    :cond_4
    :try_start_5
    iget-object v0, p0, Lcom/tapjoy/internal/o2;->e:Lcom/tapjoy/internal/p2;

    invoke-virtual {v0, v1, v4}, Lcom/tapjoy/internal/p2;->c(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/internal/o2;->e:Lcom/tapjoy/internal/p2;

    iget-wide v2, v0, Lcom/tapjoy/internal/p2;->g:J

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    iput-wide v2, v0, Lcom/tapjoy/internal/p2;->g:J

    const-wide/16 v4, 0x3e8

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tapjoy/internal/p2;->g:J

    iget-object v0, p0, Lcom/tapjoy/internal/o2;->e:Lcom/tapjoy/internal/p2;

    iget-wide v2, v0, Lcom/tapjoy/internal/p2;->g:J

    const-wide/32 v4, 0x36ee80

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tapjoy/internal/p2;->g:J

    iget-object v0, p0, Lcom/tapjoy/internal/o2;->e:Lcom/tapjoy/internal/p2;

    iget-wide v2, v0, Lcom/tapjoy/internal/p2;->g:J

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/p2;->a(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :goto_3
    iget-object v1, p0, Lcom/tapjoy/internal/o2;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/tapjoy/internal/o2;->d:Lcom/tapjoy/internal/n2;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/tapjoy/internal/o2;->a()V

    throw v0
.end method
