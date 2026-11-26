.class public final Landroidx/compose/foundation/MagnifierElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/foundation/MagnifierNode;",
        ">;"
    }
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final clippingEnabled:Z

.field private final cornerRadius:F

.field private final elevation:F

.field private final magnifierCenter:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;"
        }
    .end annotation
.end field

.field private final onSizeChanged:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/compose/ui/unit/DpSize;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

.field private final size:J

.field private final sourceCenter:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;"
        }
    .end annotation
.end field

.field private final useTextDefault:Z

.field private final zoom:F


# direct methods
.method private constructor <init>(Lnl3;Lnl3;Lnl3;FZJFFZLandroidx/compose/foundation/PlatformMagnifierFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/unit/DpSize;",
            "Lj59;",
            ">;FZJFFZ",
            "Landroidx/compose/foundation/PlatformMagnifierFactory;",
            ")V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    .line 63
    iput-object p1, p0, Landroidx/compose/foundation/MagnifierElement;->sourceCenter:Lnl3;

    .line 64
    iput-object p2, p0, Landroidx/compose/foundation/MagnifierElement;->magnifierCenter:Lnl3;

    .line 65
    iput-object p3, p0, Landroidx/compose/foundation/MagnifierElement;->onSizeChanged:Lnl3;

    .line 66
    iput p4, p0, Landroidx/compose/foundation/MagnifierElement;->zoom:F

    .line 67
    iput-boolean p5, p0, Landroidx/compose/foundation/MagnifierElement;->useTextDefault:Z

    .line 68
    iput-wide p6, p0, Landroidx/compose/foundation/MagnifierElement;->size:J

    .line 69
    iput p8, p0, Landroidx/compose/foundation/MagnifierElement;->cornerRadius:F

    .line 70
    iput p9, p0, Landroidx/compose/foundation/MagnifierElement;->elevation:F

    .line 71
    iput-boolean p10, p0, Landroidx/compose/foundation/MagnifierElement;->clippingEnabled:Z

    .line 72
    iput-object p11, p0, Landroidx/compose/foundation/MagnifierElement;->platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

    return-void
.end method

.method public synthetic constructor <init>(Lnl3;Lnl3;Lnl3;FZJFFZLandroidx/compose/foundation/PlatformMagnifierFactory;ILjh2;)V
    .locals 1

    and-int/lit8 p13, p12, 0x2

    const/4 v0, 0x0

    if-eqz p13, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p13, p12, 0x4

    if-eqz p13, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p13, p12, 0x8

    if-eqz p13, :cond_2

    const/high16 p4, 0x7fc00000    # Float.NaN

    :cond_2
    and-int/lit8 p13, p12, 0x10

    if-eqz p13, :cond_3

    const/4 p5, 0x0

    :cond_3
    and-int/lit8 p13, p12, 0x20

    if-eqz p13, :cond_4

    sget-object p6, Landroidx/compose/ui/unit/DpSize;->Companion:Landroidx/compose/ui/unit/DpSize$Companion;

    invoke-virtual {p6}, Landroidx/compose/ui/unit/DpSize$Companion;->getUnspecified-MYxV2XQ()J

    move-result-wide p6

    :cond_4
    and-int/lit8 p13, p12, 0x40

    if-eqz p13, :cond_5

    sget-object p8, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p8}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result p8

    :cond_5
    and-int/lit16 p13, p12, 0x80

    if-eqz p13, :cond_6

    sget-object p9, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p9}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result p9

    :cond_6
    and-int/lit16 p12, p12, 0x100

    if-eqz p12, :cond_7

    const/4 p10, 0x1

    :cond_7
    const/4 p12, 0x0

    invoke-direct/range {p0 .. p12}, Landroidx/compose/foundation/MagnifierElement;-><init>(Lnl3;Lnl3;Lnl3;FZJFFZLandroidx/compose/foundation/PlatformMagnifierFactory;Ljh2;)V

    return-void
.end method

