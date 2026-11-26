.class final Landroidx/compose/foundation/layout/AlignmentLineOffsetTextUnitNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;


# instance fields
.field private after:J

.field private alignmentLine:Landroidx/compose/ui/layout/AlignmentLine;

.field private before:J


# direct methods
.method private constructor <init>(Landroidx/compose/ui/layout/AlignmentLine;JJ)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/AlignmentLineOffsetTextUnitNode;->alignmentLine:Landroidx/compose/ui/layout/AlignmentLine;

    iput-wide p2, p0, Landroidx/compose/foundation/layout/AlignmentLineOffsetTextUnitNode;->before:J

    iput-wide p4, p0, Landroidx/compose/foundation/layout/AlignmentLineOffsetTextUnitNode;->after:J

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/layout/AlignmentLine;JJLjh2;)V
    .locals 0

    .line 10
    invoke-direct/range {p0 .. p5}, Landroidx/compose/foundation/layout/AlignmentLineOffsetTextUnitNode;-><init>(Landroidx/compose/ui/layout/AlignmentLine;JJ)V

    return-void
.end method


# virtual methods
.method public final getAfter-XSAIIZE()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/layout/AlignmentLineOffsetTextUnitNode;->after:J

    return-wide v0
.end method

.method public final getAlignmentLine()Landroidx/compose/ui/layout/AlignmentLine;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/AlignmentLineOffsetTextUnitNode;->alignmentLine:Landroidx/compose/ui/layout/AlignmentLine;

    return-object p0
.end method

.method public final getBefore-XSAIIZE()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/layout/AlignmentLineOffsetTextUnitNode;->before:J

    return-wide v0
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 8

    iget-object v1, p0, Landroidx/compose/foundation/layout/AlignmentLineOffsetTextUnitNode;->alignmentLine:Landroidx/compose/ui/layout/AlignmentLine;

    iget-wide v2, p0, Landroidx/compose/foundation/layout/AlignmentLineOffsetTextUnitNode;->before:J

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/TextUnit;->getRawType-impl(J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result v0

    :goto_0
    move v2, v0

    goto :goto_1

    :cond_0
    iget-wide v2, p0, Landroidx/compose/foundation/layout/AlignmentLineOffsetTextUnitNode;->before:J

    invoke-interface {p1, v2, v3}, Landroidx/compose/ui/unit/FontScaling;->toDp-GaN1DYA(J)F

    move-result v0

    goto :goto_0

    :goto_1
    iget-wide v6, p0, Landroidx/compose/foundation/layout/AlignmentLineOffsetTextUnitNode;->after:J

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/TextUnit;->getRawType-impl(J)J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-nez v0, :cond_1

    sget-object p0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result p0

    :goto_2
    move v3, p0

    move-object v0, p1

    move-object v4, p2

    move-wide v5, p3

    goto :goto_3

    :cond_1
    iget-wide v3, p0, Landroidx/compose/foundation/layout/AlignmentLineOffsetTextUnitNode;->after:J

    invoke-interface {p1, v3, v4}, Landroidx/compose/ui/unit/FontScaling;->toDp-GaN1DYA(J)F

    move-result p0

    goto :goto_2

    :goto_3
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/layout/AlignmentLineKt;->access$alignmentLineOffsetMeasure-tjqqzMA(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/AlignmentLine;FFLandroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public final setAfter--R2X_6o(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/foundation/layout/AlignmentLineOffsetTextUnitNode;->after:J

    return-void
.end method

.method public final setAlignmentLine(Landroidx/compose/ui/layout/AlignmentLine;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/layout/AlignmentLineOffsetTextUnitNode;->alignmentLine:Landroidx/compose/ui/layout/AlignmentLine;

    return-void
.end method

.method public final setBefore--R2X_6o(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/foundation/layout/AlignmentLineOffsetTextUnitNode;->before:J

    return-void
.end method
