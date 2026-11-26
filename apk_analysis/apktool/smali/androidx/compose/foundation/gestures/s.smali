.class public final synthetic Landroidx/compose/foundation/gestures/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/compose/foundation/gestures/NonTouchScrollingLogicKt$busyReceive$2$job$1;->g(J)Lj59;

    move-result-object p0

    return-object p0
.end method
