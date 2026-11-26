.class public final Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/layout/FlexBoxConfigScope;


# static fields
.field public static final $stable:I


# instance fields
.field private _density:Landroidx/compose/ui/unit/Density;

.field private alignContent:I

.field private alignItems:I

.field private baselineAlignmentBlock:Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;

.field private baselineAlignmentLine:Landroidx/compose/ui/layout/AlignmentLine;

.field private columnGap:F

.field private constraints:J

.field private direction:I

.field private justifyContent:I

.field private rowGap:F

.field private wrap:I


# direct methods
.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroidx/compose/foundation/layout/FlexBoxKt;->getDefaultDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->_density:Landroidx/compose/ui/unit/Density;

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->constraints:J

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/compose/foundation/layout/FlexDirection;->constructor-impl(I)I

    move-result v1

    iput v1, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->direction:I

    invoke-static {v0}, Landroidx/compose/foundation/layout/FlexWrap;->constructor-impl(I)I

    move-result v1

    iput v1, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->wrap:I

    invoke-static {v0}, Landroidx/compose/foundation/layout/FlexJustifyContent;->constructor-impl(I)I

    move-result v1

    iput v1, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->justifyContent:I

    invoke-static {v0}, Landroidx/compose/foundation/layout/FlexAlignItems;->constructor-impl(I)I

    move-result v1

    iput v1, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->alignItems:I

    invoke-static {v0}, Landroidx/compose/foundation/layout/FlexAlignContent;->constructor-impl(I)I

    move-result v0

    iput v0, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->alignContent:I

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    iput v1, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->rowGap:F

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    iput v0, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->columnGap:F

    return-void
.end method

.method public static synthetic a(Lnl3;Landroidx/compose/ui/layout/Measured;)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->alignItems$lambda$0(Lnl3;Landroidx/compose/ui/layout/Measured;)I

    move-result p0

    return p0
.end method

