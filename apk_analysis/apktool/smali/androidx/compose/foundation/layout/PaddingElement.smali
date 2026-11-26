.class final Landroidx/compose/foundation/layout/PaddingElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/foundation/layout/PaddingNode;",
        ">;"
    }
.end annotation


# instance fields
.field private bottom:F

.field private end:F

.field private final inspectorInfo:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/compose/ui/platform/InspectorInfo;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private rtlAware:Z

.field private start:F

.field private top:F


# direct methods
.method private constructor <init>(FFFFZLnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFFZ",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/platform/InspectorInfo;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/layout/PaddingElement;->start:F

    iput p2, p0, Landroidx/compose/foundation/layout/PaddingElement;->top:F

    iput p3, p0, Landroidx/compose/foundation/layout/PaddingElement;->end:F

    iput p4, p0, Landroidx/compose/foundation/layout/PaddingElement;->bottom:F

    iput-boolean p5, p0, Landroidx/compose/foundation/layout/PaddingElement;->rtlAware:Z

    iput-object p6, p0, Landroidx/compose/foundation/layout/PaddingElement;->inspectorInfo:Lnl3;

    const/4 p2, 0x0

    cmpl-float p3, p1, p2

    const/4 p4, 0x1

    const/4 p5, 0x0

    if-gez p3, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p5

    goto :goto_1

    :cond_1
    :goto_0
    move p1, p4

    :goto_1
    iget p3, p0, Landroidx/compose/foundation/layout/PaddingElement;->top:F

    cmpl-float p6, p3, p2

    if-gez p6, :cond_3

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    move p3, p5

    goto :goto_3

    :cond_3
    :goto_2
    move p3, p4

    :goto_3
    and-int/2addr p1, p3

    iget p3, p0, Landroidx/compose/foundation/layout/PaddingElement;->end:F

    cmpl-float p6, p3, p2

    if-gez p6, :cond_5

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_4

    :cond_4
    move p3, p5

    goto :goto_5

    :cond_5
    :goto_4
    move p3, p4

    :goto_5
    and-int/2addr p1, p3

    iget p0, p0, Landroidx/compose/foundation/layout/PaddingElement;->bottom:F

    cmpl-float p2, p0, p2

    if-gez p2, :cond_7

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_6

    :cond_6
    move p4, p5

    :cond_7
    :goto_6
    and-int p0, p1, p4

    if-nez p0, :cond_8

    const-string p0, "Padding must be non-negative"

    invoke-static {p0}, Landroidx/compose/foundation/layout/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public synthetic constructor <init>(FFFFZLnl3;ILjh2;)V
    .locals 10

    and-int/lit8 v0, p7, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p1

    :cond_0
    move v3, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    .line 92
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p2

    :cond_1
    move v4, p2

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    .line 93
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p3

    :cond_2
    move v5, p3

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    .line 94
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p4

    :cond_3
    move v6, p4

    const/4 v9, 0x0

    move-object v2, p0

    move v7, p5

    move-object/from16 v8, p6

    .line 95
    invoke-direct/range {v2 .. v9}, Landroidx/compose/foundation/layout/PaddingElement;-><init>(FFFFZLnl3;Ljh2;)V

    return-void
.end method

.method public synthetic constructor <init>(FFFFZLnl3;Ljh2;)V
    .locals 0

    .line 90
    invoke-direct/range {p0 .. p6}, Landroidx/compose/foundation/layout/PaddingElement;-><init>(FFFFZLnl3;)V

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/foundation/layout/PaddingNode;
    .locals 7

    new-instance v0, Landroidx/compose/foundation/layout/PaddingNode;

    iget v1, p0, Landroidx/compose/foundation/layout/PaddingElement;->start:F

    iget v2, p0, Landroidx/compose/foundation/layout/PaddingElement;->top:F

    iget v3, p0, Landroidx/compose/foundation/layout/PaddingElement;->end:F

    iget v4, p0, Landroidx/compose/foundation/layout/PaddingElement;->bottom:F

    iget-boolean v5, p0, Landroidx/compose/foundation/layout/PaddingElement;->rtlAware:Z

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/layout/PaddingNode;-><init>(FFFFZLjh2;)V

    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 17
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/PaddingElement;->create()Landroidx/compose/foundation/layout/PaddingNode;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroidx/compose/foundation/layout/PaddingElement;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/compose/foundation/layout/PaddingElement;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    iget v1, p0, Landroidx/compose/foundation/layout/PaddingElement;->start:F

    iget v2, p1, Landroidx/compose/foundation/layout/PaddingElement;->start:F

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/compose/foundation/layout/PaddingElement;->top:F

    iget v2, p1, Landroidx/compose/foundation/layout/PaddingElement;->top:F

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/compose/foundation/layout/PaddingElement;->end:F

    iget v2, p1, Landroidx/compose/foundation/layout/PaddingElement;->end:F

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/compose/foundation/layout/PaddingElement;->bottom:F

    iget v2, p1, Landroidx/compose/foundation/layout/PaddingElement;->bottom:F

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/PaddingElement;->rtlAware:Z

    iget-boolean p1, p1, Landroidx/compose/foundation/layout/PaddingElement;->rtlAware:Z

    if-ne p0, p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public final getBottom-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/PaddingElement;->bottom:F

    return p0
.end method

.method public final getEnd-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/PaddingElement;->end:F

    return p0
.end method

.method public final getInspectorInfo()Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Landroidx/compose/ui/platform/InspectorInfo;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/layout/PaddingElement;->inspectorInfo:Lnl3;

    return-object p0
.end method

.method public final getRtlAware()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/PaddingElement;->rtlAware:Z

    return p0
.end method

.method public final getStart-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/PaddingElement;->start:F

    return p0
.end method

.method public final getTop-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/PaddingElement;->top:F

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Landroidx/compose/foundation/layout/PaddingElement;->start:F

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/compose/foundation/layout/PaddingElement;->top:F

    invoke-static {v2, v0, v1}, Lrg;->c(FII)I

    move-result v0

    iget v2, p0, Landroidx/compose/foundation/layout/PaddingElement;->end:F

    invoke-static {v2, v0, v1}, Lrg;->c(FII)I

    move-result v0

    iget v2, p0, Landroidx/compose/foundation/layout/PaddingElement;->bottom:F

    invoke-static {v2, v0, v1}, Lrg;->c(FII)I

    move-result v0

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/PaddingElement;->rtlAware:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/PaddingElement;->inspectorInfo:Lnl3;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setBottom-0680j_4(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/PaddingElement;->bottom:F

    return-void
.end method

.method public final setEnd-0680j_4(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/PaddingElement;->end:F

    return-void
.end method

.method public final setRtlAware(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/foundation/layout/PaddingElement;->rtlAware:Z

    return-void
.end method

.method public final setStart-0680j_4(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/PaddingElement;->start:F

    return-void
.end method

.method public final setTop-0680j_4(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/PaddingElement;->top:F

    return-void
.end method

.method public update(Landroidx/compose/foundation/layout/PaddingNode;)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/layout/PaddingElement;->start:F

    invoke-virtual {p1, v0}, Landroidx/compose/foundation/layout/PaddingNode;->setStart-0680j_4(F)V

    iget v0, p0, Landroidx/compose/foundation/layout/PaddingElement;->top:F

    invoke-virtual {p1, v0}, Landroidx/compose/foundation/layout/PaddingNode;->setTop-0680j_4(F)V

    iget v0, p0, Landroidx/compose/foundation/layout/PaddingElement;->end:F

    invoke-virtual {p1, v0}, Landroidx/compose/foundation/layout/PaddingNode;->setEnd-0680j_4(F)V

    iget v0, p0, Landroidx/compose/foundation/layout/PaddingElement;->bottom:F

    invoke-virtual {p1, v0}, Landroidx/compose/foundation/layout/PaddingNode;->setBottom-0680j_4(F)V

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/PaddingElement;->rtlAware:Z

    invoke-virtual {p1, p0}, Landroidx/compose/foundation/layout/PaddingNode;->setRtlAware(Z)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 26
    check-cast p1, Landroidx/compose/foundation/layout/PaddingNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/PaddingElement;->update(Landroidx/compose/foundation/layout/PaddingNode;)V

    return-void
.end method
