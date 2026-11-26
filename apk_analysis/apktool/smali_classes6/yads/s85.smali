.class public final Lyads/s85;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lyads/q85;

.field public final c:Lyads/o85;

.field public final d:Landroid/os/Handler;

.field public e:I

.field public f:Lyads/r85;

.field public final g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/q85;)V
    .locals 1

    sget-object v0, Lyads/qk2;->h:Lyads/o85;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lyads/s85;->a:Landroid/content/Context;

    iput-object p2, p0, Lyads/s85;->b:Lyads/q85;

    iput-object v0, p0, Lyads/s85;->c:Lyads/o85;

    const/4 p1, 0x0

    invoke-static {p1}, Lyads/u56;->b(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lyads/s85;->d:Landroid/os/Handler;

    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "ExoPlayer:RequirementsWatcherBackground"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lyads/s85;->g:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 12
    iget-object v0, p0, Lyads/s85;->g:Landroid/os/Handler;

    new-instance v1, Li8a;

    invoke-direct {v1, p0}, Li8a;-><init>(Lyads/s85;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lyads/s85;->b:Lyads/q85;

    check-cast v0, Lzi4;

    iget-object v0, v0, Lzi4;->c:Ljava/lang/Object;

    check-cast v0, Lyads/qk2;

    invoke-virtual {v0, p0, p1}, Lyads/qk2;->a(Lyads/s85;I)V

    return-void
.end method

.method public final synthetic b()V
    .locals 4

    iget-object v0, p0, Lyads/s85;->c:Lyads/o85;

    iget-object v1, p0, Lyads/s85;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lyads/o85;->a(Landroid/content/Context;)I

    move-result v0

    iget v1, p0, Lyads/s85;->e:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lyads/s85;->e:I

    iget-object v1, p0, Lyads/s85;->d:Landroid/os/Handler;

    new-instance v2, Ly47;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v3}, Ly47;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final c()I
    .locals 5

    invoke-virtual {p0}, Lyads/s85;->a()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iget-object v1, p0, Lyads/s85;->c:Lyads/o85;

    iget v1, v1, Lyads/o85;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    sget v1, Lyads/u56;->a:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lyads/s85;->a:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lyads/r85;

    invoke-direct {v2, p0}, Lyads/r85;-><init>(Lyads/s85;)V

    iput-object v2, p0, Lyads/s85;->f:Lyads/r85;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    :cond_0
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lyads/s85;->c:Lyads/o85;

    iget v1, v1, Lyads/o85;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lyads/s85;->c:Lyads/o85;

    iget v1, v1, Lyads/o85;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    sget v1, Lyads/u56;->a:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_3

    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_4
    :goto_1
    iget-object v1, p0, Lyads/s85;->c:Lyads/o85;

    iget v1, v1, Lyads/o85;->b:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_5

    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_5
    new-instance v1, Lyads/p85;

    invoke-direct {v1, p0}, Lyads/p85;-><init>(Lyads/s85;)V

    iget-object v2, p0, Lyads/s85;->a:Landroid/content/Context;

    iget-object v3, p0, Lyads/s85;->d:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget p0, p0, Lyads/s85;->e:I

    return p0
.end method
