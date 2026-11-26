.class public final synthetic Landroidx/compose/foundation/gestures/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/gestures/ContentInViewNode;

.field public final synthetic c:Landroidx/compose/foundation/gestures/UpdatableAnimationState;

.field public final synthetic d:Lmb4;

.field public final synthetic e:Landroidx/compose/foundation/gestures/NestedScrollScope;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/foundation/gestures/UpdatableAnimationState;Lmb4;Landroidx/compose/foundation/gestures/NestedScrollScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/h;->b:Landroidx/compose/foundation/gestures/ContentInViewNode;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/h;->c:Landroidx/compose/foundation/gestures/UpdatableAnimationState;

    iput-object p3, p0, Landroidx/compose/foundation/gestures/h;->d:Lmb4;

    iput-object p4, p0, Landroidx/compose/foundation/gestures/h;->e:Landroidx/compose/foundation/gestures/NestedScrollScope;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Landroidx/compose/foundation/gestures/h;->b:Landroidx/compose/foundation/gestures/ContentInViewNode;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/h;->c:Landroidx/compose/foundation/gestures/UpdatableAnimationState;

    iget-object v2, p0, Landroidx/compose/foundation/gestures/h;->d:Lmb4;

    iget-object p0, p0, Landroidx/compose/foundation/gestures/h;->e:Landroidx/compose/foundation/gestures/NestedScrollScope;

    invoke-static {v0, v1, v2, p0, p1}, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2$1;->i(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/foundation/gestures/UpdatableAnimationState;Lmb4;Landroidx/compose/foundation/gestures/NestedScrollScope;F)Lj59;

    move-result-object p0

    return-object p0
.end method
