.class public final synthetic Landroidx/compose/foundation/gestures/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lr07;

.field public final synthetic c:Landroidx/compose/foundation/gestures/TransformScope;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lr07;Landroidx/compose/foundation/gestures/TransformScope;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/e0;->b:Lr07;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/e0;->c:Landroidx/compose/foundation/gestures/TransformScope;

    iput-wide p3, p0, Landroidx/compose/foundation/gestures/e0;->d:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-wide v0, p0, Landroidx/compose/foundation/gestures/e0;->d:J

    check-cast p1, Landroidx/compose/animation/core/AnimationScope;

    iget-object v2, p0, Landroidx/compose/foundation/gestures/e0;->b:Lr07;

    iget-object p0, p0, Landroidx/compose/foundation/gestures/e0;->c:Landroidx/compose/foundation/gestures/TransformScope;

    invoke-static {v2, p0, v0, v1, p1}, Landroidx/compose/foundation/gestures/TransformableStateKt$animateBy$4;->g(Lr07;Landroidx/compose/foundation/gestures/TransformScope;JLandroidx/compose/animation/core/AnimationScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
