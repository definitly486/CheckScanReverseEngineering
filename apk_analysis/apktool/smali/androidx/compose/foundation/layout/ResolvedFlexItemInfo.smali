.class public final Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/layout/FlexConfigScope;


# static fields
.field public static final $stable:I


# instance fields
.field private _density:Landroidx/compose/ui/unit/Density;

.field private _maxContentSize:I

.field private _minMainAxisSize:I

.field private alignSelf:I

.field private baseline:I

.field private baselineAlignmentBlock:Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;

.field private baselineAlignmentLine:Landroidx/compose/ui/layout/AlignmentLine;

.field private basis:J

.field private crossAxisSize:I

.field private crossPosition:I

.field private flexBaseSize:I

.field private flexBoxCrossAxisMax:I

.field private flexBoxCrossAxisMin:I

.field private flexBoxMainAxisMax:I

.field private flexBoxMainAxisMin:I

.field private grow:F

.field private hypotheticalMainSize:I

.field private isFrozen:Z

.field private mainAxisSize:I

.field private mainPosition:I

.field private measurable:Landroidx/compose/ui/layout/Measurable;

.field private order:I

.field private placeable:Landroidx/compose/ui/layout/Placeable;

.field private shrink:F

.field private targetMainSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroidx/compose/foundation/layout/FlexBoxKt;->getDefaultDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->_density:Landroidx/compose/ui/unit/Density;

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/compose/foundation/layout/FlexAlignSelf;->constructor-impl(I)I

    move-result v0

    iput v0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->alignSelf:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->shrink:F

    sget-object v0, Landroidx/compose/foundation/layout/FlexBasis;->Companion:Landroidx/compose/foundation/layout/FlexBasis$Companion;

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/FlexBasis$Companion;->getAuto-d-lZNVs()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->basis:J

    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->_minMainAxisSize:I

    iput v0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->_maxContentSize:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->baseline:I

    return-void
.end method

.method public static synthetic a(Lnl3;Landroidx/compose/ui/layout/Measured;)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->alignSelf$lambda$0(Lnl3;Landroidx/compose/ui/layout/Measured;)I

    move-result p0

    return p0
.end method

.method private static final alignSelf$lambda$0(Lnl3;Landroidx/compose/ui/layout/Measured;)I
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public alignSelf(Landroidx/compose/ui/layout/AlignmentLine;)V
    .locals 1

    const/4 v0, 0x5

    .line 19
    invoke-static {v0}, Landroidx/compose/foundation/layout/FlexAlignSelf;->constructor-impl(I)I

    move-result v0

    .line 20
    iput v0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->alignSelf:I

    .line 21
    iput-object p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->baselineAlignmentLine:Landroidx/compose/ui/layout/AlignmentLine;

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->baselineAlignmentBlock:Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;

    return-void
.end method

