.class public final Lyads/s1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/s1;

.field public static b:Lyads/t1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/s1;

    invoke-direct {v0}, Lyads/s1;-><init>()V

    sput-object v0, Lyads/s1;->a:Lyads/s1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Landroid/app/Activity;
    .locals 2

    .line 63
    sget-object v0, Lyads/s1;->a:Lyads/s1;

    monitor-enter v0

    .line 64
    :try_start_0
    sget-object v1, Lyads/s1;->b:Lyads/t1;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, v1, Lyads/t1;->a:Lyads/v1;

    invoke-virtual {v1}, Lyads/v1;->a()Landroid/app/Activity;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 66
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public static final a(Landroid/content/Context;)V
    .locals 4

    sget-object v0, Lyads/s1;->a:Lyads/s1;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lyads/s1;->b:Lyads/t1;

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v2, v1, Landroid/app/Application;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Landroid/app/Application;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_3

    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_1

    check-cast p0, Landroid/app/Activity;

    goto :goto_1

    :cond_1
    move-object p0, v3

    :goto_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_2

    move-object v3, p0

    :cond_2
    new-instance p0, Lyads/t1;

    invoke-direct {p0, v3}, Lyads/t1;-><init>(Landroid/app/Activity;)V

    sput-object p0, Lyads/s1;->b:Lyads/t1;

    invoke-virtual {v1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_3
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method
