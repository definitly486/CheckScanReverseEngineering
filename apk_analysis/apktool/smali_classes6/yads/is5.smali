.class public final Lyads/is5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/os/Handler;

.field public final c:Lyads/gs5;

.field public final d:Landroid/media/AudioManager;

.field public e:Lyads/hs5;

.field public f:Landroid/os/HandlerThread;

.field public g:I

.field public h:I

.field public i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lyads/gs5;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lyads/is5;->a:Landroid/content/Context;

    iput-object p2, p0, Lyads/is5;->b:Landroid/os/Handler;

    iput-object p3, p0, Lyads/is5;->c:Lyads/gs5;

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    const/4 p3, 0x0

    if-eqz p2, :cond_3

    iput-object p2, p0, Lyads/is5;->d:Landroid/media/AudioManager;

    const/4 v0, 0x3

    iput v0, p0, Lyads/is5;->g:I

    invoke-static {p2, v0}, Lyads/is5;->a(Landroid/media/AudioManager;I)I

    move-result v0

    iput v0, p0, Lyads/is5;->h:I

    iget v0, p0, Lyads/is5;->g:I

    sget v1, Lyads/u56;->a:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result p2

    goto :goto_0

    :cond_0
    invoke-static {p2, v0}, Lyads/is5;->a(Landroid/media/AudioManager;I)I

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lyads/is5;->i:Z

    new-instance p2, Lyads/hs5;

    invoke-direct {p2, p0}, Lyads/hs5;-><init>(Lyads/is5;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "StreamVolumeReceiver"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lyads/is5;->f:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lyads/is5;->f:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iput-object p2, p0, Lyads/is5;->e:Lyads/hs5;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Error registering stream volume receiver"

    invoke-static {p2, p1}, Lyads/sv3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "StreamVolumeManager"

    invoke-static {p2, p1}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lyads/is5;->f:Landroid/os/HandlerThread;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quitSafely()Z

    iput-object p3, p0, Lyads/is5;->f:Landroid/os/HandlerThread;

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Lud;->g()V

    throw p3
.end method

.method public static a(Landroid/media/AudioManager;I)I
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not retrieve stream volume for stream type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lyads/sv3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "StreamVolumeManager"

    invoke-static {v1, v0}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 34
    sget v0, Lyads/u56;->a:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lyads/is5;->d:Landroid/media/AudioManager;

    iget p0, p0, Lyads/is5;->g:I

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lyads/is5;->e:Lyads/hs5;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lyads/is5;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Error unregistering stream volume receiver"

    invoke-static {v2, v0}, Lyads/sv3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "StreamVolumeManager"

    invoke-static {v2, v0}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iput-object v1, p0, Lyads/is5;->e:Lyads/hs5;

    :cond_0
    iget-object v0, p0, Lyads/is5;->f:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iput-object v1, p0, Lyads/is5;->f:Landroid/os/HandlerThread;

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 5

    iget-object v0, p0, Lyads/is5;->d:Landroid/media/AudioManager;

    iget v1, p0, Lyads/is5;->g:I

    invoke-static {v0, v1}, Lyads/is5;->a(Landroid/media/AudioManager;I)I

    move-result v0

    iget-object v1, p0, Lyads/is5;->d:Landroid/media/AudioManager;

    iget v2, p0, Lyads/is5;->g:I

    sget v3, Lyads/u56;->a:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Lyads/is5;->a(Landroid/media/AudioManager;I)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lyads/is5;->h:I

    if-ne v2, v0, :cond_3

    iget-boolean v2, p0, Lyads/is5;->i:Z

    if-eq v2, v1, :cond_2

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_1
    iput v0, p0, Lyads/is5;->h:I

    iput-boolean v1, p0, Lyads/is5;->i:Z

    iget-object p0, p0, Lyads/is5;->c:Lyads/gs5;

    check-cast p0, Lyads/bq2;

    invoke-virtual {p0, v0, v1}, Lyads/bq2;->a(IZ)V

    return-void
.end method
