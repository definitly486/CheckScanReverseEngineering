.class final Landroidx/compose/animation/SharedTransitionScopeImpl$onEntryRemoved$2$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.compose.animation.SharedTransitionScopeImpl$onEntryRemoved$2$1"
    f = "SharedTransitionScope.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/SharedTransitionScopeImpl;->onEntryRemoved$animation(Landroidx/compose/animation/SharedElementEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ly22;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $sharedElementState:Landroidx/compose/animation/SharedElementEntry;

.field final synthetic $this_with:Landroidx/compose/animation/SharedElement;

.field label:I


# direct methods
.method public constructor <init>(Landroidx/compose/animation/SharedElement;Landroidx/compose/animation/SharedElementEntry;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/SharedElement;",
            "Landroidx/compose/animation/SharedElementEntry;",
            "Le02<",
            "-",
            "Landroidx/compose/animation/SharedTransitionScopeImpl$onEntryRemoved$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/animation/SharedTransitionScopeImpl$onEntryRemoved$2$1;->$this_with:Landroidx/compose/animation/SharedElement;

    iput-object p2, p0, Landroidx/compose/animation/SharedTransitionScopeImpl$onEntryRemoved$2$1;->$sharedElementState:Landroidx/compose/animation/SharedElementEntry;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le02<",
            "*>;)",
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation

    new-instance p1, Landroidx/compose/animation/SharedTransitionScopeImpl$onEntryRemoved$2$1;

    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionScopeImpl$onEntryRemoved$2$1;->$this_with:Landroidx/compose/animation/SharedElement;

    iget-object p0, p0, Landroidx/compose/animation/SharedTransitionScopeImpl$onEntryRemoved$2$1;->$sharedElementState:Landroidx/compose/animation/SharedElementEntry;

    invoke-direct {p1, v0, p0, p2}, Landroidx/compose/animation/SharedTransitionScopeImpl$onEntryRemoved$2$1;-><init>(Landroidx/compose/animation/SharedElement;Landroidx/compose/animation/SharedElementEntry;Le02;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/animation/SharedTransitionScopeImpl$onEntryRemoved$2$1;->invoke(Ly22;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ly22;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly22;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/compose/animation/SharedTransitionScopeImpl$onEntryRemoved$2$1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/SharedTransitionScopeImpl$onEntryRemoved$2$1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/compose/animation/SharedTransitionScopeImpl$onEntryRemoved$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v0, p0, Landroidx/compose/animation/SharedTransitionScopeImpl$onEntryRemoved$2$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/animation/SharedTransitionScopeImpl$onEntryRemoved$2$1;->$this_with:Landroidx/compose/animation/SharedElement;

    invoke-virtual {p1}, Landroidx/compose/animation/SharedElement;->getAllEntries()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/compose/animation/SharedTransitionScopeImpl$onEntryRemoved$2$1;->$this_with:Landroidx/compose/animation/SharedElement;

    invoke-virtual {p1}, Landroidx/compose/animation/SharedElement;->getScope()Landroidx/compose/animation/SharedTransitionScopeImpl;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/animation/SharedTransitionScopeImpl;->access$getSharedElements$p(Landroidx/compose/animation/SharedTransitionScopeImpl;)Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    move-result-object p1

    iget-object p0, p0, Landroidx/compose/animation/SharedTransitionScopeImpl$onEntryRemoved$2$1;->$this_with:Landroidx/compose/animation/SharedElement;

    invoke-virtual {p0}, Landroidx/compose/animation/SharedElement;->getKey()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
