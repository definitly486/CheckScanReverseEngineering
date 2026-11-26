.class final Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;
.super Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/BroadcastFrameClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FrameAwaiter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;"
    }
.end annotation


# instance fields
.field private continuation:La31;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La31<",
            "-TR;>;"
        }
    .end annotation
.end field

.field private onFrame:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "-",
            "Ljava/lang/Long;",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnl3;La31;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Ljava/lang/Long;",
            "+TR;>;",
            "La31<",
            "-TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;-><init>()V

    iput-object p2, p0, Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;->continuation:La31;

    iput-object p1, p0, Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;->onFrame:Lnl3;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;->onFrame:Lnl3;

    iput-object v0, p0, Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;->continuation:La31;

    return-void
.end method

.method public final resume(J)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;->onFrame:Lnl3;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;->continuation:La31;

    if-eqz p0, :cond_1

    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance p2, Lk57$a;

    invoke-direct {p2, p1}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p1, p2

    :goto_0
    invoke-interface {p0, p1}, Le02;->resumeWith(Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public resumeWithException(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;->continuation:La31;

    if-eqz p0, :cond_0

    invoke-static {p1}, Lr57;->a(Ljava/lang/Throwable;)Lk57$a;

    move-result-object p1

    invoke-interface {p0, p1}, Le02;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
