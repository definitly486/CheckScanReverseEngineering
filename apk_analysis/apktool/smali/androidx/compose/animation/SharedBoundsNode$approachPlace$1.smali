.class final Landroidx/compose/animation/SharedBoundsNode$approachPlace$1;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/SharedBoundsNode;->approachPlace(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;)Landroidx/compose/ui/layout/MeasureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $placeable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic this$0:Landroidx/compose/animation/SharedBoundsNode;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/SharedBoundsNode;Landroidx/compose/ui/layout/Placeable;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/animation/SharedBoundsNode$approachPlace$1;->this$0:Landroidx/compose/animation/SharedBoundsNode;

    iput-object p2, p0, Landroidx/compose/animation/SharedBoundsNode$approachPlace$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 118
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, p1}, Landroidx/compose/animation/SharedBoundsNode$approachPlace$1;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 7

    iget-object v1, p0, Landroidx/compose/animation/SharedBoundsNode$approachPlace$1;->this$0:Landroidx/compose/animation/SharedBoundsNode;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/compose/animation/SharedBoundsNode;->access$setPlaced$p(Landroidx/compose/animation/SharedBoundsNode;Z)V

    iget-object v1, p0, Landroidx/compose/animation/SharedBoundsNode$approachPlace$1;->this$0:Landroidx/compose/animation/SharedBoundsNode;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/compose/animation/SharedBoundsNode;->access$setBoundsBeforeDetached$p(Landroidx/compose/animation/SharedBoundsNode;Landroidx/compose/ui/geometry/Rect;)V

    iget-object v1, p0, Landroidx/compose/animation/SharedBoundsNode$approachPlace$1;->this$0:Landroidx/compose/animation/SharedBoundsNode;

    invoke-static {v1}, Landroidx/compose/animation/SharedBoundsNode;->access$getSharedElement(Landroidx/compose/animation/SharedBoundsNode;)Landroidx/compose/animation/SharedElement;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/animation/SharedElement;->getState$animation()Landroidx/compose/animation/SharedTransitionStateMachine$State;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/animation/SharedBoundsNode$approachPlace$1;->this$0:Landroidx/compose/animation/SharedBoundsNode;

    invoke-virtual {v2}, Landroidx/compose/animation/SharedBoundsNode;->getSharedElementEntry()Landroidx/compose/animation/SharedElementEntry;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/animation/SharedElementEntry;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Landroidx/compose/animation/SharedBoundsNode$approachPlace$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {v1}, Landroidx/compose/animation/SharedTransitionStateMachine$State;->getMatchIsOrHasBeenConfigured()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Landroidx/compose/animation/SharedTransitionStateMachine$State;->getTargetData()Landroidx/compose/animation/TargetData;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroidx/compose/animation/SharedTransitionStateMachine$State;->getCurrentBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v1, p0, Landroidx/compose/animation/SharedBoundsNode$approachPlace$1;->this$0:Landroidx/compose/animation/SharedBoundsNode;

    invoke-static {v1}, Landroidx/compose/animation/SharedBoundsNode;->access$getSharedElement(Landroidx/compose/animation/SharedBoundsNode;)Landroidx/compose/animation/SharedElement;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/animation/SharedElement;->getScope()Landroidx/compose/animation/SharedTransitionScopeImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/animation/SharedTransitionScopeImpl;->isTransitionActive()Z

    move-result v1

    iget-object v5, p0, Landroidx/compose/animation/SharedBoundsNode$approachPlace$1;->this$0:Landroidx/compose/animation/SharedBoundsNode;

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroidx/compose/animation/SharedBoundsNode$approachPlace$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    invoke-virtual {v5, p1, v0, v3, v4}, Landroidx/compose/animation/SharedBoundsNode;->approachPlaceMatchInTransition$animation(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/animation/TargetData;Landroidx/compose/ui/geometry/Rect;)V

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/compose/animation/SharedBoundsNode$approachPlace$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    invoke-static {v5, p1, v0, v4}, Landroidx/compose/animation/SharedBoundsNode;->access$approachPlaceMatchBeyondTransition(Landroidx/compose/animation/SharedBoundsNode;Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/geometry/Rect;)V

    return-void

    :cond_2
    const-string v0, "Match State is configured, but current bounds is null. State = "

    invoke-static {v1, v0}, Leg;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v0, "Match State is configured, but target data is null. State = "

    invoke-static {v1, v0}, Leg;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v1, p0, Landroidx/compose/animation/SharedBoundsNode$approachPlace$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    return-void
.end method
