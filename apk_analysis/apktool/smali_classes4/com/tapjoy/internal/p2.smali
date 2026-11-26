.class public abstract Lcom/tapjoy/internal/p2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/locks/ReentrantLock;

.field public final b:Ljava/util/concurrent/locks/Condition;

.field public final c:Ljava/util/concurrent/ExecutorService;

.field public volatile d:I

.field public e:Lcom/tapjoy/TJConnectListener;

.field public f:Lcom/tapjoy/internal/o2;

.field public g:J

.field public h:Lcom/tapjoy/internal/l2;

.field public i:Lcom/tapjoy/internal/l2;

.field public j:Ljava/lang/String;

.field public k:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/p2;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/p2;->b:Ljava/util/concurrent/locks/Condition;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/p2;->c:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/p2;->d:I

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/tapjoy/internal/p2;->g:J

    return-void
.end method


# virtual methods
.method public final a()Lcom/tapjoy/internal/l2;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/tapjoy/internal/p2;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/p2;->i:Lcom/tapjoy/internal/l2;

    if-eqz v0, :cond_0

    .line 207
    iput-object v0, p0, Lcom/tapjoy/internal/p2;->h:Lcom/tapjoy/internal/l2;

    const/4 v0, 0x0

    .line 208
    iput-object v0, p0, Lcom/tapjoy/internal/p2;->i:Lcom/tapjoy/internal/l2;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 209
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tapjoy/internal/p2;->h:Lcom/tapjoy/internal/l2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    iget-object p0, p0, Lcom/tapjoy/internal/p2;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 211
    :goto_1
    iget-object p0, p0, Lcom/tapjoy/internal/p2;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 212
    throw v0
.end method

.method public final a(I)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/tapjoy/internal/p2;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 202
    :try_start_0
    iput p1, p0, Lcom/tapjoy/internal/p2;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    iget-object p0, p0, Lcom/tapjoy/internal/p2;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/tapjoy/internal/p2;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 204
    throw p1
.end method

.method public final synthetic a(ILjava/lang/String;)V
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/tapjoy/internal/p2;->e:Lcom/tapjoy/TJConnectListener;

    if-eqz p0, :cond_0

    .line 214
    invoke-virtual {p0, p1, p2}, Lcom/tapjoy/TJConnectListener;->onConnectFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/tapjoy/internal/p2;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x4

    const/4 v1, 0x3

    .line 221
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/p2;->a(I)V

    .line 222
    iget-object v0, p0, Lcom/tapjoy/internal/p2;->b:Ljava/util/concurrent/locks/Condition;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p1, p2, v2}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 p1, 0x3e8

    .line 223
    iput-wide p1, p0, Lcom/tapjoy/internal/p2;->g:J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    .line 224
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/p2;->a(I)V

    .line 225
    iget-object p0, p0, Lcom/tapjoy/internal/p2;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 226
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/p2;->a(I)V

    .line 228
    iget-object p0, p0, Lcom/tapjoy/internal/p2;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 229
    :goto_2
    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/p2;->a(I)V

    .line 230
    iget-object p0, p0, Lcom/tapjoy/internal/p2;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 231
    throw p1
.end method

