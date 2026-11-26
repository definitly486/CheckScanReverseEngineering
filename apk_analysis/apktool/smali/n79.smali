.class public final synthetic Ln79;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/gestures/UpdatableAnimationState;

.field public final synthetic c:F

.field public final synthetic d:Lnl3;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/gestures/UpdatableAnimationState;FLnl3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln79;->b:Landroidx/compose/foundation/gestures/UpdatableAnimationState;

    iput p2, p0, Ln79;->c:F

    iput-object p3, p0, Ln79;->d:Lnl3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p1, p0, Ln79;->b:Landroidx/compose/foundation/gestures/UpdatableAnimationState;

    iget v2, p0, Ln79;->c:F

    iget-object p0, p0, Ln79;->d:Lnl3;

    invoke-static {p1, v2, p0, v0, v1}, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->b(Landroidx/compose/foundation/gestures/UpdatableAnimationState;FLnl3;J)Lj59;

    move-result-object p0

    return-object p0
.end method
