.class public Lyads/g03;
.super Lyads/yh2;
.source "SourceFile"

# interfaces
.implements Lyads/wj;


# static fields
.field public static final synthetic k:[Lze4;


# instance fields
.field public final c:Landroid/graphics/Rect;

.field public final d:Ljava/util/LinkedHashSet;

.field public final e:Ljava/util/LinkedHashSet;

.field public final f:Ljava/util/LinkedHashSet;

.field public g:I

.field public h:I

.field public i:I

.field public final j:Lyads/hp0;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lyads/g03;

    const-string v1, "aspectRatio"

    const-string v2, "getAspectRatio()F"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lyads/mo;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lxe4;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v3

    sput-object v1, Lyads/g03;->k:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 40
    invoke-direct {p0, p1, v2, v0, v1}, Lyads/g03;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0, v1}, Lyads/g03;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lyads/yh2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lyads/g03;->c:Landroid/graphics/Rect;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lyads/g03;->d:Ljava/util/LinkedHashSet;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lyads/g03;->e:Ljava/util/LinkedHashSet;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lyads/g03;->f:Ljava/util/LinkedHashSet;

    invoke-static {}, Lyads/vj;->a()Lyads/hp0;

    move-result-object p1

    iput-object p1, p0, Lyads/g03;->j:Lyads/hp0;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 p3, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lyads/g03;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance p0, Lyads/ro1;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Lyads/ro1;-><init>(II)V

    return-object p0
.end method

