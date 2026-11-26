.class final Landroidx/compose/material3/carousel/KeylineListScopeImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/material3/carousel/KeylineListScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/carousel/KeylineListScopeImpl$TmpKeyline;
    }
.end annotation


# instance fields
.field private firstFocalIndex:I

.field private focalItemSize:F

.field private pivotIndex:I

.field private pivotOffset:F

.field private final tmpKeylines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/material3/carousel/KeylineListScopeImpl$TmpKeyline;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/material3/carousel/KeylineListScopeImpl;->firstFocalIndex:I

    iput v0, p0, Landroidx/compose/material3/carousel/KeylineListScopeImpl;->pivotIndex:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/compose/material3/carousel/KeylineListScopeImpl;->tmpKeylines:Ljava/util/List;

    return-void
.end method

.method private final createKeylinesWithPivot(IFIIFFFLjava/util/List;)Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFIIFFF",
            "Ljava/util/List<",
            "Landroidx/compose/material3/carousel/KeylineListScopeImpl$TmpKeyline;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/material3/carousel/Keyline;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v4, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p6

    move-object/from16 v13, p8

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/material3/carousel/KeylineListScopeImpl$TmpKeyline;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Landroidx/compose/material3/carousel/KeylineListScopeImpl$TmpKeyline;->getSize()F

    move-result v3

    invoke-direct {v0, v3, v4}, Landroidx/compose/material3/carousel/KeylineListScopeImpl;->isCutoffLeft(FF)Z

    move-result v3

    const/high16 v16, 0x40000000    # 2.0f

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroidx/compose/material3/carousel/KeylineListScopeImpl$TmpKeyline;->getSize()F

    move-result v3

    div-float v3, v3, v16

    sub-float v3, v4, v3

    :goto_0
    move v9, v3

    move-object v3, v2

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroidx/compose/material3/carousel/KeylineListScopeImpl$TmpKeyline;->getSize()F

    move-result v3

    invoke-direct {v0, v3, v4, v12}, Landroidx/compose/material3/carousel/KeylineListScopeImpl;->isCutoffRight(FFF)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroidx/compose/material3/carousel/KeylineListScopeImpl$TmpKeyline;->getSize()F

    move-result v3

    div-float v3, v3, v16

    add-float/2addr v3, v4

    sub-float/2addr v3, v12

    goto :goto_0

    :cond_1
    move-object v3, v2

    const/4 v9, 0x0

    :goto_1
    new-instance v2, Landroidx/compose/material3/carousel/Keyline;

    move-object v5, v3

    invoke-virtual {v5}, Landroidx/compose/material3/carousel/KeylineListScopeImpl$TmpKeyline;->getSize()F

    move-result v3

    const/16 v17, 0x1

    const/4 v6, 0x0

    if-gt v10, v1, :cond_2

    if-gt v1, v11, :cond_2

    move v7, v6

    move/from16 v6, v17

    goto :goto_2

    :cond_2
    move v7, v6

    :goto_2
    invoke-virtual {v5}, Landroidx/compose/material3/carousel/KeylineListScopeImpl$TmpKeyline;->isAnchor()Z

    move-result v5

    const/4 v8, 0x1

    move/from16 v18, v7

    move v7, v5

    move/from16 v5, p2

    move/from16 v15, v18

    invoke-direct/range {v2 .. v9}, Landroidx/compose/material3/carousel/Keyline;-><init>(FFFZZZF)V

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    div-float v2, p5, v16

    sub-float v3, p2, v2

    sub-float v3, v3, p7

    add-int/lit8 v4, v1, -0x1

    invoke-static {v4, v15}, Lkx6;->k(II)Lw74;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v3

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v6, v4

    check-cast v6, Lu74;

    invoke-virtual {v6}, Lu74;->nextInt()I

    move-result v6

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/material3/carousel/KeylineListScopeImpl$TmpKeyline;

    invoke-virtual {v7}, Landroidx/compose/material3/carousel/KeylineListScopeImpl$TmpKeyline;->getSize()F

    move-result v8

    div-float v8, v8, v16

    sub-float v8, v3, v8

    sub-float v22, v5, v2

    invoke-virtual {v7}, Landroidx/compose/material3/carousel/KeylineListScopeImpl$TmpKeyline;->getSize()F

    move-result v9

    invoke-direct {v0, v9, v8}, Landroidx/compose/material3/carousel/KeylineListScopeImpl;->isCutoffLeft(FF)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v7}, Landroidx/compose/material3/carousel/KeylineListScopeImpl$TmpKeyline;->getSize()F

    move-result v9

    div-float v9, v9, v16

    sub-float v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    move/from16 v26, v9

    goto :goto_4

    :cond_3
    const/16 v26, 0x0

    :goto_4
    new-instance v19, Landroidx/compose/material3/carousel/Keyline;

    invoke-virtual {v7}, Landroidx/compose/material3/carousel/KeylineListScopeImpl$TmpKeyline;->getSize()F

    move-result v20

    if-gt v10, v6, :cond_4

    if-gt v6, v11, :cond_4

    move/from16 v23, v17

    goto :goto_5

    :cond_4
    move/from16 v23, v15

    :goto_5
    invoke-virtual {v7}, Landroidx/compose/material3/carousel/KeylineListScopeImpl$TmpKeyline;->isAnchor()Z

    move-result v24

    const/16 v25, 0x0

    move/from16 v21, v8

    invoke-direct/range {v19 .. v26}, Landroidx/compose/material3/carousel/Keyline;-><init>(FFFZZZF)V

    move-object/from16 v6, v19

    invoke-interface {v14, v15, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {v7}, Landroidx/compose/material3/carousel/KeylineListScopeImpl$TmpKeyline;->getSize()F

    move-result v6

    add-float v6, v6, p7

    sub-float/2addr v3, v6

    add-float v6, p5, p7

    sub-float/2addr v5, v6

    goto :goto_3

    :cond_5
    add-float v3, p2, v2

    add-float v3, v3, p7

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v1, v4}, Lkx6;->n(II)Ly74;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v3

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    move-object v5, v1

    check-cast v5, Lu74;

    invoke-virtual {v5}, Lu74;->nextInt()I

    move-result v5

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/material3/carousel/KeylineListScopeImpl$TmpKeyline;

    invoke-virtual {v6}, Landroidx/compose/material3/carousel/KeylineListScopeImpl$TmpKeyline;->getSize()F

    move-result v7

    div-float v7, v7, v16

    add-float/2addr v7, v3

    add-float v22, v4, v2

    invoke-virtual {v6}, Landroidx/compose/material3/carousel/KeylineListScopeImpl$TmpKeyline;->getSize()F

    move-result v8

    invoke-direct {v0, v8, v7, v12}, Landroidx/compose/material3/carousel/KeylineListScopeImpl;->isCutoffRight(FFF)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v6}, Landroidx/compose/material3/carousel/KeylineListScopeImpl$TmpKeyline;->getSize()F

    move-result v8

    div-float v8, v8, v16

    add-float/2addr v8, v7

    sub-float/2addr v8, v12

    move/from16 v26, v8

    goto :goto_7

    :cond_6
    const/16 v26, 0x0

    :goto_7
    new-instance v19, Landroidx/compose/material3/carousel/Keyline;

    invoke-virtual {v6}, Landroidx/compose/material3/carousel/KeylineListScopeImpl$TmpKeyline;->getSize()F

    move-result v20

    if-gt v10, v5, :cond_7

    if-gt v5, v11, :cond_7

    move/from16 v23, v17

    goto :goto_8

    :cond_7
    move/from16 v23, v15

    :goto_8
    invoke-virtual {v6}, Landroidx/compose/material3/carousel/KeylineListScopeImpl$TmpKeyline;->isAnchor()Z

    move-result v24

    const/16 v25, 0x0

    move/from16 v21, v7

    invoke-direct/range {v19 .. v26}, Landroidx/compose/material3/carousel/Keyline;-><init>(FFFZZZF)V

    move-object/from16 v5, v19

    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Landroidx/compose/material3/carousel/KeylineListScopeImpl$TmpKeyline;->getSize()F

    move-result v5

    add-float v5, v5, p7

    add-float/2addr v3, v5

    add-float v5, p5, p7

    add-float/2addr v4, v5

    goto :goto_6

    :cond_8
    return-object v14
