.class public final synthetic Landroidx/compose/foundation/gestures/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/gestures/NestedScrollScope;

.field public final synthetic c:Landroidx/compose/foundation/gestures/ScrollingLogic;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/NestedScrollScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/compose/foundation/gestures/y;->b:Landroidx/compose/foundation/gestures/NestedScrollScope;

    iput-object p1, p0, Landroidx/compose/foundation/gestures/y;->c:Landroidx/compose/foundation/gestures/ScrollingLogic;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/gestures/y;->c:Landroidx/compose/foundation/gestures/ScrollingLogic;

    check-cast p1, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;

    iget-object p0, p0, Landroidx/compose/foundation/gestures/y;->b:Landroidx/compose/foundation/gestures/NestedScrollScope;

    invoke-static {p0, v0, p1}, Landroidx/compose/foundation/gestures/ScrollableNode$drag$2$1;->g(Landroidx/compose/foundation/gestures/NestedScrollScope;Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/DragEvent$DragDelta;)Lj59;

    move-result-object p0

    return-object p0
.end method
