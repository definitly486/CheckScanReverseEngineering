.class public final Landroidx/compose/foundation/gestures/ScrollingLogic2D$nestedScrollScope$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/gestures/NestedScrollScope;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/ScrollingLogic2D;-><init>(Landroidx/compose/foundation/gestures/Scrollable2DState;Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;Lll3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/gestures/ScrollingLogic2D;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/ScrollingLogic2D;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$nestedScrollScope$1;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic2D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public scrollBy-OzD1aCk(JI)J
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$nestedScrollScope$1;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic2D;

    invoke-static {v0}, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->access$getOuterStateScope$p(Landroidx/compose/foundation/gestures/ScrollingLogic2D;)Landroidx/compose/foundation/gestures/Scroll2DScope;

    move-result-object v0

    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$nestedScrollScope$1;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic2D;

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->access$performScroll-3eAAhYA(Landroidx/compose/foundation/gestures/ScrollingLogic2D;Landroidx/compose/foundation/gestures/Scroll2DScope;JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public scrollByWithOverscroll-OzD1aCk(JI)J
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$nestedScrollScope$1;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic2D;

    invoke-static {v0, p3}, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->access$setLatestScrollSource$p(Landroidx/compose/foundation/gestures/ScrollingLogic2D;I)V

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$nestedScrollScope$1;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic2D;

    invoke-static {v0}, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->access$getOverscrollEffect$p(Landroidx/compose/foundation/gestures/ScrollingLogic2D;)Landroidx/compose/foundation/OverscrollEffect;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$nestedScrollScope$1;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic2D;

    invoke-virtual {v1, p1, p2}, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->shouldDispatchOverscroll-k-4lQ0M(J)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p3, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$nestedScrollScope$1;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic2D;

    invoke-static {p3}, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->access$getLatestScrollSource$p(Landroidx/compose/foundation/gestures/ScrollingLogic2D;)I

    move-result p3

    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$nestedScrollScope$1;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic2D;

    invoke-static {p0}, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->access$getPerformScrollForOverscroll$p(Landroidx/compose/foundation/gestures/ScrollingLogic2D;)Lnl3;

    move-result-object p0

    invoke-interface {v0, p1, p2, p3, p0}, Landroidx/compose/foundation/OverscrollEffect;->applyToScroll-Rhakbz0(JILnl3;)J

    move-result-wide p0

    return-wide p0

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$nestedScrollScope$1;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic2D;

    invoke-static {v0}, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->access$getOuterStateScope$p(Landroidx/compose/foundation/gestures/ScrollingLogic2D;)Landroidx/compose/foundation/gestures/Scroll2DScope;

    move-result-object v0

    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic2D$nestedScrollScope$1;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic2D;

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->access$performScroll-3eAAhYA(Landroidx/compose/foundation/gestures/ScrollingLogic2D;Landroidx/compose/foundation/gestures/Scroll2DScope;JI)J

    move-result-wide p0

    return-wide p0
.end method
