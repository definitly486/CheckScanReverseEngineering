.class public final synthetic Landroidx/compose/foundation/gestures/snapping/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lo07;

.field public final synthetic c:Lnl3;


# direct methods
.method public synthetic constructor <init>(Lo07;Lnl3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/snapping/b;->b:Lo07;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/snapping/b;->c:Lnl3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Landroidx/compose/foundation/gestures/snapping/b;->b:Lo07;

    iget-object p0, p0, Landroidx/compose/foundation/gestures/snapping/b;->c:Lnl3;

    invoke-static {v0, p0, p1}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->g(Lo07;Lnl3;F)Lj59;

    move-result-object p0

    return-object p0
.end method
