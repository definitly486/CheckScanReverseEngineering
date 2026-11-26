.class final Landroidx/compose/animation/SharedTransitionScopeImpl$observeAnimatingBlock$1;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/SharedTransitionScopeImpl;-><init>(Landroidx/compose/ui/layout/LookaheadScope;Ly22;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/animation/SharedTransitionScopeImpl;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/SharedTransitionScopeImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/animation/SharedTransitionScopeImpl$observeAnimatingBlock$1;->this$0:Landroidx/compose/animation/SharedTransitionScopeImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 52
    invoke-virtual {p0}, Landroidx/compose/animation/SharedTransitionScopeImpl$observeAnimatingBlock$1;->invoke()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final invoke()V
    .locals 1

    iget-object p0, p0, Landroidx/compose/animation/SharedTransitionScopeImpl$observeAnimatingBlock$1;->this$0:Landroidx/compose/animation/SharedTransitionScopeImpl;

    invoke-static {p0}, Landroidx/compose/animation/SharedTransitionScopeImpl;->access$getSharedElements$p(Landroidx/compose/animation/SharedTransitionScopeImpl;)Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->toMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/SharedElement;

    invoke-virtual {v0}, Landroidx/compose/animation/SharedElement;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    return-void
.end method
