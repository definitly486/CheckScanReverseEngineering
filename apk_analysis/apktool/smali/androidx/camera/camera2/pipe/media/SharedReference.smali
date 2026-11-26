.class public final Landroidx/camera/camera2/pipe/media/SharedReference;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final count:Llt;

.field private currentFinalizer:Lot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lot<",
            "Landroidx/camera/camera2/pipe/media/Finalizer<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroidx/camera/camera2/pipe/media/Finalizer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/camera/camera2/pipe/media/Finalizer<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/media/SharedReference;->value:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-static {p1}, Lkt;->b(I)Llt;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/media/SharedReference;->count:Llt;

    invoke-static {p2}, Lkt;->d(Ljava/lang/Object;)Lot;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/media/SharedReference;->currentFinalizer:Lot;

    return-void
.end method


# virtual methods
.method public final acquireOrNull()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/pipe/media/SharedReference;->count:Llt;

    :cond_0
    iget v1, v0, Llt;->a:I

    if-nez v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v1, 0x1

    :goto_0
    sget-object v3, Llt;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v3, v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v3, Ljy8$a;->a:Ljy8$a;

    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_3

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/SharedReference;->value:Ljava/lang/Object;

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public final decrement()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/pipe/media/SharedReference;->count:Llt;

    invoke-virtual {v0}, Llt;->a()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/camera/camera2/pipe/media/SharedReference;->currentFinalizer:Lot;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lot;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/media/Finalizer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/SharedReference;->value:Ljava/lang/Object;

    invoke-interface {v0, p0}, Landroidx/camera/camera2/pipe/media/Finalizer;->finalize(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final setFinalizer(Landroidx/camera/camera2/pipe/media/Finalizer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/media/Finalizer<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/SharedReference;->currentFinalizer:Lot;

    :cond_0
    iget-object v0, p0, Lot;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/camera/camera2/pipe/media/Finalizer;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object v3, v2

    goto :goto_0

    :cond_1
    move-object v3, p1

    :goto_0
    invoke-virtual {p0, v0, v3}, Lot;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_2

    invoke-interface {v1, v2}, Landroidx/camera/camera2/pipe/media/Finalizer;->finalize(Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-interface {p1, v2}, Landroidx/camera/camera2/pipe/media/Finalizer;->finalize(Ljava/lang/Object;)V

    return-void
.end method
