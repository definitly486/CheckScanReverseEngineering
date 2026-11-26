.class public final Landroidx/compose/runtime/NextFrameEndCallbackQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/NextFrameEndCallbackQueue$NextFrameEndAwaiter;
    }
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final frameEndQueue:Landroidx/compose/runtime/internal/AwaiterQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/internal/AwaiterQueue<",
            "Landroidx/compose/runtime/NextFrameEndCallbackQueue$NextFrameEndAwaiter;",
            ">;"
        }
    .end annotation
.end field

.field private final isFrameOngoing:Landroidx/compose/runtime/internal/AtomicInt;

.field private final onNewAwaiters:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lll3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/compose/runtime/internal/AtomicBoolean;->constructor-impl(Z)Landroidx/compose/runtime/internal/AtomicInt;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/NextFrameEndCallbackQueue;->isFrameOngoing:Landroidx/compose/runtime/internal/AtomicInt;

    new-instance v0, Landroidx/compose/runtime/internal/AwaiterQueue;

    invoke-direct {v0}, Landroidx/compose/runtime/internal/AwaiterQueue;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/NextFrameEndCallbackQueue;->frameEndQueue:Landroidx/compose/runtime/internal/AwaiterQueue;

    new-instance v0, Lul;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lul;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/compose/runtime/NextFrameEndCallbackQueue;->onNewAwaiters:Lll3;

    return-void
.end method

.method public static synthetic a(Landroidx/compose/runtime/NextFrameEndCallbackQueue;Lll3;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/runtime/NextFrameEndCallbackQueue;->onNewAwaiters$lambda$0(Landroidx/compose/runtime/NextFrameEndCallbackQueue;Lll3;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/compose/runtime/NextFrameEndCallbackQueue$NextFrameEndAwaiter;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/compose/runtime/NextFrameEndCallbackQueue;->markFrameComplete$lambda$0(Landroidx/compose/runtime/NextFrameEndCallbackQueue$NextFrameEndAwaiter;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic cancel$default(Landroidx/compose/runtime/NextFrameEndCallbackQueue;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    new-instance p1, Ljava/util/concurrent/CancellationException;

    const-string p2, "scheduler cancelled"

    invoke-direct {p1, p2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/NextFrameEndCallbackQueue;->cancel(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method private static final markFrameComplete$lambda$0(Landroidx/compose/runtime/NextFrameEndCallbackQueue$NextFrameEndAwaiter;)Lj59;
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/runtime/NextFrameEndCallbackQueue$NextFrameEndAwaiter;->resume()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final onNewAwaiters$lambda$0(Landroidx/compose/runtime/NextFrameEndCallbackQueue;Lll3;)Lj59;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/NextFrameEndCallbackQueue;->isFrameOngoing:Landroidx/compose/runtime/internal/AtomicInt;

    invoke-static {p0}, Landroidx/compose/runtime/internal/AtomicBoolean;->get-impl(Landroidx/compose/runtime/internal/AtomicInt;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p1}, Lll3;->invoke()Ljava/lang/Object;

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final cancel(Ljava/util/concurrent/CancellationException;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/NextFrameEndCallbackQueue;->frameEndQueue:Landroidx/compose/runtime/internal/AwaiterQueue;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/internal/AwaiterQueue;->fail(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final getHasAwaiters()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/NextFrameEndCallbackQueue;->frameEndQueue:Landroidx/compose/runtime/internal/AwaiterQueue;

    invoke-virtual {p0}, Landroidx/compose/runtime/internal/AwaiterQueue;->getHasAwaiters()Z

    move-result p0

    return p0
.end method

.method public final markFrameComplete()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/NextFrameEndCallbackQueue;->isFrameOngoing:Landroidx/compose/runtime/internal/AtomicInt;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/compose/runtime/internal/AtomicBoolean;->set-impl(Landroidx/compose/runtime/internal/AtomicInt;Z)V

    iget-object p0, p0, Landroidx/compose/runtime/NextFrameEndCallbackQueue;->frameEndQueue:Landroidx/compose/runtime/internal/AwaiterQueue;

    new-instance v0, Landroidx/compose/runtime/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/internal/AwaiterQueue;->flushAndDispatchAwaiters(Lnl3;)V

    return-void
.end method

.method public final markFrameStarted()V
    .locals 1

    iget-object p0, p0, Landroidx/compose/runtime/NextFrameEndCallbackQueue;->isFrameOngoing:Landroidx/compose/runtime/internal/AtomicInt;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroidx/compose/runtime/internal/AtomicBoolean;->set-impl(Landroidx/compose/runtime/internal/AtomicInt;Z)V

    return-void
.end method

.method public final scheduleFrameEndCallback(Lll3;)Landroidx/compose/runtime/CancellationHandle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;)",
            "Landroidx/compose/runtime/CancellationHandle;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/runtime/NextFrameEndCallbackQueue;->frameEndQueue:Landroidx/compose/runtime/internal/AwaiterQueue;

    new-instance v1, Landroidx/compose/runtime/NextFrameEndCallbackQueue$NextFrameEndAwaiter;

    invoke-direct {v1, p1}, Landroidx/compose/runtime/NextFrameEndCallbackQueue$NextFrameEndAwaiter;-><init>(Lll3;)V

    iget-object p0, p0, Landroidx/compose/runtime/NextFrameEndCallbackQueue;->onNewAwaiters:Lll3;

    invoke-virtual {v0, v1, p0}, Landroidx/compose/runtime/internal/AwaiterQueue;->addAwaiter(Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;Lll3;)Landroidx/compose/runtime/CancellationHandle;

    move-result-object p0

    return-object p0
.end method
