.class final Landroidx/compose/runtime/NextFrameEndCallbackQueue$NextFrameEndAwaiter;
.super Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/NextFrameEndCallbackQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NextFrameEndAwaiter"
.end annotation


# instance fields
.field private onNextFrameEnd:Lll3;
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
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/NextFrameEndCallbackQueue$NextFrameEndAwaiter;->onNextFrameEnd:Lll3;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/runtime/NextFrameEndCallbackQueue$NextFrameEndAwaiter;->onNextFrameEnd:Lll3;

    return-void
.end method

.method public final resume()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/NextFrameEndCallbackQueue$NextFrameEndAwaiter;->onNextFrameEnd:Lll3;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public resumeWithException(Ljava/lang/Throwable;)V
    .locals 0

    throw p1
.end method