.end method

.method private final findLastFocalIndex()I
    .locals 4

    iget v0, p0, Landroidx/compose/material3/carousel/KeylineListScopeImpl;->firstFocalIndex:I

    :goto_0
    iget-object v1, p0, Landroidx/compose/material3/carousel/KeylineListScopeImpl;->tmpKeylines:Ljava/util/List;

    invoke-static {v1}, Lu96;->g(Ljava/util/List;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/compose/material3/carousel/KeylineListScopeImpl;->tmpKeylines:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/material3/carousel/KeylineListScopeImpl$TmpKeyline;

    invoke-virtual {v1}, Landroidx/compose/material3/carousel/KeylineListScopeImpl$TmpKeyline;->getSize()F

    move-result v1

    iget v3, p0, Landroidx/compose/material3/carousel/KeylineListScopeImpl;->focalItemSize:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    return v0
.end method

.method private final isCutoffLeft(FF)Z
    .locals 1

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr p1, p0

    sub-float p0, p2, p1

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    add-float/2addr p2, p1

    cmpl-float p0, p2, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final isCutoffRight(FFF)Z
    .locals 0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr p1, p0

    sub-float p0, p2, p1

    cmpg-float p0, p0, p3

    if-gez p0, :cond_0

    add-float/2addr p2, p1

    cmpl-float p0, p2, p3

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public add(FZ)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/material3/carousel/KeylineListScopeImpl;->tmpKeylines:Ljava/util/List;

    new-instance v1, Landroidx/compose/material3/carousel/KeylineListScopeImpl$TmpKeyline;

    invoke-direct {v1, p1, p2}, Landroidx/compose/material3/carousel/KeylineListScopeImpl$TmpKeyline;-><init>(FZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p2, p0, Landroidx/compose/material3/carousel/KeylineListScopeImpl;->focalItemSize:F

    cmpl-float p2, p1, p2

    if-lez p2, :cond_0

    iget-object p2, p0, Landroidx/compose/material3/carousel/KeylineListScopeImpl;->tmpKeylines:Ljava/util/List;

    invoke-static {p2}, Lu96;->g(Ljava/util/List;)I

    move-result p2

    iput p2, p0, Landroidx/compose/material3/carousel/KeylineListScopeImpl;->firstFocalIndex:I

    iput p1, p0, Landroidx/compose/material3/carousel/KeylineListScopeImpl;->focalItemSize:F

    :cond_0
    return-void
.end method

.method public final createWithAlignment-waks0t8(FFI)Landroidx/compose/material3/carousel/KeylineList;
    .locals 9

    invoke-direct {p0}, Landroidx/compose/material3/carousel/KeylineListScopeImpl;->findLastFocalIndex()I

    move-result v4

    iget v0, p0, Landroidx/compose/material3/carousel/KeylineListScopeImpl;->firstFocalIndex:I

    sub-int v1, v4, v0

    iput v0, p0, Landroidx/compose/material3/carousel/KeylineListScopeImpl;->pivotIndex:I

    sget-object v0, Landroidx/compose/material3/carousel/CarouselAlignment;->Companion:Landroidx/compose/material3/carousel/CarouselAlignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/material3/carousel/CarouselAlignment$Companion;->getCenter-NUL3oTo()I

    move-result v2

    invoke-static {p3, v2}, Landroidx/compose/material3/carousel/CarouselAlignment;->equals-impl0(II)Z

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v2, :cond_2

    const/4 p3, 0x0

    cmpg-float v0, p2, p3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    rem-int/lit8 v0, v1, 0x2

    xor-int/lit8 v2, v0, 0x2

    neg-int v5, v0

    or-int/2addr v5, v0

    and-int/2addr v2, v5

    shr-int/lit8 v2, v2, 0x1f

    and-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    div-float p3, p2, v3

    :goto_0
    div-float v0, p1, v3

    iget v2, p0, Landroidx/compose/material3/carousel/KeylineListScopeImpl;->focalItemSize:F

    div-float v3, v2, v3

    int-to-float v1, v1

    mul-float/2addr v3, v1

    sub-float/2addr v0, v3

    sub-float/2addr v0, p3

    :goto_1
    move v5, v2

    move v2, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroidx/compose/material3/carousel/CarouselAlignment$Companion;->getEnd-NUL3oTo()I

    move-result v0

    invoke-static {p3, v0}, Landroidx/compose/material3/carousel/CarouselAlignment;->equals-impl0(II)Z

    move-result p3

    iget v2, p0, Landroidx/compose/material3/carousel/KeylineListScopeImpl;->focalItemSize:F

    if-eqz p3, :cond_3

    div-float p3, v2, v3

    sub-float v0, p1, p3

    goto :goto_1

    :cond_3
    div-float v0, v2, v3

    goto :goto_1

    :goto_2
    iput v2, p0, Landroidx/compose/material3/carousel/KeylineListScopeImpl;->pivotOffset:F

    iget v1, p0, Landroidx/compose/material3/carousel/KeylineListScopeImpl;->pivotIndex:I

    iget v3, p0, Landroidx/compose/material3/carousel/KeylineListScopeImpl;->firstFocalIndex:I

    iget-object v8, p0, Landroidx/compose/material3/carousel/KeylineListScopeImpl;->tmpKeylines:Ljava/util/List;

    move-object v0, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/carousel/KeylineListScopeImpl;->createKeylinesWithPivot(IFIIFFFLjava/util/List;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Landroidx/compose/material3/carousel/KeylineList;

    invoke-direct {p1, p0}, Landroidx/compose/material3/carousel/KeylineList;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public final createWithPivot(FFIF)Landroidx/compose/material3/carousel/KeylineList;
    .locals 9

    iget v3, p0, Landroidx/compose/material3/carousel/KeylineListScopeImpl;->firstFocalIndex:I

    invoke-direct {p0}, Landroidx/compose/material3/carousel/KeylineListScopeImpl;->findLastFocalIndex()I

    move-result v4

    iget v5, p0, Landroidx/compose/material3/carousel/KeylineListScopeImpl;->focalItemSize:F

    iget-object v8, p0, Landroidx/compose/material3/carousel/KeylineListScopeImpl;->tmpKeylines:Ljava/util/List;

    move-object v0, p0

    move v6, p1

    move v7, p2

    move v1, p3

    move v2, p4

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/carousel/KeylineListScopeImpl;->createKeylinesWithPivot(IFIIFFFLjava/util/List;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Landroidx/compose/material3/carousel/KeylineList;

    invoke-direct {p1, p0}, Landroidx/compose/material3/carousel/KeylineList;-><init>(Ljava/util/List;)V

    return-object p1
.end method
