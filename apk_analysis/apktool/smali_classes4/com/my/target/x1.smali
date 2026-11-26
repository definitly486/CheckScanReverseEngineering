.class public final Lcom/my/target/x1;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/my/target/r2;


# instance fields
.field public final b:Lcom/my/target/zh;

.field public final c:Landroid/widget/TextView;

.field public final d:Landroid/widget/TextView;

.field public final e:Landroid/widget/Button;

.field public final f:Lon9;

.field public final g:Ljava/util/HashSet;

.field public final h:I

.field public i:Lcom/my/target/r2$a;

.field public j:Lh14;

.field public k:Z

.field public l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lev9;Lon9;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v0, Lcom/my/target/x1;->g:Ljava/util/HashSet;

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/my/target/x1;->l:Z

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iput-object v3, v0, Lcom/my/target/x1;->f:Lon9;

    new-instance v6, Lcom/my/target/zh;

    invoke-direct {v6, v1}, Lcom/my/target/zh;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/my/target/x1;->b:Lcom/my/target/zh;

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/my/target/x1;->c:Landroid/widget/TextView;

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lcom/my/target/x1;->d:Landroid/widget/TextView;

    new-instance v9, Landroid/widget/Button;

    invoke-direct {v9, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lcom/my/target/x1;->e:Landroid/widget/Button;

    sget v1, Lon9;->T:I

    iget-object v3, v3, Lon9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    iput v1, v0, Lcom/my/target/x1;->h:I

    sget v1, Lon9;->i:I

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    sget v10, Lon9;->H:I

    invoke-virtual {v3, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    invoke-virtual {v9}, Landroid/widget/TextView;->setSingleLine()V

    sget v12, Lon9;->w:I

    invoke-virtual {v3, v12}, Landroid/util/SparseIntArray;->get(I)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v9, v5, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-object v12, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v13, 0x11

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    invoke-virtual {v9, v1, v4, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x2

    invoke-direct {v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v14, Lon9;->P:I

    invoke-virtual {v3, v14}, Landroid/util/SparseIntArray;->get(I)I

    move-result v15

    iput v15, v13, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v3, v14}, Landroid/util/SparseIntArray;->get(I)I

    move-result v14

    iput v14, v13, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v10, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v5, v13, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v9, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v10, Lon9;->o:I

    invoke-virtual {v3, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    iget v13, v2, Lev9;->a:I

    iget v14, v2, Lev9;->b:I

    invoke-static {v9, v13, v14, v10}, Ll3a;->o(Landroid/widget/Button;III)V

    iget v10, v2, Lev9;->c:I

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    sget v10, Lon9;->Q:I

    invoke-virtual {v3, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v7, v5, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    iget v10, v2, Lev9;->f:I

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    sget v10, Lon9;->O:I

    invoke-virtual {v3, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v13

    invoke-virtual {v3, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v14

    invoke-virtual {v7, v13, v4, v14, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v7, v11, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    sget v11, Lon9;->D:I

    invoke-virtual {v3, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setLines(I)V

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x2

    invoke-direct {v11, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v5, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v1, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v7, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v1, v2, Lev9;->e:I

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    sget v1, Lon9;->E:I

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setLines(I)V

    sget v1, Lon9;->R:I

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v8, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v3, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v3, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v8, v1, v4, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x2

    invoke-direct {v1, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v8, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "card_view"

    invoke-static {v0, v1}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    const-string v1, "card_title_text"

    invoke-static {v7, v1}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    const-string v1, "card_description_text"

    invoke-static {v8, v1}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    const-string v1, "card_cta_button"

    invoke-static {v9, v1}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    const-string v1, "card_image"

    invoke-static {v6, v1}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setClickArea(Lt2a;)V
    .locals 7

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/my/target/x1;->b:Lcom/my/target/zh;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/my/target/x1;->c:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/my/target/x1;->d:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v3, p0, Lcom/my/target/x1;->e:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v4, p0, Lcom/my/target/x1;->g:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    iget-boolean v5, p1, Lt2a;->m:Z

    iget-boolean v6, p1, Lt2a;->o:Z

    if-eqz v5, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/my/target/x1;->k:Z

    return-void

    :cond_0
    iget-boolean v5, p1, Lt2a;->g:Z

    if-eqz v5, :cond_1

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-boolean v3, p1, Lt2a;->l:Z

    if-nez v3, :cond_3

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {v4, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_2
    iget-boolean p0, p1, Lt2a;->a:Z

    if-nez p0, :cond_5

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    :goto_3
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_4
    iget-boolean p0, p1, Lt2a;->b:Z

    if-nez p0, :cond_7

    if-eqz v6, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_7
    :goto_5
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_6
    iget-boolean p0, p1, Lt2a;->d:Z

    if-nez p0, :cond_9

    if-eqz v6, :cond_8

    goto :goto_7

    :cond_8
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_9
    :goto_7
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final onMeasure(II)V
    .locals 5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/my/target/x1;->b:Lcom/my/target/zh;

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->measure(II)V

    iget-object v3, p0, Lcom/my/target/x1;->c:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->measure(II)V

    :cond_0
    iget-object v3, p0, Lcom/my/target/x1;->d:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->measure(II)V

    :cond_1
    iget-object p1, p0, Lcom/my/target/x1;->e:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    sget v3, Lon9;->P:I

    iget-object v4, p0, Lcom/my/target/x1;->f:Lon9;

    iget-object v4, v4, Lon9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr p2, v3

    iget v3, p0, Lcom/my/target/x1;->h:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {p1, p2, v3, v4}, Ll3a;->i(Landroid/view/View;III)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    if-lez p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    if-lez p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    if-le v0, v1, :cond_4

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, p2

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge p2, v1, :cond_5

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v1

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    iget-boolean v0, p0, Lcom/my/target/x1;->l:Z

    const v1, -0xcccccd

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/my/target/x1;->e:Landroid/widget/Button;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/my/target/x1;->g:Ljava/util/HashSet;

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_a

    if-eq v0, v6, :cond_1

    if-eq v0, v2, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setPressed(Z)V

    return v6

    :cond_1
    invoke-virtual {p0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setPressed(Z)V

    iget-object v0, p0, Lcom/my/target/x1;->i:Lcom/my/target/r2$a;

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/my/target/x1;->k:Z

    if-eqz v0, :cond_2

    move v0, v6

    if-ne p1, v3, :cond_3

    goto :goto_0

    :cond_2
    invoke-virtual {v7, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-ne p1, v3, :cond_3

    :goto_0
    move v1, v5

    goto :goto_1

    :cond_3
    move v1, v6

    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v6, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v8, v8

    new-array v9, v5, [I

    invoke-virtual {p1, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v4, v9, v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    div-float/2addr v4, v7

    aget v2, v9, v6

    int-to-float v2, v2

    add-float/2addr v2, p2

    div-float/2addr v2, v8

    new-instance p2, Lo6a;

    invoke-direct {p2, v4, v2}, Lo6a;-><init>(FF)V

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    if-nez p2, :cond_5

    new-instance p2, Ld6a;

    invoke-direct {p2}, Le6a;-><init>()V

    :cond_5
    if-ne p1, v3, :cond_6

    const/16 v5, 0x40

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/my/target/x1;->c:Landroid/widget/TextView;

    if-ne p1, v2, :cond_7

    move v5, v6

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/my/target/x1;->d:Landroid/widget/TextView;

    if-ne p1, v2, :cond_8

    goto :goto_3

    :cond_8
    iget-object v2, p0, Lcom/my/target/x1;->b:Lcom/my/target/zh;

    if-ne p1, v2, :cond_9

    const/16 v5, 0x8

    goto :goto_3

    :cond_9
    const/16 v5, 0x800

    :goto_3
    new-instance p1, Lup9;

    invoke-direct {p1, v5, p2}, Lup9;-><init>(ILe6a;)V

    iget-object p0, p0, Lcom/my/target/x1;->i:Lcom/my/target/r2$a;

    if-eqz p0, :cond_14

    check-cast p0, Lcom/my/target/n2;

    invoke-virtual {p0, v0, v1, p1}, Lcom/my/target/n2;->c(ZILpfa;)V

    return v6

    :cond_a
    iget-boolean p2, p0, Lcom/my/target/x1;->k:Z

    if-nez p2, :cond_b

    invoke-virtual {v7, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_14

    :cond_b
    if-ne p1, v3, :cond_c

    invoke-virtual {v3, v6}, Landroid/view/View;->setPressed(Z)V

    return v6

    :cond_c
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return v6

    :cond_d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_13

    if-eq p2, v6, :cond_f

    if-eq p2, v2, :cond_e

    goto :goto_5

    :cond_e
    invoke-virtual {p0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setPressed(Z)V

    return v6

    :cond_f
    invoke-virtual {p0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setPressed(Z)V

    iget-object p2, p0, Lcom/my/target/x1;->i:Lcom/my/target/r2$a;

    if-eqz p2, :cond_14

    iget-boolean p2, p0, Lcom/my/target/x1;->k:Z

    if-eqz p2, :cond_11

    move p2, v6

    if-ne p1, v3, :cond_10

    goto :goto_4

    :cond_10
    move v5, p2

    goto :goto_4

    :cond_11
    invoke-virtual {v7, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    if-ne p1, v3, :cond_12

    goto :goto_4

    :cond_12
    move v5, v6

    :goto_4
    iget-object p0, p0, Lcom/my/target/x1;->i:Lcom/my/target/r2$a;

    new-instance p1, Lgia;

    invoke-direct {p1}, Lgia;-><init>()V

    check-cast p0, Lcom/my/target/n2;

    invoke-virtual {p0, p2, v5, p1}, Lcom/my/target/n2;->c(ZILpfa;)V

    return v6

    :cond_13
    iget-boolean p2, p0, Lcom/my/target/x1;->k:Z

    if-nez p2, :cond_15

    invoke-virtual {v7, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_14

    goto :goto_6

    :cond_14
    :goto_5
    return v6

    :cond_15
    :goto_6
    if-ne p1, v3, :cond_16

    invoke-virtual {v3, v6}, Landroid/view/View;->setPressed(Z)V

    return v6

    :cond_16
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return v6
.end method

.method public setBanner(Lfo9;)V
    .locals 8

    iget-object v0, p0, Lcom/my/target/x1;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/x1;->e:Landroid/widget/Button;

    iget-object v2, p0, Lcom/my/target/x1;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/my/target/x1;->b:Lcom/my/target/zh;

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz p1, :cond_2

    iget-object v6, p1, Lao9;->Q:Lpp9;

    iget-boolean v6, v6, Lpp9;->c:Z

    iput-boolean v6, p0, Lcom/my/target/x1;->l:Z

    iget-object v6, p1, Lao9;->p:Lh14;

    iput-object v6, p0, Lcom/my/target/x1;->j:Lh14;

    if-eqz v6, :cond_0

    iget v7, v6, Lxha;->b:I

    iget v6, v6, Lxha;->c:I

    invoke-virtual {v3, v7, v6}, Lcom/my/target/zh;->setPlaceholderDimensions(II)V

    iget-object v6, p0, Lcom/my/target/x1;->j:Lh14;

    invoke-static {v6, v3}, Ls0a;->c(Lh14;Lcom/my/target/zh;)V

    :cond_0
    iget-boolean v3, p1, Lfo9;->R:Z

    if-eqz v3, :cond_1

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p1, Lao9;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lao9;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lao9;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p1, p1, Lao9;->r:Lt2a;

    invoke-direct {p0, p1}, Lcom/my/target/x1;->setClickArea(Lt2a;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/my/target/x1;->g:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    iget-object p0, p0, Lcom/my/target/x1;->j:Lh14;

    if-eqz p0, :cond_4

    sget-object p1, Ls0a;->c:Ljava/util/WeakHashMap;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    if-eq p1, v6, :cond_3

    const-string p0, "ImageLoaderUtils: Method cancel called from worker thread"

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ly14;->u(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget-object p1, Ls0a;->c:Ljava/util/WeakHashMap;

    invoke-virtual {p1, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p0, :cond_4

    invoke-virtual {p1, v3}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    invoke-virtual {v3, v4, v4}, Lcom/my/target/zh;->setPlaceholderDimensions(II)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setListener(Lcom/my/target/r2$a;)V
    .locals 0

    iput-object p1, p0, Lcom/my/target/x1;->i:Lcom/my/target/r2$a;

    return-void
.end method
