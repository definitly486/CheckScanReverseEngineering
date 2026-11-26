.class public final synthetic Lo79;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/gestures/UpdatableAnimationState;

.field public final synthetic c:Lnl3;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/gestures/UpdatableAnimationState;Lnl3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo79;->b:Landroidx/compose/foundation/gestures/UpdatableAnimationState;

    iput-object p2, p0, Lo79;->c:Lnl3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p1, p0, Lo79;->b:Landroidx/compose/foundation/gestures/UpdatableAnimationState;

    iget-object p0, p0, Lo79;->c:Lnl3;

    invoke-static {p1, p0, v0, v1}, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->a(Landroidx/compose/foundation/gestures/UpdatableAnimationState;Lnl3;J)Lj59;

    move-result-object p0

    return-object p0
.end method
