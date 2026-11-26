.class final Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/layout/GridConfigurationScope;
.implements Landroidx/compose/ui/unit/Density;


# instance fields
.field private final synthetic $$delegate_0:Landroidx/compose/ui/unit/Density;

.field private columnGap:F

.field private final columnSpecs:Landroidx/collection/MutableLongList;

.field private final constraints:J

.field private flow:I

.field private rowGap:F

.field private final rowSpecs:Landroidx/collection/MutableLongList;


# direct methods
.method private constructor <init>(Landroidx/compose/ui/unit/Density;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->$$delegate_0:Landroidx/compose/ui/unit/Density;

    iput-wide p2, p0, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->constraints:J

    new-instance p1, Landroidx/collection/MutableLongList;

    const/4 p2, 0x0

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-direct {p1, p2, p3, v0}, Landroidx/collection/MutableLongList;-><init>(IILjh2;)V

    iput-object p1, p0, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->columnSpecs:Landroidx/collection/MutableLongList;

    new-instance p1, Landroidx/collection/MutableLongList;

    invoke-direct {p1, p2, p3, v0}, Landroidx/collection/MutableLongList;-><init>(IILjh2;)V

    iput-object p1, p0, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->rowSpecs:Landroidx/collection/MutableLongList;

    const/4 p1, 0x0

    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p3

    iput p3, p0, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->columnGap:F

    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p1

    iput p1, p0, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->rowGap:F

    invoke-static {p2}, Landroidx/compose/foundation/layout/GridFlow;->constructor-impl(I)I

    move-result p1

    iput p1, p0, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->flow:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/unit/Density;JLjh2;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;-><init>(Landroidx/compose/ui/unit/Density;J)V

    return-void
.end method


# virtual methods
.method public column(F)V
    .locals 2

    sget-object v0, Landroidx/compose/foundation/layout/GridTrackSize;->Companion:Landroidx/compose/foundation/layout/GridTrackSize$Companion;

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/layout/GridTrackSize$Companion;->Percentage-9Tp3RV8(F)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->column-118E5d0(J)V

    return-void
.end method

.method public column-0680j_4(F)V
    .locals 2

    sget-object v0, Landroidx/compose/foundation/layout/GridTrackSize;->Companion:Landroidx/compose/foundation/layout/GridTrackSize$Companion;

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/layout/GridTrackSize$Companion;->Fixed-psSkOvk(F)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->column-118E5d0(J)V

    return-void
.end method

.method public column-118E5d0(J)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->columnSpecs:Landroidx/collection/MutableLongList;

    invoke-virtual {p0, p1, p2}, Landroidx/collection/MutableLongList;->add(J)Z

    return-void
.end method

.method public column-XZblgos(F)V
    .locals 2

    sget-object v0, Landroidx/compose/foundation/layout/GridTrackSize;->Companion:Landroidx/compose/foundation/layout/GridTrackSize$Companion;

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/layout/GridTrackSize$Companion;->Flex-KGB9zo8(F)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->column-118E5d0(J)V

    return-void
.end method

.method public columnGap-0680j_4(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iput p1, p0, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->columnGap:F

    return-void

    :cond_0
    const-string p0, "Column gap must be non-negative"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method

.method public gap-0680j_4(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iput p1, p0, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->columnGap:F

    iput p1, p0, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->rowGap:F

    return-void

    :cond_0
    const-string p0, "Gap must be non-negative"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method

.method public gap-YgX7TsA(FF)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_1

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iput p1, p0, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->rowGap:F

    iput p2, p0, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->columnGap:F

    return-void

    :cond_0
    const-string p0, "Column gap must be non-negative"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "Row gap must be non-negative"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final getColumnGap-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->columnGap:F

    return p0
.end method

.method public final getColumnSpecs()Landroidx/collection/MutableLongList;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->columnSpecs:Landroidx/collection/MutableLongList;

    return-object p0
.end method

.method public getConstraints-msEJaDk()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->constraints:J

    return-wide v0
.end method

.method public getDensity()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->$$delegate_0:Landroidx/compose/ui/unit/Density;

    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result p0

    return p0
.end method

.method public getFlow-ITJdzs4()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->flow:I

    return p0
.end method

.method public getFontScale()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->$$delegate_0:Landroidx/compose/ui/unit/Density;

    invoke-interface {p0}, Landroidx/compose/ui/unit/FontScaling;->getFontScale()F

    move-result p0

    return p0
.end method

.method public final getRowGap-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->rowGap:F

    return p0
.end method

.method public final getRowSpecs()Landroidx/collection/MutableLongList;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->rowSpecs:Landroidx/collection/MutableLongList;

    return-object p0
.end method

.method public roundToPx--R2X_6o(J)I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->$$delegate_0:Landroidx/compose/ui/unit/Density;

    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/unit/Density;->roundToPx--R2X_6o(J)I

    move-result p0

    return p0
.end method

.method public roundToPx-0680j_4(F)I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->$$delegate_0:Landroidx/compose/ui/unit/Density;

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p0

    return p0
.end method

.method public row(F)V
    .locals 2

    sget-object v0, Landroidx/compose/foundation/layout/GridTrackSize;->Companion:Landroidx/compose/foundation/layout/GridTrackSize$Companion;

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/layout/GridTrackSize$Companion;->Percentage-9Tp3RV8(F)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->row-118E5d0(J)V

    return-void
.end method

.method public row-0680j_4(F)V
    .locals 2

    sget-object v0, Landroidx/compose/foundation/layout/GridTrackSize;->Companion:Landroidx/compose/foundation/layout/GridTrackSize$Companion;

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/layout/GridTrackSize$Companion;->Fixed-psSkOvk(F)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->row-118E5d0(J)V

    return-void
.end method

.method public row-118E5d0(J)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->rowSpecs:Landroidx/collection/MutableLongList;

    invoke-virtual {p0, p1, p2}, Landroidx/collection/MutableLongList;->add(J)Z

    return-void
.end method

.method public row-XZblgos(F)V
    .locals 2

    sget-object v0, Landroidx/compose/foundation/layout/GridTrackSize;->Companion:Landroidx/compose/foundation/layout/GridTrackSize$Companion;

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/layout/GridTrackSize$Companion;->Flex-KGB9zo8(F)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->row-118E5d0(J)V

    return-void
.end method

.method public rowGap-0680j_4(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iput p1, p0, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->rowGap:F

    return-void

    :cond_0
    const-string p0, "Row gap must be non-negative"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final setColumnGap-0680j_4(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->columnGap:F

    return-void
.end method

.method public setFlow-4t4_IgM(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->flow:I

    return-void
.end method

.method public final setRowGap-0680j_4(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->rowGap:F

    return-void
.end method

.method public toDp-GaN1DYA(J)F
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->$$delegate_0:Landroidx/compose/ui/unit/Density;

    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/unit/FontScaling;->toDp-GaN1DYA(J)F

    move-result p0

    return p0
.end method

.method public toDp-u2uoSUM(F)F
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->$$delegate_0:Landroidx/compose/ui/unit/Density;

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(F)F

    move-result p0

    return p0
.end method

.method public toDp-u2uoSUM(I)F
    .locals 0

    .line 7
    iget-object p0, p0, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->$$delegate_0:Landroidx/compose/ui/unit/Density;

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result p0

    return p0
.end method

.method public toDpSize-k-rfVVM(J)J
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->$$delegate_0:Landroidx/compose/ui/unit/Density;

    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/unit/Density;->toDpSize-k-rfVVM(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public toPx--R2X_6o(J)F
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->$$delegate_0:Landroidx/compose/ui/unit/Density;

    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    move-result p0

    return p0
.end method

.method public toPx-0680j_4(F)F
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->$$delegate_0:Landroidx/compose/ui/unit/Density;

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p0

    return p0
.end method

.method public toRect(Landroidx/compose/ui/unit/DpRect;)Landroidx/compose/ui/geometry/Rect;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->$$delegate_0:Landroidx/compose/ui/unit/Density;

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->toRect(Landroidx/compose/ui/unit/DpRect;)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0
.end method

.method public toSize-XkaWNTQ(J)J
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->$$delegate_0:Landroidx/compose/ui/unit/Density;

    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/unit/Density;->toSize-XkaWNTQ(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public toSp-0xMU5do(F)J
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->$$delegate_0:Landroidx/compose/ui/unit/Density;

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/FontScaling;->toSp-0xMU5do(F)J

    move-result-wide p0

    return-wide p0
.end method

.method public toSp-kPz2Gy4(F)J
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->$$delegate_0:Landroidx/compose/ui/unit/Density;

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->toSp-kPz2Gy4(F)J

    move-result-wide p0

    return-wide p0
.end method

.method public toSp-kPz2Gy4(I)J
    .locals 0

    .line 7
    iget-object p0, p0, Landroidx/compose/foundation/layout/GridConfigurationScopeImpl;->$$delegate_0:Landroidx/compose/ui/unit/Density;

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->toSp-kPz2Gy4(I)J

    move-result-wide p0

    return-wide p0
.end method
