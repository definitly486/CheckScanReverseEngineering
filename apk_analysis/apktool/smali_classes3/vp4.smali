.class public final Lvp4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll37;
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# instance fields
.field public final b:Landroidx/lifecycle/Lifecycle;

.field public final c:Lmb4;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/Lifecycle;Lmb4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvp4;->b:Landroidx/lifecycle/Lifecycle;

    iput-object p2, p0, Lvp4;->c:Lmb4;

    return-void
.end method


# virtual methods
.method public final b(Lvy6;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lvp4;->b:Landroidx/lifecycle/Lifecycle;

    invoke-static {p0, p1}, Lzp4;->a(Landroidx/lifecycle/Lifecycle;Lf02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final complete()V
    .locals 1

    iget-object v0, p0, Lvp4;->b:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public final onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    iget-object p0, p0, Lvp4;->c:Lmb4;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public final start()V
    .locals 1

    iget-object v0, p0, Lvp4;->b:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method
