.class public final synthetic Landroidx/compose/foundation/gestures/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/gestures/ContentInViewNode;

.field public final synthetic c:Landroidx/compose/foundation/gestures/UpdatableAnimationState;

.field public final synthetic d:Landroidx/compose/foundation/gestures/BringIntoViewSpec;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/foundation/gestures/UpdatableAnimationState;Landroidx/compose/foundation/gestures/BringIntoViewSpec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/i;->b:Landroidx/compose/foundation/gestures/ContentInViewNode;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/i;->c:Landroidx/compose/foundation/gestures/UpdatableAnimationState;

    iput-object p3, p0, Landroidx/compose/foundation/gestures/i;->d:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/gestures/i;->c:Landroidx/compose/foundation/gestures/UpdatableAnimationState;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/i;->d:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    iget-object p0, p0, Landroidx/compose/foundation/gestures/i;->b:Landroidx/compose/foundation/gestures/ContentInViewNode;

    invoke-static {p0, v0, v1}, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2$1;->g(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/foundation/gestures/UpdatableAnimationState;Landroidx/compose/foundation/gestures/BringIntoViewSpec;)Lj59;

    move-result-object p0

    return-object p0
.end method
