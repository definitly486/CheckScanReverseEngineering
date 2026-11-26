.class public final synthetic Landroidx/compose/foundation/gestures/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/gestures/NestedScrollScope;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/gestures/NestedScrollScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/w;->b:Landroidx/compose/foundation/gestures/NestedScrollScope;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/gestures/w;->b:Landroidx/compose/foundation/gestures/NestedScrollScope;

    check-cast p1, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;

    invoke-static {p0, p1}, Landroidx/compose/foundation/gestures/Scrollable2DNode$drag$2$1;->g(Landroidx/compose/foundation/gestures/NestedScrollScope;Landroidx/compose/foundation/gestures/DragEvent$DragDelta;)Lj59;

    move-result-object p0

    return-object p0
.end method
