.class public final synthetic Lmn7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfm3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/text/selection/SelectionManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmn7;->b:Landroidx/compose/foundation/text/selection/SelectionManager;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Landroidx/compose/ui/layout/LayoutCoordinates;

    check-cast p3, Landroidx/compose/ui/geometry/Offset;

    check-cast p4, Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    iget-object p0, p0, Lmn7;->b:Landroidx/compose/foundation/text/selection/SelectionManager;

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/selection/SelectionManager;->c(Landroidx/compose/foundation/text/selection/SelectionManager;ZLandroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/geometry/Offset;Landroidx/compose/foundation/text/selection/SelectionAdjustment;)Lj59;

    move-result-object p0

    return-object p0
.end method
