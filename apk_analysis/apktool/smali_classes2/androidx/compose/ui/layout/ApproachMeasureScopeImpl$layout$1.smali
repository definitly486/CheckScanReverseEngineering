.class public final Landroidx/compose/ui/layout/ApproachMeasureScopeImpl$layout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/MeasureResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/layout/ApproachMeasureScopeImpl;->layout(IILjava/util/Map;Lnl3;Lnl3;)Landroidx/compose/ui/layout/MeasureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $placementBlock:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final alignmentLines:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/compose/ui/layout/AlignmentLine;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final height:I

.field private final rulers:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/compose/ui/layout/RulerScope;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/ui/layout/ApproachMeasureScopeImpl;

.field private final width:I


# direct methods
.method public constructor <init>(IILjava/util/Map;Lnl3;Lnl3;Landroidx/compose/ui/layout/ApproachMeasureScopeImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Landroidx/compose/ui/layout/AlignmentLine;",
            "Ljava/lang/Integer;",
            ">;",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/layout/RulerScope;",
            "Lj59;",
            ">;",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
            "Lj59;",
            ">;",
            "Landroidx/compose/ui/layout/ApproachMeasureScopeImpl;",
            ")V"
        }
    .end annotation

    iput-object p5, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl$layout$1;->$placementBlock:Lnl3;

    iput-object p6, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl$layout$1;->this$0:Landroidx/compose/ui/layout/ApproachMeasureScopeImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl$layout$1;->width:I

    iput p2, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl$layout$1;->height:I

    iput-object p3, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl$layout$1;->alignmentLines:Ljava/util/Map;

    iput-object p4, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl$layout$1;->rulers:Lnl3;

    return-void
.end method

.method public static synthetic getAlignmentLines$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public getAlignmentLines()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/compose/ui/layout/AlignmentLine;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl$layout$1;->alignmentLines:Ljava/util/Map;

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl$layout$1;->height:I

    return p0
.end method

.method public getRulers()Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Landroidx/compose/ui/layout/RulerScope;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl$layout$1;->rulers:Lnl3;

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl$layout$1;->width:I

    return p0
.end method

.method public placeChildren()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl$layout$1;->$placementBlock:Lnl3;

    iget-object p0, p0, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl$layout$1;->this$0:Landroidx/compose/ui/layout/ApproachMeasureScopeImpl;

    invoke-virtual {p0}, Landroidx/compose/ui/layout/ApproachMeasureScopeImpl;->getCoordinator()Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->getPlacementScope()Landroidx/compose/ui/layout/Placeable$PlacementScope;

    move-result-object p0

    invoke-interface {v0, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
