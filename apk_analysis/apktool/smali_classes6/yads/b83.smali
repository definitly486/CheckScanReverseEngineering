.class public Lyads/b83;
.super Lyads/yh2;
.source "SourceFile"


# instance fields
.field public final c:Lyads/x73;

.field public d:I

.field public final e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0, p1, v2, v0, v1}, Lyads/b83;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1, p2, v0, v1}, Lyads/b83;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lyads/yh2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lyads/x73;

    invoke-direct {v0, p0}, Lyads/x73;-><init>(Lyads/b83;)V

    iput-object v0, p0, Lyads/b83;->c:Lyads/x73;

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yandex/mobile/ads/R$styleable;->monetization_ads_divkit_GridContainer:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    sget p2, Lcom/yandex/mobile/ads/R$styleable;->monetization_ads_divkit_GridContainer_android_columnCount:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lyads/b83;->setColumnCount(I)V

    sget p2, Lcom/yandex/mobile/ads/R$styleable;->monetization_ads_divkit_GridContainer_android_gravity:I

    const p3, 0x800033

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lyads/yh2;->setGravity(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0

    :cond_0
    :goto_0
    iput-boolean v1, p0, Lyads/b83;->e:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 p3, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lyads/b83;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static a(Landroid/view/View;IIIIII)V
    .locals 4

    const/4 v0, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, -0x1

    if-ne p3, v2, :cond_0

    invoke-static {p5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMinimumWidth()I

    move-result p5

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Lyads/ro1;

    iget v3, v3, Lyads/ro1;->h:I

    invoke-static {p1, v0, p3, p5, v3}, Lyads/wh2;->a(IIIII)I

    move-result p1

    :goto_0
    if-ne p4, v2, :cond_1

    invoke-static {p6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p5, Lyads/ro1;

    iget p5, p5, Lyads/ro1;->g:I

    invoke-static {p2, v0, p4, p3, p5}, Lyads/wh2;->a(IIIII)I

    move-result p2

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->measure(II)V

    return-void
.end method


# virtual methods
.method public final j()V
    .locals 8

    iget v0, p0, Lyads/b83;->d:I

    const/16 v1, 0x8

    const/16 v2, 0xdf

    const/4 v3, 0x0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_2

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v5, Lyads/ro1;

    invoke-virtual {v5}, Lyads/ro1;->a()I

    move-result v6

    if-ltz v6, :cond_1

    invoke-virtual {v5}, Lyads/ro1;->c()I

    move-result v6

    if-ltz v6, :cond_1

    iget v6, v5, Lyads/ro1;->d:F

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_0

    iget v5, v5, Lyads/ro1;->c:F

    cmpg-float v5, v5, v7

    if-ltz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "Negative weights are not supported."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "Negative spans are not supported."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_1
    if-ge v3, v0, :cond_4

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v1, :cond_3

    mul-int/lit8 v2, v2, 0x1f

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Lyads/ro1;

    invoke-virtual {v4}, Lyads/ro1;->hashCode()I

    move-result v4

    add-int/2addr v4, v2

    move v2, v4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iput v2, p0, Lyads/b83;->d:I

    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v5, v3

    :goto_2
    if-ge v5, v4, :cond_7

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v1, :cond_6

    mul-int/lit8 v2, v2, 0x1f

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v6, Lyads/ro1;

    invoke-virtual {v6}, Lyads/ro1;->hashCode()I

    move-result v6

    add-int/2addr v6, v2

    move v2, v6

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    if-eq v0, v2, :cond_8

    iput v3, p0, Lyads/b83;->d:I

    iget-object v0, p0, Lyads/b83;->c:Lyads/x73;

    invoke-virtual {v0}, Lyads/x73;->b()V

    invoke-virtual {p0}, Lyads/b83;->j()V

    :cond_8
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 17

    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    invoke-virtual {v0}, Lyads/b83;->j()V

    iget-object v1, v0, Lyads/b83;->c:Lyads/x73;

    iget-object v1, v1, Lyads/x73;->c:Lyads/u85;

    invoke-virtual {v1}, Lyads/u85;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, v0, Lyads/b83;->c:Lyads/x73;

    iget-object v2, v2, Lyads/x73;->d:Lyads/u85;

    invoke-virtual {v2}, Lyads/u85;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v3, v0, Lyads/b83;->c:Lyads/x73;

    iget-object v3, v3, Lyads/x73;->b:Lyads/u85;

    invoke-virtual {v3}, Lyads/u85;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iget v4, v0, Lyads/yh2;->a:I

    and-int/lit8 v4, v4, 0x7

    iget-object v5, v0, Lyads/b83;->c:Lyads/x73;

    iget-object v6, v5, Lyads/x73;->c:Lyads/u85;

    invoke-virtual {v6}, Lyads/u85;->b()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    iget-object v5, v5, Lyads/x73;->c:Lyads/u85;

    invoke-virtual {v5}, Lyads/u85;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lyads/x73;->a(Ljava/util/List;)I

    move-result v5

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v6, v8

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    sub-int/2addr v6, v8

    const/4 v8, 0x5

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eq v4, v10, :cond_2

    if-eq v4, v8, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int/2addr v4, v6

    sub-int/2addr v4, v5

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-static {v6, v5, v9, v4}, Lk;->b(IIII)I

    move-result v4

    :goto_1
    iget v5, v0, Lyads/yh2;->a:I

    and-int/lit8 v5, v5, 0x70

    iget-object v6, v0, Lyads/b83;->c:Lyads/x73;

    iget-object v11, v6, Lyads/x73;->d:Lyads/u85;

    invoke-virtual {v11}, Lyads/u85;->b()Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v6, v6, Lyads/x73;->d:Lyads/u85;

    invoke-virtual {v6}, Lyads/u85;->a()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lyads/x73;->a(Ljava/util/List;)I

    move-result v6

    goto :goto_2

    :cond_3
    move v6, v7

    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v12

    sub-int/2addr v11, v12

    const/16 v12, 0x50

    const/16 v13, 0x10

    if-eq v5, v13, :cond_5

    if-eq v5, v12, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    add-int/2addr v5, v11

    sub-int/2addr v5, v6

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-static {v11, v6, v9, v5}, Lk;->b(IIII)I

    move-result v5

    :goto_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v11, v7

    :goto_4
    if-ge v7, v6, :cond_b

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v12, 0x8

    if-eq v15, v12, :cond_a

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v12, Lyads/ro1;

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lyads/v73;

    iget v13, v15, Lyads/v73;->b:I

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lyads/y73;

    invoke-virtual {v13}, Lyads/y73;->a()I

    move-result v13

    iget v9, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v13, v9

    iget v9, v15, Lyads/v73;->c:I

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lyads/y73;

    invoke-virtual {v9}, Lyads/y73;->a()I

    move-result v9

    iget v8, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v9, v8

    iget v8, v15, Lyads/v73;->b:I

    move/from16 p5, v10

    iget v10, v15, Lyads/v73;->d:I

    add-int/2addr v8, v10

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lyads/y73;

    invoke-virtual {v8}, Lyads/y73;->a()I

    move-result v10

    invoke-virtual {v8}, Lyads/y73;->b()I

    move-result v8

    add-int/2addr v8, v10

    sub-int/2addr v8, v13

    iget v10, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v8, v10

    iget v10, v15, Lyads/v73;->c:I

    iget v15, v15, Lyads/v73;->e:I

    add-int/2addr v10, v15

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lyads/y73;

    invoke-virtual {v10}, Lyads/y73;->a()I

    move-result v15

    invoke-virtual {v10}, Lyads/y73;->b()I

    move-result v10

    add-int/2addr v10, v15

    sub-int/2addr v10, v9

    iget v15, v12, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v10, v15

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    invoke-virtual {v12}, Lyads/ro1;->b()I

    move-result v16

    and-int/lit8 v0, v16, 0x7

    move-object/from16 v16, v1

    move/from16 v1, p5

    if-eq v0, v1, :cond_7

    const/4 v1, 0x5

    if-eq v0, v1, :cond_6

    :goto_5
    const/4 v0, 0x2

    goto :goto_6

    :cond_6
    add-int/2addr v13, v8

    sub-int/2addr v13, v15

    goto :goto_5

    :cond_7
    const/4 v0, 0x2

    const/4 v1, 0x5

    invoke-static {v8, v15, v0, v13}, Lk;->b(IIII)I

    move-result v13

    :goto_6
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {v12}, Lyads/ro1;->b()I

    move-result v12

    and-int/lit8 v12, v12, 0x70

    const/16 v15, 0x10

    const/16 v1, 0x50

    if-eq v12, v15, :cond_9

    if-eq v12, v1, :cond_8

    goto :goto_7

    :cond_8
    add-int/2addr v9, v10

    sub-int/2addr v9, v8

    goto :goto_7

    :cond_9
    invoke-static {v10, v8, v0, v9}, Lk;->b(IIII)I

    move-result v9

    :goto_7
    add-int/2addr v13, v4

    add-int/2addr v9, v5

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v13

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v9

    invoke-virtual {v14, v13, v9, v8, v10}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_a
    move-object/from16 v16, v1

    move v0, v9

    move v15, v13

    const/16 v1, 0x50

    :goto_8
    add-int/lit8 v7, v7, 0x1

    move v9, v0

    move v12, v1

    move v13, v15

    move-object/from16 v1, v16

    const/4 v8, 0x5

    const/4 v10, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_4

    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    sget v0, Lyads/cr3;->a:I

    sget-object v0, Lyads/vj5;->b:[Lyads/vj5;

    invoke-static {}, Lyads/cr3;->a()V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    invoke-virtual {v0}, Lyads/b83;->j()V

    iget-object v3, v0, Lyads/b83;->c:Lyads/x73;

    invoke-virtual {v3}, Lyads/x73;->a()V

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    add-int/2addr v5, v3

    sub-int v3, v1, v4

    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    sub-int v3, v2, v5

    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    const/16 v14, 0x8

    const/4 v15, -0x1

    if-ge v7, v3, :cond_3

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-eq v11, v14, :cond_2

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v11, Lyads/ro1;

    iget v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v12, v15, :cond_0

    move v12, v6

    :cond_0
    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v11, v15, :cond_1

    move v11, v6

    :cond_1
    invoke-virtual {v10}, Landroid/view/View;->getMinimumWidth()I

    move-result v13

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v14, Lyads/ro1;

    iget v14, v14, Lyads/ro1;->h:I

    invoke-static {v8, v6, v12, v13, v14}, Lyads/wh2;->a(IIIII)I

    move-result v12

    invoke-virtual {v10}, Landroid/view/View;->getMinimumHeight()I

    move-result v13

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v14, Lyads/ro1;

    iget v14, v14, Lyads/ro1;->g:I

    invoke-static {v9, v6, v11, v13, v14}, Lyads/wh2;->a(IIIII)I

    move-result v11

    invoke-virtual {v10, v12, v11}, Landroid/view/View;->measure(II)V

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, v0, Lyads/b83;->c:Lyads/x73;

    iget-object v7, v3, Lyads/x73;->e:Lyads/z73;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    invoke-static {v8}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    const v12, 0x8000

    const/high16 v13, 0x40000000    # 2.0f

    const/high16 v15, -0x80000000

    if-eq v10, v15, :cond_6

    if-eqz v10, :cond_5

    if-eq v10, v13, :cond_4

    goto :goto_1

    :cond_4
    iput v11, v7, Lyads/z73;->a:I

    iput v11, v7, Lyads/z73;->b:I

    goto :goto_1

    :cond_5
    iput v6, v7, Lyads/z73;->a:I

    iput v12, v7, Lyads/z73;->b:I

    goto :goto_1

    :cond_6
    iput v6, v7, Lyads/z73;->a:I

    iput v11, v7, Lyads/z73;->b:I

    :goto_1
    iget-object v7, v3, Lyads/x73;->e:Lyads/z73;

    iget v7, v7, Lyads/z73;->a:I

    iget-object v10, v3, Lyads/x73;->c:Lyads/u85;

    invoke-virtual {v10}, Lyads/u85;->a()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v10}, Lyads/x73;->a(Ljava/util/List;)I

    move-result v10

    iget-object v3, v3, Lyads/x73;->e:Lyads/z73;

    iget v3, v3, Lyads/z73;->b:I

    invoke-static {v10, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v7, v0, Lyads/b83;->c:Lyads/x73;

    iget-object v7, v7, Lyads/x73;->b:Lyads/u85;

    invoke-virtual {v7}, Lyads/u85;->a()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    iget-object v10, v0, Lyads/b83;->c:Lyads/x73;

    iget-object v10, v10, Lyads/x73;->c:Lyads/u85;

    invoke-virtual {v10}, Lyads/u85;->a()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    move v15, v6

    :goto_2
    if-ge v6, v11, :cond_9

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-eq v12, v14, :cond_8

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v12, Lyads/ro1;

    iget v13, v12, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_7

    add-int/lit8 v15, v15, 0x1

    move/from16 v20, v3

    move-object/from16 v18, v7

    move-object v14, v10

    move/from16 v17, v11

    const/high16 v3, 0x40000000    # 2.0f

    goto :goto_3

    :cond_7
    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lyads/v73;

    iget v14, v13, Lyads/v73;->b:I

    move/from16 v20, v3

    iget v3, v13, Lyads/v73;->d:I

    add-int/2addr v14, v3

    add-int/lit8 v14, v14, -0x1

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/y73;

    iget v14, v3, Lyads/y73;->a:I

    iget v3, v3, Lyads/y73;->c:I

    add-int/2addr v14, v3

    iget v3, v13, Lyads/v73;->b:I

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/y73;

    iget v3, v3, Lyads/y73;->a:I

    sub-int/2addr v14, v3

    iget v3, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v13, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v13

    sub-int/2addr v14, v3

    move-object v3, v10

    iget v10, v12, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v12, v12, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v13, 0x0

    move-object/from16 v18, v7

    move-object/from16 v7, v17

    move/from16 v17, v11

    move v11, v12

    move v12, v14

    move-object v14, v3

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static/range {v7 .. v13}, Lyads/b83;->a(Landroid/view/View;IIIIII)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_8
    move/from16 v20, v3

    move-object/from16 v18, v7

    move-object v14, v10

    move/from16 v17, v11

    move v3, v13

    :goto_3
    add-int/lit8 v6, v6, 0x1

    move v13, v3

    move-object v10, v14

    move/from16 v11, v17

    move-object/from16 v7, v18

    move/from16 v3, v20

    const v12, 0x8000

    const/16 v14, 0x8

    goto :goto_2

    :cond_9
    move/from16 v20, v3

    move v3, v13

    iget-object v6, v0, Lyads/b83;->c:Lyads/x73;

    iget-object v7, v6, Lyads/x73;->f:Lyads/z73;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    const/high16 v12, -0x80000000

    if-eq v10, v12, :cond_c

    if-eqz v10, :cond_b

    if-eq v10, v3, :cond_a

    goto :goto_4

    :cond_a
    iput v11, v7, Lyads/z73;->a:I

    iput v11, v7, Lyads/z73;->b:I

    goto :goto_4

    :cond_b
    const/4 v3, 0x0

    iput v3, v7, Lyads/z73;->a:I

    const v10, 0x8000

    iput v10, v7, Lyads/z73;->b:I

    goto :goto_4

    :cond_c
    const/4 v3, 0x0

    iput v3, v7, Lyads/z73;->a:I

    iput v11, v7, Lyads/z73;->b:I

    :goto_4
    iget-object v3, v6, Lyads/x73;->f:Lyads/z73;

    iget v3, v3, Lyads/z73;->a:I

    iget-object v7, v6, Lyads/x73;->d:Lyads/u85;

    invoke-virtual {v7}, Lyads/u85;->a()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lyads/x73;->a(Ljava/util/List;)I

    move-result v7

    iget-object v6, v6, Lyads/x73;->f:Lyads/z73;

    iget v6, v6, Lyads/z73;->b:I

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v6, v0, Lyads/b83;->c:Lyads/x73;

    iget-object v6, v6, Lyads/x73;->b:Lyads/u85;

    invoke-virtual {v6}, Lyads/u85;->a()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    iget-object v7, v0, Lyads/b83;->c:Lyads/x73;

    iget-object v7, v7, Lyads/x73;->c:Lyads/u85;

    invoke-virtual {v7}, Lyads/u85;->a()Ljava/lang/Object;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Ljava/util/List;

    iget-object v7, v0, Lyads/b83;->c:Lyads/x73;

    iget-object v7, v7, Lyads/x73;->d:Lyads/u85;

    invoke-virtual {v7}, Lyads/u85;->a()Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Ljava/util/List;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_5
    if-ge v10, v7, :cond_f

    move v12, v7

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v13

    move/from16 v16, v3

    const/16 v3, 0x8

    if-eq v13, v3, :cond_e

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v13, Lyads/ro1;

    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move/from16 v17, v4

    const/4 v4, -0x1

    if-eq v3, v4, :cond_d

    add-int/lit8 v11, v11, 0x1

    move/from16 v18, v5

    move v4, v10

    :goto_6
    move v3, v12

    goto/16 :goto_7

    :cond_d
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/v73;

    iget v4, v3, Lyads/v73;->b:I

    move/from16 v18, v4

    iget v4, v3, Lyads/v73;->d:I

    add-int v4, v18, v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/y73;

    move/from16 v18, v5

    iget v5, v4, Lyads/y73;->a:I

    iget v4, v4, Lyads/y73;->c:I

    add-int/2addr v5, v4

    iget v4, v3, Lyads/v73;->b:I

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/y73;

    iget v4, v4, Lyads/y73;->a:I

    sub-int/2addr v5, v4

    iget v4, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v19, v4

    iget v4, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v4, v19, v4

    sub-int/2addr v5, v4

    iget v4, v3, Lyads/v73;->c:I

    move/from16 v19, v4

    iget v4, v3, Lyads/v73;->e:I

    add-int v4, v19, v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/y73;

    move/from16 v19, v5

    iget v5, v4, Lyads/y73;->a:I

    iget v4, v4, Lyads/y73;->c:I

    add-int/2addr v5, v4

    iget v3, v3, Lyads/v73;->c:I

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/y73;

    iget v3, v3, Lyads/y73;->a:I

    sub-int/2addr v5, v3

    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    sub-int/2addr v5, v3

    move v3, v10

    iget v10, v13, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v4, v13, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move v13, v5

    move v5, v11

    move v11, v4

    move v4, v3

    move v3, v12

    move/from16 v12, v19

    invoke-static/range {v7 .. v13}, Lyads/b83;->a(Landroid/view/View;IIIIII)V

    add-int/lit8 v11, v5, 0x1

    goto :goto_7

    :cond_e
    move/from16 v17, v4

    move/from16 v18, v5

    move v4, v10

    move v5, v11

    goto :goto_6

    :goto_7
    add-int/lit8 v10, v4, 0x1

    move v7, v3

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    goto/16 :goto_5

    :cond_f
    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    add-int v3, v20, v17

    invoke-virtual {v0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int v4, v16, v18

    invoke-virtual {v0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v3, v1, v5}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    invoke-static {v4, v2, v5}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    sget v0, Lyads/cr3;->a:I

    sget-object v0, Lyads/vj5;->b:[Lyads/vj5;

    invoke-static {}, Lyads/cr3;->a()V

    return-void
.end method

.method public final onViewAdded(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    const/4 p1, 0x0

    iput p1, p0, Lyads/b83;->d:I

    iget-object p0, p0, Lyads/b83;->c:Lyads/x73;

    invoke-virtual {p0}, Lyads/x73;->b()V

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    const/4 p1, 0x0

    iput p1, p0, Lyads/b83;->d:I

    iget-object p0, p0, Lyads/b83;->c:Lyads/x73;

    invoke-virtual {p0}, Lyads/x73;->b()V

    return-void
.end method

.method public final requestLayout()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    iget-boolean v0, p0, Lyads/b83;->e:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyads/b83;->c:Lyads/x73;

    invoke-virtual {p0}, Lyads/x73;->a()V

    :cond_0
    return-void
.end method

.method public final setColumnCount(I)V
    .locals 2

    iget-object v0, p0, Lyads/b83;->c:Lyads/x73;

    if-lez p1, :cond_0

    iget v1, v0, Lyads/x73;->a:I

    if-eq v1, p1, :cond_1

    iput p1, v0, Lyads/x73;->a:I

    invoke-virtual {v0}, Lyads/x73;->b()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lyads/b83;->d:I

    iget-object p1, p0, Lyads/b83;->c:Lyads/x73;

    invoke-virtual {p1}, Lyads/x73;->b()V

    invoke-virtual {p0}, Lyads/b83;->requestLayout()V

    return-void
.end method
