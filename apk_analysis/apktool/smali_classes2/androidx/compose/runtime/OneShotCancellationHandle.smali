.class public final Landroidx/compose/runtime/OneShotCancellationHandle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/CancellationHandle;


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final action:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final didFireCancellation:Landroidx/compose/runtime/internal/AtomicInt;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/OneShotCancellationHandle;->action:Lll3;

    const/4 p1, 0x0

    invoke-static {p1}, Landroidx/compose/runtime/internal/AtomicBoolean;->constructor-impl(Z)Landroidx/compose/runtime/internal/AtomicInt;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/OneShotCancellationHandle;->didFireCancellation:Landroidx/compose/runtime/internal/AtomicInt;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/OneShotCancellationHandle;->didFireCancellation:Landroidx/compose/runtime/internal/AtomicInt;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/compose/runtime/internal/AtomicBoolean;->getAndSet-impl(Landroidx/compose/runtime/internal/AtomicInt;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/compose/runtime/OneShotCancellationHandle;->action:Lll3;

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method