.method private static final alignItems$lambda$0(Lnl3;Landroidx/compose/ui/layout/Measured;)I
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public alignContent-RVFKNBI(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->alignContent:I

    return-void
.end method

.method public alignItems(Landroidx/compose/ui/layout/AlignmentLine;)V
    .locals 1

    const/4 v0, 0x4

    .line 19
    invoke-static {v0}, Landroidx/compose/foundation/layout/FlexAlignItems;->constructor-impl(I)I

    move-result v0

    .line 20
    iput v0, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->alignItems:I

    .line 21
    iput-object p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->baselineAlignmentLine:Landroidx/compose/ui/layout/AlignmentLine;

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->baselineAlignmentBlock:Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;

    return-void
.end method

.method public alignItems(Lnl3;)V
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

    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/compose/foundation/layout/FlexAlignItems;->constructor-impl(I)I

    move-result v0

    iput v0, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->alignItems:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->baselineAlignmentLine:Landroidx/compose/ui/layout/AlignmentLine;

    new-instance v0, Lvv;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lvv;-><init>(Lnl3;I)V

    iput-object v0, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->baselineAlignmentBlock:Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;

    return-void
.end method

.method public alignItems-yvIbNKY(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->alignItems:I

    return-void
.end method

.method public columnGap-0680j_4(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->columnGap:F

    return-void
.end method

.method public final crossAxisGap()I
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getDirection-T4wFHC8$foundation_layout()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Landroidx/compose/foundation/layout/FlexDirection;->constructor-impl(I)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/FlexDirection;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getDirection-T4wFHC8$foundation_layout()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1}, Landroidx/compose/foundation/layout/FlexDirection;->constructor-impl(I)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/FlexDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->columnGap:F

    :goto_0
    invoke-interface {p0, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p0

    return p0

    :cond_1
    :goto_1
    iget v0, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->rowGap:F

    goto :goto_0
.end method

.method public direction-d5Yd7B0(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->direction:I

    return-void
.end method

.method public gap-0680j_4(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->rowGap:F

    iput p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->columnGap:F

    return-void
.end method

.method public gap-YgX7TsA(FF)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->rowGap:F

    iput p2, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->columnGap:F

    return-void
.end method

.method public final getAlignContent-d9B3MrI$foundation_layout()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->alignContent:I

    return p0
.end method

.method public final getAlignItems-20X20zU$foundation_layout()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->alignItems:I

    return p0
.end method

.method public final getBaseline$foundation_layout(Landroidx/compose/ui/layout/Placeable;)I
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->baselineAlignmentBlock:Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;->calculateAlignmentLinePosition(Landroidx/compose/ui/layout/Measured;)I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->baselineAlignmentLine:Landroidx/compose/ui/layout/AlignmentLine;

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_3

    invoke-interface {p1, v0}, Landroidx/compose/ui/layout/Measured;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    move-result v0

    if-eq v0, v1, :cond_1

    return v0

    :cond_1
    iget-object p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->baselineAlignmentLine:Landroidx/compose/ui/layout/AlignmentLine;

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
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->getFirstBaseline()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    move-result-object p0

    invoke-interface {p1, p0}, Landroidx/compose/ui/layout/Measured;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    move-result p0

    if-eq p0, v1, :cond_4

    return p0

    :cond_4
    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result p0

    return p0
.end method

.method public final getBaselineAlignmentBlock()Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->baselineAlignmentBlock:Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;

    return-object p0
.end method

.method public final getBaselineAlignmentLine()Landroidx/compose/ui/layout/AlignmentLine;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->baselineAlignmentLine:Landroidx/compose/ui/layout/AlignmentLine;

    return-object p0
.end method

.method public final getColumnGap-D9Ej5fM$foundation_layout()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->columnGap:F

    return p0
.end method

.method public getConstraints-msEJaDk()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->constraints:J

    return-wide v0
.end method

.method public getDensity()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->_density:Landroidx/compose/ui/unit/Density;

    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result p0

    return p0
.end method

.method public final getDirection-T4wFHC8$foundation_layout()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->direction:I

    return p0
.end method

.method public getFontScale()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->_density:Landroidx/compose/ui/unit/Density;

    invoke-interface {p0}, Landroidx/compose/ui/unit/FontScaling;->getFontScale()F

    move-result p0

    return p0
.end method

.method public final getHasBaseline()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getAlignItems-20X20zU$foundation_layout()I

    move-result p0

    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/compose/foundation/layout/FlexAlignItems;->constructor-impl(I)I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/foundation/layout/FlexAlignItems;->equals-impl0(II)Z

    move-result p0

    return p0
.end method

.method public final getJustifyContent-GomtQF4$foundation_layout()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->justifyContent:I

    return p0
.end method

.method public final getRowGap-D9Ej5fM$foundation_layout()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->rowGap:F

    return p0
.end method

.method public final getWrap-7ziDAWk$foundation_layout()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->wrap:I

    return p0
.end method

.method public final isCrossAxisReverse()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getWrap-7ziDAWk$foundation_layout()I

    move-result p0

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/compose/foundation/layout/FlexWrap;->constructor-impl(I)I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/foundation/layout/FlexWrap;->equals-impl0(II)Z

    move-result p0

    return p0
.end method

.method public final isHorizontal()Z
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getDirection-T4wFHC8$foundation_layout()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Landroidx/compose/foundation/layout/FlexDirection;->constructor-impl(I)I

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/FlexDirection;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getDirection-T4wFHC8$foundation_layout()I

    move-result p0

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/compose/foundation/layout/FlexDirection;->constructor-impl(I)I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/foundation/layout/FlexDirection;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isWrapEnabled()Z
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getWrap-7ziDAWk$foundation_layout()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1}, Landroidx/compose/foundation/layout/FlexWrap;->constructor-impl(I)I

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/FlexWrap;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getWrap-7ziDAWk$foundation_layout()I

    move-result p0

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/compose/foundation/layout/FlexWrap;->constructor-impl(I)I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/foundation/layout/FlexWrap;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public justifyContent-q3qUS_E(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->justifyContent:I

    return-void
.end method

.method public final mainAxisGap()I
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getDirection-T4wFHC8$foundation_layout()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Landroidx/compose/foundation/layout/FlexDirection;->constructor-impl(I)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/FlexDirection;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getDirection-T4wFHC8$foundation_layout()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1}, Landroidx/compose/foundation/layout/FlexDirection;->constructor-impl(I)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/FlexDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->rowGap:F

    :goto_0
    invoke-interface {p0, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p0

    return p0

    :cond_1
    :goto_1
    iget v0, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->columnGap:F

    goto :goto_0
.end method

.method public final prepare-0kLqBqw(Landroidx/compose/ui/unit/Density;J)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->_density:Landroidx/compose/ui/unit/Density;

    iput-wide p2, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->constraints:J

    const/4 p1, 0x0

    invoke-static {p1}, Landroidx/compose/foundation/layout/FlexDirection;->constructor-impl(I)I

    move-result p2

    iput p2, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->direction:I

    invoke-static {p1}, Landroidx/compose/foundation/layout/FlexWrap;->constructor-impl(I)I

    move-result p2

    iput p2, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->wrap:I

    invoke-static {p1}, Landroidx/compose/foundation/layout/FlexJustifyContent;->constructor-impl(I)I

    move-result p2

    iput p2, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->justifyContent:I

    invoke-static {p1}, Landroidx/compose/foundation/layout/FlexAlignItems;->constructor-impl(I)I

    move-result p2

    iput p2, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->alignItems:I

    invoke-static {p1}, Landroidx/compose/foundation/layout/FlexAlignContent;->constructor-impl(I)I

    move-result p1

    iput p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->alignContent:I

    const/4 p1, 0x0

    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p2

    iput p2, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->rowGap:F

    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p1

    iput p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->columnGap:F

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->baselineAlignmentLine:Landroidx/compose/ui/layout/AlignmentLine;

    iput-object p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->baselineAlignmentBlock:Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;

    return-void
.end method

.method public rowGap-0680j_4(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->rowGap:F

    return-void
.end method

.method public final setAlignContent-RVFKNBI$foundation_layout(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->alignContent:I

    return-void
.end method

.method public final setAlignItems-yvIbNKY$foundation_layout(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->alignItems:I

    return-void
.end method

.method public final setColumnGap-0680j_4$foundation_layout(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->columnGap:F

    return-void
.end method

.method public final setDirection-d5Yd7B0$foundation_layout(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->direction:I

    return-void
.end method

.method public final setJustifyContent-q3qUS_E$foundation_layout(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->justifyContent:I

    return-void
.end method

.method public final setRowGap-0680j_4$foundation_layout(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->rowGap:F

    return-void
.end method

.method public final setWrap-CLQ35Ag$foundation_layout(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->wrap:I

    return-void
.end method

.method public toDp-GaN1DYA(J)F
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->_density:Landroidx/compose/ui/unit/Density;

    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/unit/FontScaling;->toDp-GaN1DYA(J)F

    move-result p0

    return p0
.end method

.method public toSp-0xMU5do(F)J
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->_density:Landroidx/compose/ui/unit/Density;

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/FontScaling;->toSp-0xMU5do(F)J

    move-result-wide p0

    return-wide p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n        FlexBoxConfig(\n            direction = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->direction:I

    invoke-static {v1}, Landroidx/compose/foundation/layout/FlexDirection;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",\n            wrap = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->wrap:I

    invoke-static {v1}, Landroidx/compose/foundation/layout/FlexWrap;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",\n            justifyContent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->justifyContent:I

    invoke-static {v1}, Landroidx/compose/foundation/layout/FlexJustifyContent;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",\n            alignItems = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->alignItems:I

    invoke-static {v1}, Landroidx/compose/foundation/layout/FlexAlignItems;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",\n            alignContent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->alignContent:I

    invoke-static {v1}, Landroidx/compose/foundation/layout/FlexAlignContent;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",\n            rowGap = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->rowGap:F

    const-string v2, ",\n            columnGap = "

    invoke-static {v0, v2, v1}, Lch;->d(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    iget p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->columnGap:F

    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\n        )\n    "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lna8;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public wrap-CLQ35Ag(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->wrap:I

    return-void
.end method