.method public final synthetic a(Ljava/lang/String;I)V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/tapjoy/internal/p2;->e:Lcom/tapjoy/TJConnectListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/tapjoy/internal/p2;->e:Lcom/tapjoy/TJConnectListener;

    invoke-virtual {v0}, Lcom/tapjoy/TJConnectListener;->onConnectSuccess()V

    .line 217
    iget-object p0, p0, Lcom/tapjoy/internal/p2;->e:Lcom/tapjoy/TJConnectListener;

    invoke-virtual {p0, p2, p1}, Lcom/tapjoy/TJConnectListener;->onConnectWarning(ILjava/lang/String;)V

    return-void

    .line 218
    :cond_0
    iget-object p0, p0, Lcom/tapjoy/internal/p2;->e:Lcom/tapjoy/TJConnectListener;

    if-eqz p0, :cond_1

    .line 219
    invoke-virtual {p0}, Lcom/tapjoy/TJConnectListener;->onConnectSuccess()V

    :cond_1
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z
    .locals 6

    iget-object v0, p0, Lcom/tapjoy/internal/p2;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/p2;->k:Z

    :try_start_0
    iget-object v1, p0, Lcom/tapjoy/internal/p2;->e:Lcom/tapjoy/TJConnectListener;

    if-nez v1, :cond_0

    iput-object p4, p0, Lcom/tapjoy/internal/p2;->e:Lcom/tapjoy/TJConnectListener;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    :goto_0
    new-instance p4, Lcom/tapjoy/internal/l2;

    move-object v1, p0

    check-cast v1, Lcom/tapjoy/internal/g2;

    invoke-direct {p4, v1, p1, p2, p3}, Lcom/tapjoy/internal/l2;-><init>(Lcom/tapjoy/internal/g2;Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;)V

    iget p1, p0, Lcom/tapjoy/internal/p2;->d:I

    invoke-static {p1}, Lcom/tapjoy/internal/c0;->a(I)I

    move-result p1

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_5

    const/4 p2, 0x3

    if-eq p1, p2, :cond_4

    const/4 p2, 0x4

    if-eq p1, p2, :cond_3

    if-eq p1, v1, :cond_1

    invoke-virtual {p0, v3}, Lcom/tapjoy/internal/p2;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/tapjoy/internal/p2;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/tapjoy/internal/p2;->j:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/tapjoy/internal/p2;->j:Ljava/lang/String;

    const/4 p2, -0x1

    invoke-virtual {p0, p2, p1}, Lcom/tapjoy/internal/p2;->b(ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/tapjoy/internal/p2;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object p0, p0, Lcom/tapjoy/internal/p2;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v3

    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lcom/tapjoy/internal/p2;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lcom/tapjoy/internal/p2;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v3

    :cond_4
    :try_start_3
    iput-object p4, p0, Lcom/tapjoy/internal/p2;->i:Lcom/tapjoy/internal/l2;

    iget-object p1, p0, Lcom/tapjoy/internal/p2;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-wide/16 p1, 0x3e8

    :try_start_4
    iput-wide p1, p0, Lcom/tapjoy/internal/p2;->g:J

    iget-object p1, p0, Lcom/tapjoy/internal/p2;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object p1, p0, Lcom/tapjoy/internal/p2;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object p0, p0, Lcom/tapjoy/internal/p2;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v3

    :catchall_1
    move-exception p1

    :try_start_6
    iget-object p2, p0, Lcom/tapjoy/internal/p2;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_5
    iput-object p4, p0, Lcom/tapjoy/internal/p2;->i:Lcom/tapjoy/internal/l2;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object p0, p0, Lcom/tapjoy/internal/p2;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v3

    :cond_6
    :try_start_7
    iput-object p4, p0, Lcom/tapjoy/internal/p2;->h:Lcom/tapjoy/internal/l2;

    sget-object p1, Lcom/tapjoy/internal/s;->b:Lcom/tapjoy/internal/r;

    new-instance v4, Lcom/tapjoy/internal/j2;

    move-object v5, p0

    check-cast v5, Lcom/tapjoy/internal/g2;

    invoke-direct {v4, v5}, Lcom/tapjoy/internal/j2;-><init>(Lcom/tapjoy/internal/g2;)V

    invoke-virtual {p1, v4}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    iget-object p1, p4, Lcom/tapjoy/internal/l2;->a:Landroid/content/Context;

    new-instance p4, Lcom/tapjoy/internal/k2;

    move-object v4, p0

    check-cast v4, Lcom/tapjoy/internal/g2;

    invoke-direct {p4, v4}, Lcom/tapjoy/internal/k2;-><init>(Lcom/tapjoy/internal/g2;)V

    move-object v4, p0

    check-cast v4, Lcom/tapjoy/internal/g2;

    iget-object v4, v4, Lcom/tapjoy/internal/g2;->l:Lcom/tapjoy/internal/h2;

    iget v5, v4, Lcom/tapjoy/internal/h2;->e:I

    if-le v5, v1, :cond_7

    move p1, v0

    goto :goto_2

    :cond_7
    add-int/2addr v5, v3

    iput v5, v4, Lcom/tapjoy/internal/h2;->e:I

    invoke-static {v4, p1, p2, p3, p4}, Lcom/tapjoy/internal/h2;->a(Lcom/tapjoy/internal/h2;Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z

    move-result p1

    :goto_2
    if-eqz p1, :cond_8

    invoke-virtual {p0, v2}, Lcom/tapjoy/internal/p2;->a(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iget-object p0, p0, Lcom/tapjoy/internal/p2;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v3

    :cond_8
    iget-object p0, p0, Lcom/tapjoy/internal/p2;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :goto_3
    iget-object p0, p0, Lcom/tapjoy/internal/p2;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public final synthetic b()V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/p2;->e:Lcom/tapjoy/TJConnectListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tapjoy/TJConnectListener;->onConnectSuccess()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/p2;->e:Lcom/tapjoy/TJConnectListener;

    :cond_0
    return-void
.end method

.method public final b(ILjava/lang/String;)V
    .locals 1

    .line 11
    new-instance v0, Lzr1;

    invoke-direct {v0, p1, p0, p2}, Lzr1;-><init>(ILcom/tapjoy/internal/p2;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()V
    .locals 2

    .line 22
    new-instance v0, Lxr1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lxr1;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(ILjava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/tapjoy/internal/p2;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/tapjoy/internal/p2;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/internal/p2;->k:Z

    new-instance v0, Ly4a;

    invoke-direct {v0, p1, p0, p2}, Ly4a;-><init>(ILcom/tapjoy/internal/p2;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
