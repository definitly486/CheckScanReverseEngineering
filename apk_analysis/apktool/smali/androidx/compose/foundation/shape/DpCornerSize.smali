.class final Landroidx/compose/foundation/shape/DpCornerSize;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/shape/CornerSize;
.implements Landroidx/compose/ui/platform/InspectableValue;


# instance fields
.field private final size:F


# direct methods
.method private constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/shape/DpCornerSize;->size:F

    return-void
.end method

.method public synthetic constructor <init>(FLjh2;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Landroidx/compose/foundation/shape/DpCornerSize;-><init>(F)V

    return-void
.end method

.method private final component1-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/shape/DpCornerSize;->size:F

    return p0
.end method

.method public static synthetic copy-0680j_4$default(Landroidx/compose/foundation/shape/DpCornerSize;FILjava/lang/Object;)Landroidx/compose/foundation/shape/DpCornerSize;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Landroidx/compose/foundation/shape/DpCornerSize;->size:F

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/shape/DpCornerSize;->copy-0680j_4(F)Landroidx/compose/foundation/shape/DpCornerSize;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy-0680j_4(F)Landroidx/compose/foundation/shape/DpCornerSize;
    .locals 1

    new-instance p0, Landroidx/compose/foundation/shape/DpCornerSize;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/compose/foundation/shape/DpCornerSize;-><init>(FLjh2;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/shape/DpCornerSize;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/foundation/shape/DpCornerSize;

    iget p0, p0, Landroidx/compose/foundation/shape/DpCornerSize;->size:F

    iget p1, p1, Landroidx/compose/foundation/shape/DpCornerSize;->size:F

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public bridge synthetic getValueOverride()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/foundation/shape/DpCornerSize;->getValueOverride-D9Ej5fM()F

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object p0

    return-object p0
.end method

.method public getValueOverride-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/shape/DpCornerSize;->size:F

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/shape/DpCornerSize;->size:F

    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    move-result p0

    return p0
.end method

.method public toPx-TmRCtEA(JLandroidx/compose/ui/unit/Density;)F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/shape/DpCornerSize;->size:F

    invoke-interface {p3, p0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CornerSize(size = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroidx/compose/foundation/shape/DpCornerSize;->size:F

    const-string v1, ".dp)"

    invoke-static {v0, v1, p0}, Lxy;->e(Ljava/lang/StringBuilder;Ljava/lang/String;F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
