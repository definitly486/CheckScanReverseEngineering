.class public final Landroidx/compose/runtime/BroadcastFrameClock;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/MonotonicFrameClock;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;
    }
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final onNewAwaiters:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final queue:Landroidx/compose/runtime/internal/AwaiterQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/internal/AwaiterQueue<",
            "Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Landroidx/compose/runtime/BroadcastFrameClock;-><init>(Lll3;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Lll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/BroadcastFrameClock;->onNewAwaiters:Lll3;

    new-instance p1, Landroidx/compose/runtime/internal/AwaiterQueue;

    invoke-direct {p1}, Landroidx/compose/runtime/internal/AwaiterQueue;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/BroadcastFrameClock;->queue:Landroidx/compose/runtime/internal/AwaiterQueue;

    return-void
.end method

.method public synthetic constructor <init>(Lll3;ILjh2;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 14
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/runtime/BroadcastFrameClock;-><init>(Lll3;)V

    return-void
.end method

.method public static final synthetic access$getOnNewAwaiters$p(Landroidx/compose/runtime/BroadcastFrameClock;)Lll3;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/BroadcastFrameClock;->onNewAwaiters:Lll3;

    return-object p0
.end method

.method public static final synthetic access$getQueue$p(Landroidx/compose/runtime/BroadcastFrameClock;)Landroidx/compose/runtime/internal/AwaiterQueue;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/BroadcastFrameClock;->queue:Landroidx/compose/runtime/internal/AwaiterQueue;

    return-object p0
.end method

.method public static synthetic b(JLandroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/BroadcastFrameClock;->sendFrame$lambda$0(JLandroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic cancel$default(Landroidx/compose/runtime/BroadcastFrameClock;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    new-instance p1, Ljava/util/concurrent/CancellationException;

    const-string p2, "clock cancelled"

    invoke-direct {p1, p2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/BroadcastFrameClock;->cancel(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method private static final sendFrame$lambda$0(JLandroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;)Lj59;
    .locals 0

    invoke-virtual {p2, p0, p1}, Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;->resume(J)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final cancel(Ljava/util/concurrent/CancellationException;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/BroadcastFrameClock;->queue:Landroidx/compose/runtime/internal/AwaiterQueue;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/internal/AwaiterQueue;->fail(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge fold(Ljava/lang/Object;Lbm3;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lbm3<",
            "-TR;-",
            "Lo22$a;",
            "+TR;>;)TR;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/MonotonicFrameClock$DefaultImpls;->fold(Landroidx/compose/runtime/MonotonicFrameClock;Ljava/lang/Object;Lbm3;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge get(Lo22$b;)Lo22$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lo22$a;",
            ">(",
            "Lo22$b<",
            "TE;>;)TE;"
        }
    .end annotation

    invoke-static {p0, p1}, Landroidx/compose/runtime/MonotonicFrameClock$DefaultImpls;->get(Landroidx/compose/runtime/MonotonicFrameClock;Lo22$b;)Lo22$a;

    move-result-object p0

    return-object p0
.end method

.method public final getHasAwaiters()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/BroadcastFrameClock;->queue:Landroidx/compose/runtime/internal/AwaiterQueue;

    invoke-virtual {p0}, Landroidx/compose/runtime/internal/AwaiterQueue;->getHasAwaiters()Z

    move-result p0

    return p0
.end method

.method public bridge minusKey(Lo22$b;)Lo22;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo22$b<",
            "*>;)",
            "Lo22;"
        }
    .end annotation

    invoke-static {p0, p1}, Landroidx/compose/runtime/MonotonicFrameClock$DefaultImpls;->minusKey(Landroidx/compose/runtime/MonotonicFrameClock;Lo22$b;)Lo22;

    move-result-object p0

    return-object p0
.end method

.method public bridge plus(Lo22;)Lo22;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/runtime/MonotonicFrameClock$DefaultImpls;->plus(Landroidx/compose/runtime/MonotonicFrameClock;Lo22;)Lo22;

    move-result-object p0

    return-object p0
.end method

.method public final sendFrame(J)V
    .locals 1

    iget-object p0, p0, Landroidx/compose/runtime/BroadcastFrameClock;->queue:Landroidx/compose/runtime/internal/AwaiterQueue;

    new-instance v0, Landroidx/compose/runtime/b;

    invoke-direct {v0, p1, p2}, Landroidx/compose/runtime/b;-><init>(J)V

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/internal/AwaiterQueue;->flushAndDispatchAwaiters(Lnl3;)V

    return-void
.end method

.method public withFrameNanos(Lnl3;Le02;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lnl3<",
            "-",
            "Ljava/lang/Long;",
            "+TR;>;",
            "Le02<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lc31;

    invoke-static {p2}, Lzya;->b(Le02;)Le02;

    move-result-object p2

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, Lc31;-><init>(ILe02;)V

    invoke-virtual {v0}, Lc31;->u()V

    invoke-static {p0}, Landroidx/compose/runtime/BroadcastFrameClock;->access$getQueue$p(Landroidx/compose/runtime/BroadcastFrameClock;)Landroidx/compose/runtime/internal/AwaiterQueue;

    move-result-object p2

    new-instance v1, Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;

    invoke-direct {v1, p1, v0}, Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;-><init>(Lnl3;La31;)V

    invoke-static {p0}, Landroidx/compose/runtime/BroadcastFrameClock;->access$getOnNewAwaiters$p(Landroidx/compose/runtime/BroadcastFrameClock;)Lll3;

    move-result-object p0

    invoke-virtual {p2, v1, p0}, Landroidx/compose/runtime/internal/AwaiterQueue;->addAwaiter(Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;Lll3;)Landroidx/compose/runtime/CancellationHandle;

    move-result-object p0

    new-instance p1, Landroidx/compose/runtime/BroadcastFrameClock$withFrameNanos$2$1;

    invoke-direct {p1, p0}, Landroidx/compose/runtime/BroadcastFrameClock$withFrameNanos$2$1;-><init>(Landroidx/compose/runtime/CancellationHandle;)V

    invoke-virtual {v0, p1}, Lc31;->n(Lnl3;)V

    invoke-virtual {v0}, Lc31;->s()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    return-object p0
.end method
