.class public final Lgk$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic b:Lgk;


# direct methods
.method public constructor <init>(Lgk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgk$b;->b:Lgk;

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p0, p0, Lgk$b;->b:Lgk;

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lgk;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsy6;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lgk;->a()V

    :goto_0
    sget-object p1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onLowMemory()V
    .locals 1

    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lgk$b;->onTrimMemory(I)V

    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 5

    iget-object p0, p0, Lgk$b;->b:Lgk;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgk;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsy6;

    if-eqz v0, :cond_4

    iget-object v1, v0, Lsy6;->a:Lsy6$a;

    const/16 v2, 0x28

    if-lt p1, v2, :cond_0

    invoke-virtual {v0}, Lsy6;->c()Lo95;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lo95;->clear()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/16 v2, 0x14

    if-lt p1, v2, :cond_3

    iget-object p1, p0, Lgk;->b:Lgk$a;

    iget-object v0, v1, Lsy6$a;->a:Landroid/content/Context;

    iget-wide v1, p1, Lgk$a;->b:D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, v1, v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object p1, p1, Lgk$a;->c:Lgk;

    iget-object v0, p1, Lgk;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsy6;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lsy6;->c()Lo95;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lo95;->c()J

    move-result-wide v3

    long-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-long v0, v1

    invoke-interface {p1, v0, v1}, Lo95;->b(J)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lgk;->a()V

    goto :goto_0

    :cond_3
    const/16 v1, 0xa

    if-lt p1, v1, :cond_5

    invoke-virtual {v0}, Lsy6;->c()Lo95;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lo95;->getSize()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    invoke-interface {p1, v0, v1}, Lo95;->e(J)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lgk;->a()V

    :cond_5
    :goto_0
    sget-object p1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method
