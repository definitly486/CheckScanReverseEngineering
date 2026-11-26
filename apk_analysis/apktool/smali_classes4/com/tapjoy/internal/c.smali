.class public final Lcom/tapjoy/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lcom/tapjoy/internal/c;


# instance fields
.field public a:Landroid/app/Application;

.field public b:Lcom/tapjoy/internal/b;

.field public c:Lcom/tapjoy/TJSession;

.field public final d:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/c;

    invoke-direct {v0}, Lcom/tapjoy/internal/c;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/c;->e:Lcom/tapjoy/internal/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/c;->d:Ljava/util/HashSet;

    return-void
.end method

.method public static a()V
    .locals 3

    .line 103
    sget-object v0, Lcom/tapjoy/internal/c;->e:Lcom/tapjoy/internal/c;

    .line 104
    iget-object v1, v0, Lcom/tapjoy/internal/c;->a:Landroid/app/Application;

    if-nez v1, :cond_0

    return-void

    .line 105
    :cond_0
    monitor-enter v0

    .line 106
    :try_start_0
    iget-object v1, v0, Lcom/tapjoy/internal/c;->b:Lcom/tapjoy/internal/b;

    if-eqz v1, :cond_1

    .line 107
    iget-object v2, v0, Lcom/tapjoy/internal/c;->a:Landroid/app/Application;

    invoke-virtual {v2, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v1, 0x0

    .line 108
    iput-object v1, v0, Lcom/tapjoy/internal/c;->b:Lcom/tapjoy/internal/b;

    .line 109
    const-string v1, "Automatic session tracking is disabled."

    invoke-static {v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 110
    :cond_1
    const-string v1, "Automatic session tracking is already disabled."

    invoke-static {v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    .line 111
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    goto :goto_3

    :cond_0
    sget-object v0, Lcom/tapjoy/internal/c;->e:Lcom/tapjoy/internal/c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    iget-object v1, v0, Lcom/tapjoy/internal/c;->a:Landroid/app/Application;

    if-nez v1, :cond_2

    :try_start_0
    instance-of v1, p0, Landroid/app/Application;

    if-eqz v1, :cond_1

    const-string v1, "updateApplication: by casting"

    invoke-static {v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    check-cast p0, Landroid/app/Application;

    iput-object p0, v0, Lcom/tapjoy/internal/c;->a:Landroid/app/Application;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    const-string p0, "updateApplication: by using reflection"

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    new-instance p0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v1, Lcom/tapjoy/internal/a;

    invoke-direct {v1, v0, p0}, Lcom/tapjoy/internal/a;-><init>(Lcom/tapjoy/internal/c;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v1}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;)V

    :goto_1
    iget-object p0, v0, Lcom/tapjoy/internal/c;->a:Landroid/app/Application;

    if-nez p0, :cond_2

    goto :goto_3

    :cond_2
    monitor-enter v0

    :try_start_1
    iget-object p0, v0, Lcom/tapjoy/internal/c;->b:Lcom/tapjoy/internal/b;

    if-nez p0, :cond_3

    new-instance p0, Lcom/tapjoy/internal/b;

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/b;-><init>(Lcom/tapjoy/internal/c;)V

    iput-object p0, v0, Lcom/tapjoy/internal/c;->b:Lcom/tapjoy/internal/b;

    iget-object v1, v0, Lcom/tapjoy/internal/c;->a:Landroid/app/Application;

    invoke-virtual {v1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object p0, v0, Lcom/tapjoy/internal/c;->c:Lcom/tapjoy/TJSession;

    invoke-virtual {p0}, Lcom/tapjoy/TJSession;->initSession()V

    const-string p0, "Automatic session tracking is enabled."

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_3
    const-string p0, "Automatic session tracking is already enabled."

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    :goto_2
    monitor-exit v0

    :goto_3
    return-void

    :goto_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