.method public alignSelf(Lnl3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/layout/Measured;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x5

    invoke-static {v0}, Landroidx/compose/foundation/layout/FlexAlignSelf;->constructor-impl(I)I

    move-result v0

    iput v0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->alignSelf:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->baselineAlignmentLine:Landroidx/compose/ui/layout/AlignmentLine;

    new-instance v0, Lsp0;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lsp0;-><init>(Lnl3;I)V

    iput-object v0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->baselineAlignmentBlock:Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;

    return-void
.end method

.method public alignSelf-aKVMlHY(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->alignSelf:I

    return-void
.end method

.method public basis(F)V
    .locals 2

    sget-object v0, Landroidx/compose/foundation/layout/FlexBasis;->Companion:Landroidx/compose/foundation/layout/FlexBasis$Companion;

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/layout/FlexBasis$Companion;->Percent-uoj9tHE(F)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->basis:J

    return-void
.end method

.method public basis-0680j_4(F)V
    .locals 2

    sget-object v0, Landroidx/compose/foundation/layout/FlexBasis;->Companion:Landroidx/compose/foundation/layout/FlexBasis$Companion;

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/layout/FlexBasis$Companion;->Dp-cHuBJEI(F)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->basis:J

    return-void
.end method

.method public basis-MFoeH6Y(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->basis:J

    return-void
.end method

.method public final getAlignSelf-_ov7Qcc$foundation_layout()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->alignSelf:I

    return p0
.end method

.method public final getBaseline()I
    .locals 0

    .line 93
    iget p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->baseline:I

    return p0
.end method

.method public final getBaseline(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;)I
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->baselineAlignmentBlock:Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;->calculateAlignmentLinePosition(Landroidx/compose/ui/layout/Measured;)I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->baselineAlignmentLine:Landroidx/compose/ui/layout/AlignmentLine;

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_3

    invoke-interface {p1, v0}, Landroidx/compose/ui/layout/Measured;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    move-result p2

    if-eq p2, v1, :cond_1

    return p2

    :cond_1
    iget-object p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->baselineAlignmentLine:Landroidx/compose/ui/layout/AlignmentLine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p0, Landroidx/compose/ui/layout/VerticalAlignmentLine;

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result p0

    return p0

    :cond_3
    iget v0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->alignSelf:I

    const/4 v2, 0x5

    invoke-static {v2}, Landroidx/compose/foundation/layout/FlexAlignSelf;->constructor-impl(I)I

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/FlexAlignSelf;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2, p1}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getBaseline$foundation_layout(Landroidx/compose/ui/layout/Placeable;)I

    move-result p0

    return p0

    :cond_4
    invoke-virtual {p2}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getAlignItems-20X20zU$foundation_layout()I

    move-result v0

    const/4 v2, 0x4

    invoke-static {v2}, Landroidx/compose/foundation/layout/FlexAlignItems;->constructor-impl(I)I

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/FlexAlignItems;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_5

    iget p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->alignSelf:I

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/compose/foundation/layout/FlexAlignSelf;->constructor-impl(I)I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/foundation/layout/FlexAlignSelf;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p2, p1}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getBaseline$foundation_layout(Landroidx/compose/ui/layout/Placeable;)I

    move-result p0

    return p0

    :cond_5
    return v1
.end method

.method public final getBaselineAlignmentBlock()Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->baselineAlignmentBlock:Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;

    return-object p0
.end method

.method public final getBaselineAlignmentLine()Landroidx/compose/ui/layout/AlignmentLine;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->baselineAlignmentLine:Landroidx/compose/ui/layout/AlignmentLine;

    return-object p0
.end method

.method public final getBasis-d-lZNVs$foundation_layout()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->basis:J

    return-wide v0
.end method

.method public final getCrossAxisSize()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->crossAxisSize:I

    return p0
.end method

.method public final getCrossPosition()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->crossPosition:I

    return p0
.end method

.method public getDensity()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->_density:Landroidx/compose/ui/unit/Density;

    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result p0

    return p0
.end method

.method public final getFlexBaseSize()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->flexBaseSize:I

    return p0
.end method

.method public getFlexBoxCrossAxisMax()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->flexBoxCrossAxisMax:I

    return p0
.end method

.method public getFlexBoxCrossAxisMin()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->flexBoxCrossAxisMin:I

    return p0
.end method

.method public getFlexBoxMainAxisMax()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->flexBoxMainAxisMax:I

    return p0
.end method

.method public getFlexBoxMainAxisMin()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->flexBoxMainAxisMin:I

    return p0
.end method

.method public getFontScale()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->_density:Landroidx/compose/ui/unit/Density;

    invoke-interface {p0}, Landroidx/compose/ui/unit/FontScaling;->getFontScale()F

    move-result p0

    return p0
.end method

.method public final getGrow$foundation_layout()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->grow:F

    return p0
.end method

.method public final getHasBaseline()Z
    .locals 1

    iget p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->alignSelf:I

    const/4 v0, 0x5

    invoke-static {v0}, Landroidx/compose/foundation/layout/FlexAlignSelf;->constructor-impl(I)I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/foundation/layout/FlexAlignSelf;->equals-impl0(II)Z

    move-result p0

    return p0
.end method

.method public final getHypotheticalMainSize()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->hypotheticalMainSize:I

    return p0
.end method

.method public final getMainAxisSize()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->mainAxisSize:I

    return p0
.end method

.method public final getMainPosition()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->mainPosition:I

    return p0
.end method

.method public final getMaxContentSize$foundation_layout(Z)I
    .locals 3

    iget v0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->_maxContentSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->measurable:Landroidx/compose/ui/layout/Measurable;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    if-eqz p1, :cond_0

    if-eqz v0, :cond_1

    invoke-interface {v0, v2}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0, v2}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicHeight(I)I

    move-result v1

    :cond_1
    :goto_0
    iput v1, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->_maxContentSize:I

    return v1

    :cond_2
    return v0
