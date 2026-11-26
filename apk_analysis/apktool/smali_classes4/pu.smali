.class public final synthetic Lpu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;
.implements Landroidx/constraintlayout/core/state/Interpolator;
.implements Lcom/my/target/sk$a;


# instance fields
.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lpu;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 7

    iget-object p0, p0, Lpu;->b:Ljava/lang/Object;

    check-cast p0, Lcom/my/target/x0;

    iget-object v0, p0, Lcom/my/target/x0;->e:Lou;

    iget-object v1, p0, Lcom/my/target/x0;->b:Ld9a;

    iget-object v2, p0, Lcom/my/target/x0;->k:Ljava/lang/ref/WeakReference;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/my/target/sk;

    :goto_0
    const-string v4, "ViewabilityTracker"

    if-nez v2, :cond_1

    const-string p1, "help view is null"

    invoke-static {v4, p1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/my/target/x0;->k:Ljava/lang/ref/WeakReference;

    return-void

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    iget-object v6, p0, Lcom/my/target/x0;->j:Ljava/lang/ref/WeakReference;

    if-nez v6, :cond_2

    move-object v6, v3

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    :goto_1
    if-eqz v5, :cond_6

    if-eq v5, v6, :cond_3

    goto :goto_2

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onViewVisibilityChanged = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/my/target/x0;->b()V

    iget-boolean p0, p0, Lcom/my/target/x0;->g:Z

    if-eqz p0, :cond_4

    invoke-virtual {v1, v0}, Ld9a;->b(Ljava/lang/Runnable;)V

    :cond_4
    return-void

    :cond_5
    invoke-virtual {v1, v0}, Ld9a;->e(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v6, v0, p1}, Lcom/my/target/x0;->a(Landroid/view/View;FZ)V

    return-void

    :cond_6
    :goto_2
    const-string p1, "onStateChanged viewParent is null or not equals to rootView"

    invoke-static {v4, p1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/my/target/sk;->setStateChangedListener(Lcom/my/target/sk$a;)V

    iget-object p1, p0, Lcom/my/target/x0;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    iput-object v3, p0, Lcom/my/target/x0;->k:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lpu;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/video/internal/audio/AudioSource;

    invoke-static {p0, p1}, Landroidx/camera/video/internal/audio/AudioSource;->a(Landroidx/camera/video/internal/audio/AudioSource;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getInterpolation(F)F
    .locals 0

    iget-object p0, p0, Lpu;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0, p1}, Landroidx/constraintlayout/core/state/Transition;->d(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method