.method public onLayout(ZIIII)V
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p5

    iget-object v0, p0, Lyads/g03;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-static {p5, v0}, Ljava/lang/Math;->max(II)I

    move-result p5

    sub-int/2addr p3, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    iget-object v0, p0, Lyads/g03;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr p3, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    iget-object v0, p0, Lyads/g03;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    iget-object v0, p0, Lyads/g03;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_5

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Lyads/ro1;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, v2, Lyads/ro1;->a:I

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v6

    invoke-static {v5, v6}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v5

    iget v6, v2, Lyads/ro1;->a:I

    and-int/lit8 v6, v6, 0x70

    and-int/lit8 v5, v5, 0x7

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v5, v8, :cond_1

    const/4 v8, 0x5

    if-eq v5, v8, :cond_0

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, p5

    goto :goto_1

    :cond_0
    sub-int v5, p3, v3

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v5, v8

    goto :goto_1

    :cond_1
    sub-int v5, p3, p5

    sub-int/2addr v5, v3

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, v8

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-static {v5, v8, v7, p5}, Lk;->b(IIII)I

    move-result v5

    :goto_1
    const/16 v8, 0x10

    if-eq v6, v8, :cond_3

    const/16 v7, 0x50

    if-eq v6, v7, :cond_2

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, p1

    goto :goto_2

    :cond_2
    sub-int v6, p4, v4

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v2, v6, v2

    goto :goto_2

    :cond_3
    sub-int v6, p4, p1

    sub-int/2addr v6, v4

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v6, v8

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-static {v6, v2, v7, p1}, Lk;->b(IIII)I

    move-result v2

    :goto_2
    add-int/2addr v3, v5

    add-int/2addr v4, v2

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public onMeasure(II)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v6, 0x0

    iput v6, v0, Lyads/g03;->g:I

    iput v6, v0, Lyads/g03;->h:I

    iput v6, v0, Lyads/g03;->i:I

    invoke-static/range {p1 .. p1}, Lyads/nh6;->a(I)Z

    move-result v1

    iget-object v2, v0, Lyads/g03;->j:Lyads/hp0;

    sget-object v3, Lyads/g03;->k:[Lze4;

    aget-object v4, v3, v6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lyads/hp0;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    const/4 v7, 0x0

    cmpg-float v2, v2, v7

    const/high16 v8, 0x40000000    # 2.0f

    if-nez v2, :cond_0

    move/from16 v4, p2

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_0
    move v4, v1

    goto :goto_1

    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lyads/g03;->j:Lyads/hp0;

    aget-object v3, v3, v6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lyads/hp0;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {v1}, Lw65;->b(F)I

    move-result v1

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    move v10, v6

    :goto_2
    const/16 v11, 0x8

    const/4 v1, 0x1

    const/4 v12, -0x1

    if-ge v10, v9, :cond_e

    move v2, v1

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v11, :cond_d

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v11, v3

    check-cast v11, Lyads/ro1;

    invoke-static/range {p1 .. p1}, Lyads/nh6;->a(I)Z

    move-result v13

    invoke-static {v4}, Lyads/nh6;->a(I)Z

    move-result v14

    iget v3, v11, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v3, v12, :cond_2

    move v15, v2

    goto :goto_3

    :cond_2
    move v15, v6

    :goto_3
    iget v5, v11, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v5, v12, :cond_3

    move/from16 v16, v2

    goto :goto_4

    :cond_3
    move/from16 v16, v6

    :goto_4
    if-eqz v13, :cond_4

    if-eqz v14, :cond_4

    goto :goto_5

    :cond_4
    if-eqz v14, :cond_5

    if-nez v15, :cond_b

    goto :goto_5

    :cond_5
    if-eqz v13, :cond_6

    if-nez v16, :cond_b

    goto :goto_5

    :cond_6
    if-nez v15, :cond_7

    goto :goto_5

    :cond_7
    if-lez v5, :cond_b

    :goto_5
    const/4 v3, 0x0

    const/4 v5, 0x0

    move/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Lyads/yh2;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget v2, v0, Lyads/g03;->i:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    invoke-static {v2, v3}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    iput v2, v0, Lyads/g03;->i:I

    if-nez v13, :cond_8

    iget v2, v11, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v2, v12, :cond_8

    goto :goto_6

    :cond_8
    if-nez v14, :cond_9

    iget v2, v11, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v2, v12, :cond_9

    :goto_6
    iget-object v2, v0, Lyads/g03;->d:Ljava/util/LinkedHashSet;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_9
    if-nez v13, :cond_a

    if-nez v15, :cond_a

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v3, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v5, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v5

    add-int/2addr v3, v2

    iget v2, v0, Lyads/g03;->g:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Lyads/g03;->g:I

    :cond_a
    if-nez v14, :cond_d

    if-nez v16, :cond_d

    iget-object v2, v0, Lyads/g03;->j:Lyads/hp0;

    sget-object v3, Lyads/g03;->k:[Lze4;

    aget-object v3, v3, v6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lyads/hp0;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    cmpg-float v2, v2, v7

    if-nez v2, :cond_d

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    iget v1, v0, Lyads/g03;->h:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lyads/g03;->h:I

    goto :goto_8

    :cond_b
    if-nez v13, :cond_c

    if-ne v3, v12, :cond_c

    goto :goto_7

    :cond_c
    if-nez v14, :cond_d

    if-ne v5, v12, :cond_d

    :goto_7
    iget-object v2, v0, Lyads/g03;->e:Ljava/util/LinkedHashSet;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    :cond_e
    move v2, v1

    iget-object v1, v0, Lyads/g03;->f:Ljava/util/LinkedHashSet;

    iget-object v3, v0, Lyads/g03;->d:Ljava/util/LinkedHashSet;

    invoke-static {v3, v1}, Lnn1;->s(Ljava/lang/Iterable;Ljava/util/Collection;)V

    iget-object v1, v0, Lyads/g03;->f:Ljava/util/LinkedHashSet;

    iget-object v3, v0, Lyads/g03;->e:Ljava/util/LinkedHashSet;

    invoke-static {v3, v1}, Lnn1;->s(Ljava/lang/Iterable;Ljava/util/Collection;)V

    iget-object v1, v0, Lyads/g03;->f:Ljava/util/LinkedHashSet;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    goto/16 :goto_d

    :cond_f
    invoke-static/range {p1 .. p1}, Lyads/nh6;->a(I)Z

    move-result v1

    invoke-static {v4}, Lyads/nh6;->a(I)Z

    move-result v3

    if-eqz v1, :cond_10

    if-eqz v3, :cond_10

    goto/16 :goto_d

    :cond_10
    if-nez v1, :cond_11

    iget v5, v0, Lyads/g03;->g:I

    if-nez v5, :cond_11

    move v9, v2

    goto :goto_9

    :cond_11
    move v9, v6

    :goto_9
    if-nez v3, :cond_12

    iget-object v5, v0, Lyads/g03;->j:Lyads/hp0;

    sget-object v10, Lyads/g03;->k:[Lze4;

    aget-object v10, v10, v6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v5, Lyads/hp0;->a:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    cmpg-float v5, v5, v7

    if-nez v5, :cond_12

    iget v5, v0, Lyads/g03;->h:I

    if-nez v5, :cond_12

    move v10, v2

    goto :goto_a

    :cond_12
    move v10, v6

    :goto_a
    if-nez v9, :cond_15

    if-nez v10, :cond_15

    iget-object v2, v0, Lyads/g03;->f:Ljava/util/LinkedHashSet;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v9, Lyads/ro1;

    if-nez v1, :cond_14

    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v10, v12, :cond_14

    invoke-virtual {v5}, Landroid/view/View;->getMinimumWidth()I

    move-result v10

    iget v13, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v14, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v13, v14

    add-int/2addr v13, v10

    iget v10, v0, Lyads/g03;->g:I

    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v0, Lyads/g03;->g:I

    :cond_14
    if-nez v3, :cond_13

    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v10, v12, :cond_13

    invoke-virtual {v5}, Landroid/view/View;->getMinimumHeight()I

    move-result v5

    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v10, v9

    add-int/2addr v10, v5

    iget v5, v0, Lyads/g03;->h:I

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v0, Lyads/g03;->h:I

    goto :goto_b

    :cond_15
    iget-object v1, v0, Lyads/g03;->f:Ljava/util/LinkedHashSet;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_16
    :goto_c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v14, v2

    check-cast v14, Lyads/ro1;

    iget-object v2, v0, Lyads/g03;->e:Ljava/util/LinkedHashSet;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v2, v12, :cond_17

    if-nez v9, :cond_18

    :cond_17
    iget v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v2, v12, :cond_19

    if-eqz v10, :cond_19

    :cond_18
    const/4 v3, 0x0

    const/4 v5, 0x0

    move/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Lyads/yh2;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget v2, v0, Lyads/g03;->i:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    invoke-static {v2, v3}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    iput v2, v0, Lyads/g03;->i:I

    iget-object v2, v0, Lyads/g03;->e:Ljava/util/LinkedHashSet;

    invoke-interface {v2, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_19
    if-eqz v9, :cond_1a

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v3, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v5, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v5

    add-int/2addr v3, v2

    iget v2, v0, Lyads/g03;->g:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Lyads/g03;->g:I

    :cond_1a
    if-eqz v10, :cond_16

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    iget v1, v0, Lyads/g03;->h:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lyads/g03;->h:I

    goto :goto_c

    :cond_1b
    :goto_d
    invoke-static/range {p1 .. p1}, Lyads/nh6;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    move v3, v6

    goto :goto_e

    :cond_1c
    iget v1, v0, Lyads/g03;->g:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget-object v3, v0, Lyads/g03;->c:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v5, v0, Lyads/g03;->c:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v1

    if-ge v3, v1, :cond_1d

    move v3, v1

    :cond_1d
    invoke-virtual {v0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    if-ge v3, v1, :cond_1e

    move v3, v1

    :cond_1e
    :goto_e
    iget v1, v0, Lyads/g03;->i:I

    move/from16 v2, p1

    invoke-static {v3, v2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v9

    const v1, 0xffffff

    and-int/2addr v1, v9

    invoke-static {v4}, Lyads/nh6;->a(I)Z

    move-result v3

    if-eqz v3, :cond_1f

    move v10, v6

    goto :goto_12

    :cond_1f
    iget-object v3, v0, Lyads/g03;->j:Lyads/hp0;

    sget-object v5, Lyads/g03;->k:[Lze4;

    aget-object v10, v5, v6

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Lyads/hp0;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    cmpg-float v3, v3, v7

    if-nez v3, :cond_20

    goto :goto_10

    :cond_20
    invoke-static {v2}, Lyads/nh6;->a(I)Z

    move-result v3

    if-nez v3, :cond_22

    int-to-float v1, v1

    iget-object v3, v0, Lyads/g03;->j:Lyads/hp0;

    aget-object v5, v5, v6

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Lyads/hp0;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    div-float/2addr v1, v3

    invoke-static {v1}, Lw65;->b(F)I

    move-result v1

    :cond_21
    :goto_f
    move v10, v1

    goto :goto_12

    :cond_22
    :goto_10
    iget v1, v0, Lyads/g03;->h:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v5, v0, Lyads/g03;->c:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    iget-object v10, v0, Lyads/g03;->c:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v3

    add-int/2addr v5, v1

    invoke-virtual {v0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v1

    if-ge v5, v1, :cond_23

    goto :goto_11

    :cond_23
    move v1, v5

    :goto_11
    invoke-virtual {v0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_21

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    if-ge v1, v3, :cond_21

    move v1, v3

    goto :goto_f

    :goto_12
    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-nez v1, :cond_26

    invoke-static {v10, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget-object v1, v0, Lyads/g03;->j:Lyads/hp0;

    sget-object v3, Lyads/g03;->k:[Lze4;

    aget-object v3, v3, v6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lyads/hp0;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    cmpg-float v1, v1, v7

    if-nez v1, :cond_24

    goto :goto_14

    :cond_24
    invoke-static {v2}, Lyads/nh6;->a(I)Z

    move-result v1

    if-nez v1, :cond_26

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    :goto_13
    if-ge v6, v7, :cond_26

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v11, :cond_25

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Lyads/ro1;

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v5, -0x3

    if-ne v3, v5, :cond_25

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lyads/yh2;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v2, v0, Lyads/g03;->f:Ljava/util/LinkedHashSet;

    invoke-interface {v2, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_25
    add-int/lit8 v6, v6, 0x1

    move/from16 v2, p1

    goto :goto_13

    :cond_26
    :goto_14
    iget v1, v0, Lyads/g03;->i:I

    shl-int/lit8 v1, v1, 0x10

    invoke-static {v10, v4, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    invoke-virtual {v0, v9, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    iget-object v1, v0, Lyads/g03;->f:Ljava/util/LinkedHashSet;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_27
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Lyads/ro1;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    iget-object v6, v0, Lyads/g03;->c:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    iget-object v7, v0, Lyads/g03;->c:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v6, v5

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v5, v7

    add-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    iget-object v7, v0, Lyads/g03;->c:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    iget-object v9, v0, Lyads/g03;->c:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/2addr v7, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v6, v9

    add-int/2addr v6, v7

    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v7, v12, :cond_28

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_16

    :cond_28
    move/from16 v7, p1

    :goto_16
    iget v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v2}, Landroid/view/View;->getMinimumWidth()I

    move-result v10

    iget v11, v3, Lyads/ro1;->h:I

    invoke-static {v7, v5, v9, v10, v11}, Lyads/wh2;->a(IIIII)I

    move-result v5

    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v7, v12, :cond_29

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_17

    :cond_29
    move v7, v4

    :goto_17
    iget v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v2}, Landroid/view/View;->getMinimumHeight()I

    move-result v10

    iget v3, v3, Lyads/ro1;->g:I

    invoke-static {v7, v6, v9, v10, v3}, Lyads/wh2;->a(IIIII)I

    move-result v3

    invoke-virtual {v2, v5, v3}, Landroid/view/View;->measure(II)V

    iget-object v3, v0, Lyads/g03;->e:Ljava/util/LinkedHashSet;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    iget v3, v0, Lyads/g03;->i:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    invoke-static {v3, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    iput v2, v0, Lyads/g03;->i:I

    goto/16 :goto_15

    :cond_2a
    iget-object v1, v0, Lyads/g03;->d:Ljava/util/LinkedHashSet;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    iget-object v1, v0, Lyads/g03;->e:Ljava/util/LinkedHashSet;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    iget-object v0, v0, Lyads/g03;->f:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public setAspectRatio(F)V
    .locals 3

    iget-object v0, p0, Lyads/g03;->j:Lyads/hp0;

    sget-object v1, Lyads/g03;->k:[Lze4;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Lyads/hp0;->setValue(Ljava/lang/Object;Lze4;Ljava/lang/Object;)V

    return-void
.end method

.method public setForegroundGravity(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getForegroundGravity()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setForegroundGravity(I)V

    invoke-virtual {p0}, Landroid/view/View;->getForegroundGravity()I

    move-result p1

    const/16 v0, 0x77

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lyads/g03;->c:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lyads/g03;->c:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