.method public synthetic constructor <init>(Lnl3;Lnl3;Lnl3;FZJFFZLandroidx/compose/foundation/PlatformMagnifierFactory;Ljh2;)V
    .locals 0

    .line 73
    invoke-direct/range {p0 .. p11}, Landroidx/compose/foundation/MagnifierElement;-><init>(Lnl3;Lnl3;Lnl3;FZJFFZLandroidx/compose/foundation/PlatformMagnifierFactory;)V

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/foundation/MagnifierNode;
    .locals 13

    iget-object v1, p0, Landroidx/compose/foundation/MagnifierElement;->sourceCenter:Lnl3;

    iget-object v2, p0, Landroidx/compose/foundation/MagnifierElement;->magnifierCenter:Lnl3;

    iget v4, p0, Landroidx/compose/foundation/MagnifierElement;->zoom:F

    iget-boolean v5, p0, Landroidx/compose/foundation/MagnifierElement;->useTextDefault:Z

    iget-wide v6, p0, Landroidx/compose/foundation/MagnifierElement;->size:J

    iget v8, p0, Landroidx/compose/foundation/MagnifierElement;->cornerRadius:F

    iget v9, p0, Landroidx/compose/foundation/MagnifierElement;->elevation:F

    iget-boolean v10, p0, Landroidx/compose/foundation/MagnifierElement;->clippingEnabled:Z

    iget-object v3, p0, Landroidx/compose/foundation/MagnifierElement;->onSizeChanged:Lnl3;

    iget-object v11, p0, Landroidx/compose/foundation/MagnifierElement;->platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

    new-instance v0, Landroidx/compose/foundation/MagnifierNode;

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v12}, Landroidx/compose/foundation/MagnifierNode;-><init>(Lnl3;Lnl3;Lnl3;FZJFFZLandroidx/compose/foundation/PlatformMagnifierFactory;Ljh2;)V

    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 27
    invoke-virtual {p0}, Landroidx/compose/foundation/MagnifierElement;->create()Landroidx/compose/foundation/MagnifierNode;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/MagnifierElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/MagnifierElement;->sourceCenter:Lnl3;

    check-cast p1, Landroidx/compose/foundation/MagnifierElement;

    iget-object v3, p1, Landroidx/compose/foundation/MagnifierElement;->sourceCenter:Lnl3;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/compose/foundation/MagnifierElement;->magnifierCenter:Lnl3;

    iget-object v3, p1, Landroidx/compose/foundation/MagnifierElement;->magnifierCenter:Lnl3;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Landroidx/compose/foundation/MagnifierElement;->zoom:F

    iget v3, p1, Landroidx/compose/foundation/MagnifierElement;->zoom:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_b

    iget-boolean v1, p0, Landroidx/compose/foundation/MagnifierElement;->useTextDefault:Z

    iget-boolean v3, p1, Landroidx/compose/foundation/MagnifierElement;->useTextDefault:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Landroidx/compose/foundation/MagnifierElement;->size:J

    iget-wide v5, p1, Landroidx/compose/foundation/MagnifierElement;->size:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/unit/DpSize;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Landroidx/compose/foundation/MagnifierElement;->cornerRadius:F

    iget v3, p1, Landroidx/compose/foundation/MagnifierElement;->cornerRadius:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Landroidx/compose/foundation/MagnifierElement;->elevation:F

    iget v3, p1, Landroidx/compose/foundation/MagnifierElement;->elevation:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Landroidx/compose/foundation/MagnifierElement;->clippingEnabled:Z

    iget-boolean v3, p1, Landroidx/compose/foundation/MagnifierElement;->clippingEnabled:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Landroidx/compose/foundation/MagnifierElement;->onSizeChanged:Lnl3;

    iget-object v3, p1, Landroidx/compose/foundation/MagnifierElement;->onSizeChanged:Lnl3;

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object p0, p0, Landroidx/compose/foundation/MagnifierElement;->platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

    iget-object p1, p1, Landroidx/compose/foundation/MagnifierElement;->platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0

    :cond_b
    return v2
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Landroidx/compose/foundation/MagnifierElement;->sourceCenter:Lnl3;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/compose/foundation/MagnifierElement;->magnifierCenter:Lnl3;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/compose/foundation/MagnifierElement;->zoom:F

    invoke-static {v2, v0, v1}, Ljn;->b(FII)I

    move-result v0

    iget-boolean v2, p0, Landroidx/compose/foundation/MagnifierElement;->useTextDefault:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-wide v4, p0, Landroidx/compose/foundation/MagnifierElement;->size:J

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/DpSize;->hashCode-impl(J)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Landroidx/compose/foundation/MagnifierElement;->cornerRadius:F

    invoke-static {v0, v2, v1}, Lrg;->c(FII)I

    move-result v0

    iget v2, p0, Landroidx/compose/foundation/MagnifierElement;->elevation:F

    invoke-static {v2, v0, v1}, Lrg;->c(FII)I

    move-result v0

    iget-boolean v2, p0, Landroidx/compose/foundation/MagnifierElement;->clippingEnabled:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-object v2, p0, Landroidx/compose/foundation/MagnifierElement;->onSizeChanged:Lnl3;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :cond_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object p0, p0, Landroidx/compose/foundation/MagnifierElement;->platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 3

    const-string v0, "magnifier"

    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string v1, "sourceCenter"

    iget-object v2, p0, Landroidx/compose/foundation/MagnifierElement;->sourceCenter:Lnl3;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string v1, "magnifierCenter"

    iget-object v2, p0, Landroidx/compose/foundation/MagnifierElement;->magnifierCenter:Lnl3;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    iget v1, p0, Landroidx/compose/foundation/MagnifierElement;->zoom:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "zoom"

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    iget-wide v1, p0, Landroidx/compose/foundation/MagnifierElement;->size:J

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/DpSize;->box-impl(J)Landroidx/compose/ui/unit/DpSize;

    move-result-object v1

    const-string v2, "size"

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string v1, "cornerRadius"

    iget v2, p0, Landroidx/compose/foundation/MagnifierElement;->cornerRadius:F

    invoke-static {v2, v0, v1, p1}, Lqg;->e(FLandroidx/compose/ui/platform/ValueElementSequence;Ljava/lang/String;Landroidx/compose/ui/platform/InspectorInfo;)Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string v1, "elevation"

    iget v2, p0, Landroidx/compose/foundation/MagnifierElement;->elevation:F

    invoke-static {v2, v0, v1, p1}, Lqg;->e(FLandroidx/compose/ui/platform/ValueElementSequence;Ljava/lang/String;Landroidx/compose/ui/platform/InspectorInfo;)Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object p1

    iget-boolean p0, p0, Landroidx/compose/foundation/MagnifierElement;->clippingEnabled:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v0, "clippingEnabled"

    invoke-virtual {p1, v0, p0}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public update(Landroidx/compose/foundation/MagnifierNode;)V
    .locals 12

    iget-object v1, p0, Landroidx/compose/foundation/MagnifierElement;->sourceCenter:Lnl3;

    iget-object v2, p0, Landroidx/compose/foundation/MagnifierElement;->magnifierCenter:Lnl3;

    iget v3, p0, Landroidx/compose/foundation/MagnifierElement;->zoom:F

    iget-boolean v4, p0, Landroidx/compose/foundation/MagnifierElement;->useTextDefault:Z

    iget-wide v5, p0, Landroidx/compose/foundation/MagnifierElement;->size:J

    iget v7, p0, Landroidx/compose/foundation/MagnifierElement;->cornerRadius:F

    iget v8, p0, Landroidx/compose/foundation/MagnifierElement;->elevation:F

    iget-boolean v9, p0, Landroidx/compose/foundation/MagnifierElement;->clippingEnabled:Z

    iget-object v10, p0, Landroidx/compose/foundation/MagnifierElement;->onSizeChanged:Lnl3;

    iget-object v11, p0, Landroidx/compose/foundation/MagnifierElement;->platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

    move-object v0, p1

    invoke-virtual/range {v0 .. v11}, Landroidx/compose/foundation/MagnifierNode;->update-5F03MCQ(Lnl3;Lnl3;FZJFFZLnl3;Landroidx/compose/foundation/PlatformMagnifierFactory;)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 25
    check-cast p1, Landroidx/compose/foundation/MagnifierNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/MagnifierElement;->update(Landroidx/compose/foundation/MagnifierNode;)V

    return-void
.end method