.end method

.method public final getMeasurable()Landroidx/compose/ui/layout/Measurable;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->measurable:Landroidx/compose/ui/layout/Measurable;

    return-object p0
.end method

.method public final getMinMainAxisSize$foundation_layout(Z)I
    .locals 3

    iget v0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->_minMainAxisSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->measurable:Landroidx/compose/ui/layout/Measurable;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    if-eqz p1, :cond_0

    if-eqz v0, :cond_1

    invoke-interface {v0, v2}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicWidth(I)I

    move-result v1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0, v2}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicHeight(I)I

    move-result v1

    :cond_1
    :goto_0
    iput v1, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->_minMainAxisSize:I

    return v1

    :cond_2
    return v0
.end method

.method public final getOrder$foundation_layout()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->order:I

    return p0
.end method

.method public final getPlaceable()Landroidx/compose/ui/layout/Placeable;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->placeable:Landroidx/compose/ui/layout/Placeable;

    return-object p0
.end method

.method public final getShrink$foundation_layout()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->shrink:F

    return p0
.end method

.method public final getTargetMainSize()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->targetMainSize:I

    return p0
.end method

.method public grow(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Flex grow cannot be negative: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/foundation/layout/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_1
    iput p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->grow:F

    return-void
.end method

.method public final isFrozen()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->isFrozen:Z

    return p0
.end method

.method public order(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->order:I

    return-void
.end method

.method public final prepare-RMq0m1M(Landroidx/compose/ui/unit/Density;J)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->_density:Landroidx/compose/ui/unit/Density;

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result p1

    iput p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->flexBoxMainAxisMax:I

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result p1

    iput p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->flexBoxMainAxisMin:I

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p1

    iput p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->flexBoxCrossAxisMax:I

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result p1

    iput p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->flexBoxCrossAxisMin:I

    return-void
.end method

.method public final setAlignSelf-aKVMlHY$foundation_layout(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->alignSelf:I

    return-void
.end method

.method public final setBaseline(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->baseline:I

    return-void
.end method

.method public final setBasis-MFoeH6Y$foundation_layout(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->basis:J

    return-void
.end method

.method public final setCrossAxisSize(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->crossAxisSize:I

    return-void
.end method

.method public final setCrossPosition(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->crossPosition:I

    return-void
.end method

.method public final setFlexBaseSize(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->flexBaseSize:I

    return-void
.end method

.method public final setFrozen(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->isFrozen:Z

    return-void
.end method

.method public final setGrow$foundation_layout(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->grow:F

    return-void
.end method

.method public final setHypotheticalMainSize(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->hypotheticalMainSize:I

    return-void
.end method

.method public final setMainAxisSize(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->mainAxisSize:I

    return-void
.end method

.method public final setMainPosition(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->mainPosition:I

    return-void
.end method

.method public final setMeasurable(Landroidx/compose/ui/layout/Measurable;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->measurable:Landroidx/compose/ui/layout/Measurable;

    return-void
.end method

.method public final setOrder$foundation_layout(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->order:I

    return-void
.end method

.method public final setPlaceable(Landroidx/compose/ui/layout/Placeable;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->placeable:Landroidx/compose/ui/layout/Placeable;

    return-void
.end method

.method public final setShrink$foundation_layout(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->shrink:F

    return-void
.end method

.method public final setTargetMainSize(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->targetMainSize:I

    return-void
.end method

.method public shrink(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Flex shrink cannot be negative: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/foundation/layout/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_1
    iput p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->shrink:F

    return-void
.end method

.method public toDp-GaN1DYA(J)F
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->_density:Landroidx/compose/ui/unit/Density;

    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/unit/FontScaling;->toDp-GaN1DYA(J)F

    move-result p0

    return p0
.end method

.method public toSp-0xMU5do(F)J
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->_density:Landroidx/compose/ui/unit/Density;

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/FontScaling;->toSp-0xMU5do(F)J

    move-result-wide p0

    return-wide p0
.end method
