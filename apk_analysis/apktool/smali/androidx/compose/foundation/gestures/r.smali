.class public final synthetic Landroidx/compose/foundation/gestures/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

.field public final synthetic c:Lr07;

.field public final synthetic d:Lo07;

.field public final synthetic e:Landroidx/compose/foundation/gestures/ScrollingLogic;

.field public final synthetic f:Ln07;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;Lr07;Lo07;Landroidx/compose/foundation/gestures/ScrollingLogic;Ln07;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/r;->b:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/r;->c:Lr07;

    iput-object p3, p0, Landroidx/compose/foundation/gestures/r;->d:Lo07;

    iput-object p4, p0, Landroidx/compose/foundation/gestures/r;->e:Landroidx/compose/foundation/gestures/ScrollingLogic;

    iput-object p5, p0, Landroidx/compose/foundation/gestures/r;->f:Ln07;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-object v0, p0, Landroidx/compose/foundation/gestures/r;->b:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/r;->c:Lr07;

    iget-object v2, p0, Landroidx/compose/foundation/gestures/r;->d:Lo07;

    iget-object v3, p0, Landroidx/compose/foundation/gestures/r;->e:Landroidx/compose/foundation/gestures/ScrollingLogic;

    iget-object v4, p0, Landroidx/compose/foundation/gestures/r;->f:Ln07;

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->g(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;Lr07;Lo07;Landroidx/compose/foundation/gestures/ScrollingLogic;Ln07;F)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
