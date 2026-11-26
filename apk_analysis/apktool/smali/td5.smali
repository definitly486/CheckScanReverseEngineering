.class public final synthetic Ltd5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lo07;

.field public final synthetic c:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

.field public final synthetic d:Landroidx/compose/foundation/gestures/NestedScrollScope;

.field public final synthetic e:Lnl3;


# direct methods
.method public synthetic constructor <init>(Lo07;Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;Landroidx/compose/foundation/gestures/NestedScrollScope;Lnl3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltd5;->b:Lo07;

    iput-object p2, p0, Ltd5;->c:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    iput-object p3, p0, Ltd5;->d:Landroidx/compose/foundation/gestures/NestedScrollScope;

    iput-object p4, p0, Ltd5;->e:Lnl3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ltd5;->e:Lnl3;

    check-cast p1, Landroidx/compose/animation/core/AnimationScope;

    iget-object v1, p0, Ltd5;->b:Lo07;

    iget-object v2, p0, Ltd5;->c:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    iget-object p0, p0, Ltd5;->d:Landroidx/compose/foundation/gestures/NestedScrollScope;

    invoke-static {v1, v2, p0, v0, p1}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->a(Lo07;Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;Landroidx/compose/foundation/gestures/NestedScrollScope;Lnl3;Landroidx/compose/animation/core/AnimationScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
