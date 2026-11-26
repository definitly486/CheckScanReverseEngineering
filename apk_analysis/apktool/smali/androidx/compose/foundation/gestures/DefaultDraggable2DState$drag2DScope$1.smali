.class public final Landroidx/compose/foundation/gestures/DefaultDraggable2DState$drag2DScope$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/gestures/Drag2DScope;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/DefaultDraggable2DState;-><init>(Lnl3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/gestures/DefaultDraggable2DState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/DefaultDraggable2DState;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DefaultDraggable2DState$drag2DScope$1;->this$0:Landroidx/compose/foundation/gestures/DefaultDraggable2DState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dragBy-k-4lQ0M(J)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/gestures/DefaultDraggable2DState$drag2DScope$1;->this$0:Landroidx/compose/foundation/gestures/DefaultDraggable2DState;

    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DefaultDraggable2DState;->getOnDelta()Lnl3;

    move-result-object p0

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object p1

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
