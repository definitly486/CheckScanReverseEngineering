.class public final Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/RememberObserver;


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final coroutineScope:Ly22;


# direct methods
.method public constructor <init>(Ly22;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->coroutineScope:Ly22;

    return-void
.end method


# virtual methods
.method public final getCoroutineScope()Ly22;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->coroutineScope:Ly22;

    return-object p0
.end method

.method public onAbandoned()V
    .locals 1

    iget-object p0, p0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->coroutineScope:Ly22;

    instance-of v0, p0, Landroidx/compose/runtime/RememberedCoroutineScope;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/compose/runtime/RememberedCoroutineScope;

    invoke-virtual {p0}, Landroidx/compose/runtime/RememberedCoroutineScope;->cancelIfCreated()V

    return-void

    :cond_0
    new-instance v0, Landroidx/compose/runtime/LeftCompositionCancellationException;

    invoke-direct {v0}, Landroidx/compose/runtime/LeftCompositionCancellationException;-><init>()V

    invoke-static {p0, v0}, Lz22;->b(Ly22;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public onForgotten()V
    .locals 1

    iget-object p0, p0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->coroutineScope:Ly22;

    instance-of v0, p0, Landroidx/compose/runtime/RememberedCoroutineScope;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/compose/runtime/RememberedCoroutineScope;

    invoke-virtual {p0}, Landroidx/compose/runtime/RememberedCoroutineScope;->cancelIfCreated()V

    return-void

    :cond_0
    new-instance v0, Landroidx/compose/runtime/LeftCompositionCancellationException;

    invoke-direct {v0}, Landroidx/compose/runtime/LeftCompositionCancellationException;-><init>()V

    invoke-static {p0, v0}, Lz22;->b(Ly22;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public onRemembered()V
    .locals 0

    return-void
.end method
