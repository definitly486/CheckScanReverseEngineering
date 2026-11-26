.class final Landroidx/compose/material3/ScrollableTabData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final coroutineScope:Ly22;

.field private final scrollState:Landroidx/compose/foundation/ScrollState;

.field private selectedTab:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/ScrollState;Ly22;Landroidx/compose/animation/core/FiniteAnimationSpec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/ScrollState;",
            "Ly22;",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/ScrollableTabData;->scrollState:Landroidx/compose/foundation/ScrollState;

    iput-object p2, p0, Landroidx/compose/material3/ScrollableTabData;->coroutineScope:Ly22;

    iput-object p3, p0, Landroidx/compose/material3/ScrollableTabData;->animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    return-void
.end method

.method public static final synthetic access$getAnimationSpec$p(Landroidx/compose/material3/ScrollableTabData;)Landroidx/compose/animation/core/FiniteAnimationSpec;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ScrollableTabData;->animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    return-object p0
.end method

.method public static final synthetic access$getScrollState$p(Landroidx/compose/material3/ScrollableTabData;)Landroidx/compose/foundation/ScrollState;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ScrollableTabData;->scrollState:Landroidx/compose/foundation/ScrollState;

    return-object p0
.end method

.method private final calculateTabOffset(Landroidx/compose/material3/TabPosition;Landroidx/compose/ui/unit/Density;ILjava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/TabPosition;",
            "Landroidx/compose/ui/unit/Density;",
            "I",
            "Ljava/util/List<",
            "Landroidx/compose/material3/TabPosition;",
            ">;)I"
        }
    .end annotation

    invoke-static {p4}, Lqn1;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/compose/material3/TabPosition;

    invoke-virtual {p4}, Landroidx/compose/material3/TabPosition;->getRight-D9Ej5fM()F

    move-result p4

    invoke-interface {p2, p4}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p4

    add-int/2addr p4, p3

    iget-object p0, p0, Landroidx/compose/material3/ScrollableTabData;->scrollState:Landroidx/compose/foundation/ScrollState;

    invoke-virtual {p0}, Landroidx/compose/foundation/ScrollState;->getMaxValue()I

    move-result p0

    sub-int p0, p4, p0

    invoke-virtual {p1}, Landroidx/compose/material3/TabPosition;->getLeft-D9Ej5fM()F

    move-result p3

    invoke-interface {p2, p3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p3

    div-int/lit8 v0, p0, 0x2

    invoke-virtual {p1}, Landroidx/compose/material3/TabPosition;->getWidth-D9Ej5fM()F

    move-result p1

    invoke-interface {p2, p1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr v0, p1

    sub-int/2addr p3, v0

    sub-int/2addr p4, p0

    const/4 p0, 0x0

    if-gez p4, :cond_0

    move p4, p0

    :cond_0
    invoke-static {p3, p0, p4}, Lkx6;->f(III)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final onLaidOut(Landroidx/compose/ui/unit/Density;ILjava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/unit/Density;",
            "I",
            "Ljava/util/List<",
            "Landroidx/compose/material3/TabPosition;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/material3/ScrollableTabData;->selectedTab:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p4, :cond_1

    :goto_0
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material3/ScrollableTabData;->selectedTab:Ljava/lang/Integer;

    invoke-static {p4, p3}, Lqn1;->W(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/compose/material3/TabPosition;

    if-eqz p4, :cond_1

    invoke-direct {p0, p4, p1, p2, p3}, Landroidx/compose/material3/ScrollableTabData;->calculateTabOffset(Landroidx/compose/material3/TabPosition;Landroidx/compose/ui/unit/Density;ILjava/util/List;)I

    move-result p1

    iget-object p2, p0, Landroidx/compose/material3/ScrollableTabData;->scrollState:Landroidx/compose/foundation/ScrollState;

    invoke-virtual {p2}, Landroidx/compose/foundation/ScrollState;->getValue()I

    move-result p2

    if-eq p2, p1, :cond_1

    iget-object p2, p0, Landroidx/compose/material3/ScrollableTabData;->coroutineScope:Ly22;

    new-instance p3, Landroidx/compose/material3/ScrollableTabData$onLaidOut$1$1;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p1, p4}, Landroidx/compose/material3/ScrollableTabData$onLaidOut$1$1;-><init>(Landroidx/compose/material3/ScrollableTabData;ILe02;)V

    const/4 p0, 0x3

    invoke-static {p2, p4, p4, p3, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    :cond_1
    return-void
.end method
