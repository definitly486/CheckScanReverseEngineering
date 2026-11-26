.class public final synthetic Landroidx/compose/foundation/gestures/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lq07;

.field public final synthetic c:Landroidx/compose/foundation/gestures/NestedScrollScope;


# direct methods
.method public synthetic constructor <init>(Lq07;Landroidx/compose/foundation/gestures/NestedScrollScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/v;->b:Lq07;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/v;->c:Landroidx/compose/foundation/gestures/NestedScrollScope;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    check-cast p2, Landroidx/compose/ui/geometry/Offset;

    iget-object v0, p0, Landroidx/compose/foundation/gestures/v;->b:Lq07;

    iget-object p0, p0, Landroidx/compose/foundation/gestures/v;->c:Landroidx/compose/foundation/gestures/NestedScrollScope;

    invoke-static {v0, p0, p1, p2}, Landroidx/compose/foundation/gestures/Scrollable2DKt$semanticsScrollBy$2;->g(Lq07;Landroidx/compose/foundation/gestures/NestedScrollScope;Landroidx/compose/ui/geometry/Offset;Landroidx/compose/ui/geometry/Offset;)Lj59;

    move-result-object p0

    return-object p0
.end method
