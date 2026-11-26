.class public abstract Lyads/hq4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/op6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/op6;

    invoke-direct {v0}, Lyads/op6;-><init>()V

    sput-object v0, Lyads/hq4;->a:Lyads/op6;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5

    sget-object v0, Lyads/hq4;->a:Lyads/op6;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-boolean v1, v0, Lyads/op6;->a:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lyads/op6;->a:Z

    invoke-static {}, Lyads/oq6;->a()Lyads/oq6;

    move-result-object v0

    iget-object v2, v0, Lyads/oq6;->b:Lyads/gp6;

    new-instance v2, Lyads/wo6;

    invoke-direct {v2}, Lyads/wo6;-><init>()V

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lyads/aq6;

    invoke-direct {v4, v3, p0, v2, v0}, Lyads/aq6;-><init>(Landroid/os/Handler;Landroid/content/Context;Lyads/wo6;Lyads/oq6;)V

    iput-object v4, v0, Lyads/oq6;->c:Lyads/aq6;

    sget-object v0, Lyads/hp6;->d:Lyads/hp6;

    invoke-virtual {v0, p0}, Lyads/xp6;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lyads/zo6;->a(Landroid/content/Context;)V

    sget-object v0, Lyads/rp6;->a:Landroid/view/WindowManager;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lyads/rp6;->c:F

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sput-object v0, Lyads/rp6;->a:Landroid/view/WindowManager;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v2, Lyads/bq6;

    invoke-direct {v2}, Lyads/bq6;-><init>()V

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v0, Lyads/kq6;->b:Lyads/kq6;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v0, Lyads/kq6;->a:Landroid/content/Context;

    sget-object v0, Lyads/xo6;->e:Lyads/xo6;

    iget-boolean v2, v0, Lyads/xo6;->b:Z

    if-nez v2, :cond_0

    iget-object v2, v0, Lyads/xo6;->c:Lyads/xp6;

    invoke-virtual {v2, p0}, Lyads/xp6;->a(Landroid/content/Context;)V

    iget-object v2, v0, Lyads/xo6;->c:Lyads/xp6;

    iput-object v0, v2, Lyads/xp6;->c:Lyads/vp6;

    invoke-virtual {v2}, Lyads/xp6;->b()V

    iget-object v2, v0, Lyads/xo6;->c:Lyads/xp6;

    iget-boolean v2, v2, Lyads/xp6;->b:Z

    iput-boolean v2, v0, Lyads/xo6;->d:Z

    iput-boolean v1, v0, Lyads/xo6;->b:Z

    :cond_0
    sget-object v0, Lyads/qq6;->d:Lyads/qq6;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lyads/qq6;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lyads/pq6;

    invoke-direct {v1}, Lyads/pq6;-><init>()V

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void

    :cond_2
    const-string p0, "Application Context cannot be null"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method
