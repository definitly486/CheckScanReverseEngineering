.class final Landroidx/compose/runtime/BroadcastFrameClock$withFrameNanos$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/BroadcastFrameClock;->withFrameNanos(Lnl3;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnl3<",
        "Ljava/lang/Throwable;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $cancellationHandle:Landroidx/compose/runtime/CancellationHandle;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/CancellationHandle;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/BroadcastFrameClock$withFrameNanos$2$1;->$cancellationHandle:Landroidx/compose/runtime/CancellationHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/BroadcastFrameClock$withFrameNanos$2$1;->invoke(Ljava/lang/Throwable;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 0

    .line 8
    iget-object p0, p0, Landroidx/compose/runtime/BroadcastFrameClock$withFrameNanos$2$1;->$cancellationHandle:Landroidx/compose/runtime/CancellationHandle;

    invoke-interface {p0}, Landroidx/compose/runtime/CancellationHandle;->cancel()V

    return-void
.end method
