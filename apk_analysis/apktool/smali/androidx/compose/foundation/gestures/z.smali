.class public final synthetic Landroidx/compose/foundation/gestures/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/gestures/ScrollingLogic2D;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/gestures/ScrollingLogic2D;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/z;->b:Landroidx/compose/foundation/gestures/ScrollingLogic2D;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/gestures/z;->b:Landroidx/compose/foundation/gestures/ScrollingLogic2D;

    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    invoke-static {p0, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic2D;->a(Landroidx/compose/foundation/gestures/ScrollingLogic2D;Landroidx/compose/ui/geometry/Offset;)Landroidx/compose/ui/geometry/Offset;

    move-result-object p0

    return-object p0
.end method
