.class public final Landroidx/compose/ui/layout/MeasureScope$layout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/MeasureResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lnl3;Lnl3;)Landroidx/compose/ui/layout/MeasureResult;
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

.field final synthetic $width:I

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

.field final synthetic this$0:Landroidx/compose/ui/layout/MeasureScope;

.field private final width:I


# direct methods
.method public constructor <init>(IILjava/util/Map;Lnl3;Landroidx/compose/ui/layout/MeasureScope;Lnl3;)V
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
            "Landroidx/compose/ui/layout/MeasureScope;",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Landroidx/compose/ui/layout/MeasureScope$layout$1;->$width:I

    iput-object p5, p0, Landroidx/compose/ui/layout/MeasureScope$layout$1;->this$0:Landroidx/compose/ui/layout/MeasureScope;

    iput-object p6, p0, Landroidx/compose/ui/layout/MeasureScope$layout$1;->$placementBlock:Lnl3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/layout/MeasureScope$layout$1;->width:I

    iput p2, p0, Landroidx/compose/ui/layout/MeasureScope$layout$1;->height:I

    iput-object p3, p0, Landroidx/compose/ui/layout/MeasureScope$layout$1;->alignmentLines:Ljava/util/Map;

    iput-object p4, p0, Landroidx/compose/ui/layout/MeasureScope$layout$1;->rulers:Lnl3;

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

    iget-object p0, p0, Landroidx/compose/ui/layout/MeasureScope$layout$1;->alignmentLines:Ljava/util/Map;

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/layout/MeasureScope$layout$1;->height:I

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

    iget-object p0, p0, Landroidx/compose/ui/layout/MeasureScope$layout$1;->rulers:Lnl3;

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/layout/MeasureScope$layout$1;->width:I

    return p0
.end method

.method public placeChildren()V
    .locals 5

    iget-object v0, p0, Landroidx/compose/ui/layout/MeasureScope$layout$1;->this$0:Landroidx/compose/ui/layout/MeasureScope;

    instance-of v1, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    iget-object v2, p0, Landroidx/compose/ui/layout/MeasureScope$layout$1;->$placementBlock:Lnl3;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->getPlacementScope()Landroidx/compose/ui/layout/Placeable$PlacementScope;

    move-result-object p0

    invoke-interface {v2, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Landroidx/compose/ui/layout/SimplePlacementScope;

    iget v1, p0, Landroidx/compose/ui/layout/MeasureScope$layout$1;->$width:I

    iget-object v3, p0, Landroidx/compose/ui/layout/MeasureScope$layout$1;->this$0:Landroidx/compose/ui/layout/MeasureScope;

    invoke-interface {v3}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v3

    iget-object v4, p0, Landroidx/compose/ui/layout/MeasureScope$layout$1;->this$0:Landroidx/compose/ui/layout/MeasureScope;

    invoke-interface {v4}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result v4

    iget-object p0, p0, Landroidx/compose/ui/layout/MeasureScope$layout$1;->this$0:Landroidx/compose/ui/layout/MeasureScope;

    invoke-interface {p0}, Landroidx/compose/ui/unit/FontScaling;->getFontScale()F

    move-result p0

    invoke-direct {v0, v1, v3, v4, p0}, Landroidx/compose/ui/layout/SimplePlacementScope;-><init>(ILandroidx/compose/ui/unit/LayoutDirection;FF)V

    invoke-interface {v2, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
