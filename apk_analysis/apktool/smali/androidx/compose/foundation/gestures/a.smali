.class public final synthetic Landroidx/compose/foundation/gestures/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:F

.field public final synthetic c:Lo07;

.field public final synthetic d:Landroidx/compose/foundation/gestures/AnchoredDragScope;

.field public final synthetic e:Lo07;


# direct methods
.method public synthetic constructor <init>(FLo07;Landroidx/compose/foundation/gestures/AnchoredDragScope;Lo07;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/gestures/a;->b:F

    iput-object p2, p0, Landroidx/compose/foundation/gestures/a;->c:Lo07;

    iput-object p3, p0, Landroidx/compose/foundation/gestures/a;->d:Landroidx/compose/foundation/gestures/AnchoredDragScope;

    iput-object p4, p0, Landroidx/compose/foundation/gestures/a;->e:Lo07;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/gestures/a;->e:Lo07;

    check-cast p1, Landroidx/compose/animation/core/AnimationScope;

    iget v1, p0, Landroidx/compose/foundation/gestures/a;->b:F

    iget-object v2, p0, Landroidx/compose/foundation/gestures/a;->c:Lo07;

    iget-object p0, p0, Landroidx/compose/foundation/gestures/a;->d:Landroidx/compose/foundation/gestures/AnchoredDragScope;

    invoke-static {v1, v2, p0, v0, p1}, Landroidx/compose/foundation/gestures/AnchoredDraggableKt$animateToWithDecay$2;->g(FLo07;Landroidx/compose/foundation/gestures/AnchoredDragScope;Lo07;Landroidx/compose/animation/core/AnimationScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
