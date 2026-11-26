.class public final Landroidx/compose/foundation/style/StyleAnimations;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/style/StyleAnimations$Entry;
    }
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final currentStyle:Landroidx/compose/foundation/style/ResolvedStyle;

.field private inGuard:Z

.field private final node:Landroidx/compose/foundation/style/StyleOuterNode;

.field private size:I

.field private values:[Landroidx/compose/foundation/style/StyleAnimations$Entry;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/style/StyleOuterNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/style/StyleAnimations;->node:Landroidx/compose/foundation/style/StyleOuterNode;

    new-instance p1, Landroidx/compose/foundation/style/ResolvedStyle;

    invoke-direct {p1}, Landroidx/compose/foundation/style/ResolvedStyle;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/style/StyleAnimations;->currentStyle:Landroidx/compose/foundation/style/ResolvedStyle;

    const/4 p1, 0x2

    new-array p1, p1, [Landroidx/compose/foundation/style/StyleAnimations$Entry;

    iput-object p1, p0, Landroidx/compose/foundation/style/StyleAnimations;->values:[Landroidx/compose/foundation/style/StyleAnimations$Entry;

    return-void
.end method

.method public static final synthetic access$cleanupAnimations(Landroidx/compose/foundation/style/StyleAnimations;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/foundation/style/StyleAnimations;->cleanupAnimations()V

    return-void
.end method

.method private final cleanupAnimations()V
    .locals 9

    iget-object v0, p0, Landroidx/compose/foundation/style/StyleAnimations;->values:[Landroidx/compose/foundation/style/StyleAnimations$Entry;

    iget v1, p0, Landroidx/compose/foundation/style/StyleAnimations;->size:I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x0

    if-ge v3, v1, :cond_3

    aget-object v6, v0, v3

    if-nez v6, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v6}, Landroidx/compose/foundation/style/StyleAnimations$Entry;->getState()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_1

    invoke-virtual {v6}, Landroidx/compose/foundation/style/StyleAnimations$Entry;->getAnim()Landroidx/compose/animation/core/Animatable;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/animation/core/Animatable;->isRunning()Z

    move-result v7

    if-nez v7, :cond_1

    aput-object v5, v0, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eq v4, v3, :cond_2

    aput-object v6, v0, v4

    aput-object v5, v0, v3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iput v4, p0, Landroidx/compose/foundation/style/StyleAnimations;->size:I

    if-eq v1, v4, :cond_4

    iget-boolean v0, p0, Landroidx/compose/foundation/style/StyleAnimations;->inGuard:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/foundation/style/StyleAnimations;->inGuard:Z

    :try_start_0
    iget-object v1, p0, Landroidx/compose/foundation/style/StyleAnimations;->node:Landroidx/compose/foundation/style/StyleOuterNode;

    invoke-static {v1, v2, v0, v5}, Landroidx/compose/foundation/style/StyleOuterNode;->resolveStyleAndInvalidate$default(Landroidx/compose/foundation/style/StyleOuterNode;ZILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v2, p0, Landroidx/compose/foundation/style/StyleAnimations;->inGuard:Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Landroidx/compose/foundation/style/StyleAnimations;->inGuard:Z

    throw v0

    :cond_4
    return-void
.end method

.method private final ensureCapacity(I)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/style/StyleAnimations;->values:[Landroidx/compose/foundation/style/StyleAnimations$Entry;

    array-length v1, v0

    if-le p1, v1, :cond_0

    const/4 p1, 0x2

    mul-int/2addr v1, p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/compose/foundation/style/StyleAnimations$Entry;

    iput-object p1, p0, Landroidx/compose/foundation/style/StyleAnimations;->values:[Landroidx/compose/foundation/style/StyleAnimations$Entry;

    :cond_0
    return-void
.end method

.method private final find(I)Landroidx/compose/foundation/style/StyleAnimations$Entry;
    .locals 4

    iget-object v0, p0, Landroidx/compose/foundation/style/StyleAnimations;->values:[Landroidx/compose/foundation/style/StyleAnimations$Entry;

    iget p0, p0, Landroidx/compose/foundation/style/StyleAnimations;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/compose/foundation/style/StyleAnimations$Entry;->getKey()I

    move-result v3

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private final forEach(Lnl3;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/compose/foundation/style/StyleAnimations$Entry;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/foundation/style/StyleAnimations;->values:[Landroidx/compose/foundation/style/StyleAnimations$Entry;

    iget p0, p0, Landroidx/compose/foundation/style/StyleAnimations;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    invoke-interface {p1, v2}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final recursionGuard(Lll3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/compose/foundation/style/StyleAnimations;->inGuard:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/foundation/style/StyleAnimations;->inGuard:Z

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Lll3;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Landroidx/compose/foundation/style/StyleAnimations;->inGuard:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Landroidx/compose/foundation/style/StyleAnimations;->inGuard:Z

    throw p1
.end method


# virtual methods
.method public final applyAnimationsTo(Landroidx/compose/foundation/style/ResolvedStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/foundation/style/StyleOuterNode;I)V
    .locals 6

    iget-object v0, p0, Landroidx/compose/foundation/style/StyleAnimations;->values:[Landroidx/compose/foundation/style/StyleAnimations$Entry;

    iget p0, p0, Landroidx/compose/foundation/style/StyleAnimations;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/compose/foundation/style/StyleAnimations$Entry;->getStyleScope()Landroidx/compose/foundation/style/ResolvedStyle;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/compose/foundation/style/ResolvedStyle;->copyInto$foundation(Landroidx/compose/foundation/style/ResolvedStyle;)V

    invoke-virtual {v2}, Landroidx/compose/foundation/style/StyleAnimations$Entry;->getStyleScope()Landroidx/compose/foundation/style/ResolvedStyle;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/compose/foundation/style/StyleAnimations$Entry;->getStyle()Landroidx/compose/foundation/style/Style;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, p3, p2, v5}, Landroidx/compose/foundation/style/ResolvedStyle;->resolve$foundation(Landroidx/compose/foundation/style/Style;Landroidx/compose/foundation/style/StyleOuterNode;Landroidx/compose/ui/unit/Density;Z)V

    invoke-virtual {v2}, Landroidx/compose/foundation/style/StyleAnimations$Entry;->getStyleScope()Landroidx/compose/foundation/style/ResolvedStyle;

    move-result-object v3

    invoke-virtual {p1, v3, p4}, Landroidx/compose/foundation/style/ResolvedStyle;->diff$foundation(Landroidx/compose/foundation/style/ResolvedStyle;I)I

    move-result v3

    and-int/2addr v3, p4

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroidx/compose/foundation/style/StyleAnimations$Entry;->getStyleScope()Landroidx/compose/foundation/style/ResolvedStyle;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/compose/foundation/style/StyleAnimations$Entry;->getAnim()Landroidx/compose/animation/core/Animatable;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-static {p1, v3, v2, p4, p1}, Landroidx/compose/foundation/style/ResolvedStyleKt;->lerp(Landroidx/compose/foundation/style/ResolvedStyle;Landroidx/compose/foundation/style/ResolvedStyle;FILandroidx/compose/foundation/style/ResolvedStyle;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final getNode()Landroidx/compose/foundation/style/StyleOuterNode;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/style/StyleAnimations;->node:Landroidx/compose/foundation/style/StyleOuterNode;

    return-object p0
.end method

.method public final isNotEmpty()Z
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/style/StyleAnimations;->size:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final postResolve(Landroidx/compose/foundation/style/StyleOuterNode;Landroidx/compose/ui/unit/Density;Z)I
    .locals 7

    iget-object v0, p0, Landroidx/compose/foundation/style/StyleAnimations;->values:[Landroidx/compose/foundation/style/StyleAnimations$Entry;

    iget p0, p0, Landroidx/compose/foundation/style/StyleAnimations;->size:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, p0, :cond_4

    aget-object v3, v0, v1

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroidx/compose/foundation/style/StyleAnimations$Entry;->getState()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ne v4, v5, :cond_1

    invoke-virtual {v3}, Landroidx/compose/foundation/style/StyleAnimations$Entry;->getStyleScope()Landroidx/compose/foundation/style/ResolvedStyle;

    move-result-object v4

    invoke-virtual {v3}, Landroidx/compose/foundation/style/StyleAnimations$Entry;->getStyle()Landroidx/compose/foundation/style/Style;

    move-result-object v5

    invoke-virtual {v4, v5, p1, p2, v6}, Landroidx/compose/foundation/style/ResolvedStyle;->resolve$foundation(Landroidx/compose/foundation/style/Style;Landroidx/compose/foundation/style/StyleOuterNode;Landroidx/compose/ui/unit/Density;Z)V

    invoke-virtual {v3}, Landroidx/compose/foundation/style/StyleAnimations$Entry;->getStyleScope()Landroidx/compose/foundation/style/ResolvedStyle;

    move-result-object v4

    iget v4, v4, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/2addr v2, v4

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/Modifier$Node;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Ly22;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/compose/foundation/style/StyleAnimations$Entry;->animateIn(Ly22;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/Modifier$Node;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Ly22;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/compose/foundation/style/StyleAnimations$Entry;->snapIn(Ly22;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroidx/compose/foundation/style/StyleAnimations$Entry;->getState()I

    move-result v4

    if-ne v4, v6, :cond_3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroidx/compose/foundation/style/StyleAnimations$Entry;->setState(I)V

    invoke-virtual {v3}, Landroidx/compose/foundation/style/StyleAnimations$Entry;->getStyleScope()Landroidx/compose/foundation/style/ResolvedStyle;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/style/ResolvedStyle;->clear$foundation()V

    invoke-virtual {v3}, Landroidx/compose/foundation/style/StyleAnimations$Entry;->getStyleScope()Landroidx/compose/foundation/style/ResolvedStyle;

    move-result-object v4

    invoke-virtual {v3}, Landroidx/compose/foundation/style/StyleAnimations$Entry;->getStyle()Landroidx/compose/foundation/style/Style;

    move-result-object v5

    invoke-virtual {v4, v5, p1, p2, v6}, Landroidx/compose/foundation/style/ResolvedStyle;->resolve$foundation(Landroidx/compose/foundation/style/Style;Landroidx/compose/foundation/style/StyleOuterNode;Landroidx/compose/ui/unit/Density;Z)V

    invoke-virtual {v3}, Landroidx/compose/foundation/style/StyleAnimations$Entry;->getStyleScope()Landroidx/compose/foundation/style/ResolvedStyle;

    move-result-object v4

    iget v4, v4, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/2addr v2, v4

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Landroidx/compose/ui/Modifier$Node;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Ly22;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/compose/foundation/style/StyleAnimations$Entry;->animateOut(Ly22;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroidx/compose/ui/Modifier$Node;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Ly22;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/compose/foundation/style/StyleAnimations$Entry;->snapOut(Ly22;)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public final preResolve()V
    .locals 6

    iget-object v0, p0, Landroidx/compose/foundation/style/StyleAnimations;->values:[Landroidx/compose/foundation/style/StyleAnimations$Entry;

    iget p0, p0, Landroidx/compose/foundation/style/StyleAnimations;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_2

    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/compose/foundation/style/StyleAnimations$Entry;->getState()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Landroidx/compose/foundation/style/StyleAnimations$Entry;->getState()I

    move-result v5

    :cond_0
    invoke-virtual {v2, v5}, Landroidx/compose/foundation/style/StyleAnimations$Entry;->setState(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final record(ILandroidx/compose/foundation/style/Style;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/AnimationSpec;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/foundation/style/Style;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroidx/compose/foundation/style/StyleAnimations;->find(I)Landroidx/compose/foundation/style/StyleAnimations$Entry;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Landroidx/compose/foundation/style/StyleAnimations$Entry;->setStyle(Landroidx/compose/foundation/style/Style;)V

    invoke-virtual {v0}, Landroidx/compose/foundation/style/StyleAnimations$Entry;->getState()I

    move-result p0

    if-eq p0, v1, :cond_1

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x3

    invoke-virtual {v0, p0}, Landroidx/compose/foundation/style/StyleAnimations$Entry;->setState(I)V

    return-void

    :cond_1
    const/4 p0, 0x2

    invoke-virtual {v0, p0}, Landroidx/compose/foundation/style/StyleAnimations$Entry;->setState(I)V

    return-void

    :cond_2
    iget v0, p0, Landroidx/compose/foundation/style/StyleAnimations;->size:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Landroidx/compose/foundation/style/StyleAnimations;->ensureCapacity(I)V

    iget v0, p0, Landroidx/compose/foundation/style/StyleAnimations;->size:I

    iget-object v2, p0, Landroidx/compose/foundation/style/StyleAnimations;->values:[Landroidx/compose/foundation/style/StyleAnimations$Entry;

    new-instance v3, Landroidx/compose/foundation/style/StyleAnimations$Entry;

    move-object v4, p0

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Landroidx/compose/foundation/style/StyleAnimations$Entry;-><init>(Landroidx/compose/foundation/style/StyleAnimations;ILandroidx/compose/foundation/style/Style;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/AnimationSpec;)V

    aput-object v3, v2, v0

    iget p0, v4, Landroidx/compose/foundation/style/StyleAnimations;->size:I

    add-int/2addr p0, v1

    iput p0, v4, Landroidx/compose/foundation/style/StyleAnimations;->size:I

    return-void
.end method

.method public final withAnimations(Landroidx/compose/ui/unit/Density;Landroidx/compose/foundation/style/ResolvedStyle;Landroidx/compose/foundation/style/StyleOuterNode;I)Landroidx/compose/foundation/style/ResolvedStyle;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/style/StyleAnimations;->currentStyle:Landroidx/compose/foundation/style/ResolvedStyle;

    invoke-virtual {p2, v0}, Landroidx/compose/foundation/style/ResolvedStyle;->copyInto$foundation(Landroidx/compose/foundation/style/ResolvedStyle;)V

    invoke-virtual {p0, v0, p1, p3, p4}, Landroidx/compose/foundation/style/StyleAnimations;->applyAnimationsTo(Landroidx/compose/foundation/style/ResolvedStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/foundation/style/StyleOuterNode;I)V

    return-object v0
.end method
