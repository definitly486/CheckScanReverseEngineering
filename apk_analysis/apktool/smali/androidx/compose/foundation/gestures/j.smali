.class public final synthetic Landroidx/compose/foundation/gestures/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lo07;

.field public final synthetic c:Landroidx/compose/foundation/gestures/ScrollScope;

.field public final synthetic d:Lo07;

.field public final synthetic e:Landroidx/compose/foundation/gestures/DefaultFlingBehavior;


# direct methods
.method public synthetic constructor <init>(Lo07;Landroidx/compose/foundation/gestures/ScrollScope;Lo07;Landroidx/compose/foundation/gestures/DefaultFlingBehavior;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/j;->b:Lo07;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/j;->c:Landroidx/compose/foundation/gestures/ScrollScope;

    iput-object p3, p0, Landroidx/compose/foundation/gestures/j;->d:Lo07;

    iput-object p4, p0, Landroidx/compose/foundation/gestures/j;->e:Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/gestures/j;->e:Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    check-cast p1, Landroidx/compose/animation/core/AnimationScope;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/j;->b:Lo07;

    iget-object v2, p0, Landroidx/compose/foundation/gestures/j;->c:Landroidx/compose/foundation/gestures/ScrollScope;

    iget-object p0, p0, Landroidx/compose/foundation/gestures/j;->d:Lo07;

    invoke-static {v1, v2, p0, v0, p1}, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->g(Lo07;Landroidx/compose/foundation/gestures/ScrollScope;Lo07;Landroidx/compose/foundation/gestures/DefaultFlingBehavior;Landroidx/compose/animation/core/AnimationScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
