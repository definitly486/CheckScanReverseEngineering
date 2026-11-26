.class public final Landroidx/compose/foundation/layout/FlowLineInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private lineIndex:I

.field private maxCrossAxisSize:F

.field private maxMainAxisSize:F

.field private positionInLine:I


# direct methods
.method private constructor <init>(IIFF)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Landroidx/compose/foundation/layout/FlowLineInfo;->lineIndex:I

    .line 35
    iput p2, p0, Landroidx/compose/foundation/layout/FlowLineInfo;->positionInLine:I

    .line 36
    iput p3, p0, Landroidx/compose/foundation/layout/FlowLineInfo;->maxMainAxisSize:F

    .line 37
    iput p4, p0, Landroidx/compose/foundation/layout/FlowLineInfo;->maxCrossAxisSize:F

    return-void
.end method

.method public synthetic constructor <init>(IIFFILjh2;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_2

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p3

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p4

    :cond_3
    const/4 p5, 0x0

    invoke-direct/range {p0 .. p5}, Landroidx/compose/foundation/layout/FlowLineInfo;-><init>(IIFFLjh2;)V

    return-void
.end method

.method public synthetic constructor <init>(IIFFLjh2;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/layout/FlowLineInfo;-><init>(IIFF)V

    return-void
.end method


# virtual methods
.method public final getLineIndex$foundation_layout()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/FlowLineInfo;->lineIndex:I

    return p0
.end method

.method public final getMaxCrossAxisSize-D9Ej5fM$foundation_layout()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/FlowLineInfo;->maxCrossAxisSize:F

    return p0
.end method

.method public final getMaxMainAxisSize-D9Ej5fM$foundation_layout()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/FlowLineInfo;->maxMainAxisSize:F

    return p0
.end method

.method public final getPositionInLine$foundation_layout()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/FlowLineInfo;->positionInLine:I

    return p0
.end method

.method public final setLineIndex$foundation_layout(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/FlowLineInfo;->lineIndex:I

    return-void
.end method

.method public final setMaxCrossAxisSize-0680j_4$foundation_layout(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/FlowLineInfo;->maxCrossAxisSize:F

    return-void
.end method

.method public final setMaxMainAxisSize-0680j_4$foundation_layout(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/FlowLineInfo;->maxMainAxisSize:F

    return-void
.end method

.method public final setPositionInLine$foundation_layout(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/FlowLineInfo;->positionInLine:I

    return-void
.end method

.method public final update-4j6BHR0$foundation_layout(IIFF)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/FlowLineInfo;->lineIndex:I

    iput p2, p0, Landroidx/compose/foundation/layout/FlowLineInfo;->positionInLine:I

    iput p3, p0, Landroidx/compose/foundation/layout/FlowLineInfo;->maxMainAxisSize:F

    iput p4, p0, Landroidx/compose/foundation/layout/FlowLineInfo;->maxCrossAxisSize:F

    return-void
.end method
