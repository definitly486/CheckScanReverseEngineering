.class public final Lte9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll37;
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# instance fields
.field public final b:Lsy6;

.field public final c:Lb24;

.field public final d:Landroidx/lifecycle/Lifecycle;

.field public final e:Lmb4;


# direct methods
.method public constructor <init>(Lsy6;Lb24;Lre9;Landroidx/lifecycle/Lifecycle;Lmb4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lte9;->b:Lsy6;

    iput-object p2, p0, Lte9;->c:Lb24;

    iput-object p4, p0, Lte9;->d:Landroidx/lifecycle/Lifecycle;

    iput-object p5, p0, Lte9;->e:Lmb4;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final b(Lvy6;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lte9;->d:Landroidx/lifecycle/Lifecycle;

    if-eqz p0, :cond_1

    invoke-static {p0, p1}, Lzp4;->a(Landroidx/lifecycle/Lifecycle;Lf02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lte9;->e:Lmb4;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    iget-object v0, p0, Lte9;->d:Landroidx/lifecycle/Lifecycle;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method public final onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final start()V
    .locals 1

    iget-object v0, p0, Lte9;->d:Landroidx/lifecycle/Lifecycle;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method
