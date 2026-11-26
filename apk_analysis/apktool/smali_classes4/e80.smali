.class public final synthetic Le80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Li80;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Lv80;


# direct methods
.method public synthetic constructor <init>(Li80;Landroid/view/View;Lv80;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le80;->b:Li80;

    iput-object p2, p0, Le80;->c:Landroid/view/View;

    iput-object p3, p0, Le80;->d:Lv80;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Le80;->b:Li80;

    iget-object v3, p0, Le80;->c:Landroid/view/View;

    invoke-virtual {v2, v3}, Li80;->b(Landroid/view/View;)Z

    move-result v4

    iget-object v5, v2, Li80;->e:Landroid/widget/PopupWindow;

    iget-object v6, v2, Li80;->d:Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;

    iget-object v7, v2, Li80;->c:Li80$a;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    if-eqz v8, :cond_16

    iget v4, v7, Li80$a;->x:I

    const/4 v8, 0x1

    iput-boolean v8, v2, Li80;->g:Z

    iget-object v9, v6, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->balloonText:Lcom/skydoves/balloon/vectortext/VectorTextView;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v6, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->balloonCard:Lcom/skydoves/balloon/radius/RadiusLayout;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v9, v10}, Li80;->i(Landroid/widget/TextView;Landroid/view/View;)V

    new-instance v9, Landroid/graphics/Point;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v9, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    iget v9, v9, Landroid/graphics/Point;->x:I

    iget v10, v7, Li80$a;->a:I

    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v12, -0x80000000

    if-eq v10, v12, :cond_2

    if-le v10, v9, :cond_1

    goto :goto_1

    :cond_1
    move v9, v10

    :goto_1
    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    goto :goto_3

    :cond_2
    iget v10, v7, Li80$a;->b:I

    if-le v10, v9, :cond_3

    goto :goto_2

    :cond_3
    move v9, v10

    :goto_2
    invoke-static {v9, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    :goto_3
    new-instance v10, Landroid/graphics/Point;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v13, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v14, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v10, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    iget v10, v10, Landroid/graphics/Point;->y:I

    iget v13, v7, Li80$a;->c:I

    if-eq v13, v12, :cond_4

    invoke-static {v13, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    goto :goto_4

    :cond_4
    invoke-static {v10, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    :goto_4
    invoke-virtual {v6}, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v11

    invoke-virtual {v11, v9, v10}, Landroid/view/View;->measure(II)V

    invoke-virtual {v2}, Li80;->g()I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v2}, Li80;->f()I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v9, v6, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->balloonText:Lcom/skydoves/balloon/vectortext/VectorTextView;

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v11, -0x1

    invoke-direct {v10, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, v6, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->balloonArrow:Landroid/widget/ImageView;

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    iget v11, v7, Li80$a;->h:I

    invoke-direct {v10, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v9, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    iget v0, v7, Li80$a;->l:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {v9, v0}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    sget-object v0, Landroid/view/ViewOutlineProvider;->BOUNDS:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v9, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object v0, v6, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->balloonCard:Lcom/skydoves/balloon/radius/RadiusLayout;

    new-instance v10, Lz70;

    invoke-direct {v10, v2, v3, v9}, Lz70;-><init>(Li80;Landroid/view/View;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v10}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v2}, Li80;->h()V

    iget-object v0, v2, Li80;->f:Landroid/widget/PopupWindow;

    iget-object v9, v7, Li80$a;->u:Lo80;

    sget-object v10, Li80$b;->d:[I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v9, v10, v9

    const v10, 0x7f150021

    if-ne v9, v8, :cond_5

    invoke-virtual {v0, v10}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_5

    :cond_5
    const v9, 0x7f150023

    invoke-virtual {v0, v9}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :goto_5
    iget-object v0, v7, Li80$a;->t:Ll80;

    sget-object v7, Li80$b;->c:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v7, v0

    const/4 v7, 0x3

    const/4 v9, 0x2

    const/4 v11, 0x4

    if-eq v0, v8, :cond_a

    if-eq v0, v9, :cond_9

    if-eq v0, v7, :cond_8

    if-eq v0, v11, :cond_7

    const/4 v10, 0x5

    if-ne v0, v10, :cond_6

    const v0, 0x7f150022

    invoke-virtual {v5, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_6

    :cond_6
    invoke-static {}, Lme0;->e()V

    return-void

    :cond_7
    const v0, 0x7f150025

    invoke-virtual {v5, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_6

    :cond_8
    invoke-virtual {v5, v10}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_6

    :cond_9
    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    new-instance v10, Lh51;

    invoke-direct {v10, v0, v7}, Lh51;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v10}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const v0, 0x7f150024

    invoke-virtual {v5, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_6

    :cond_a
    const v0, 0x7f150020

    invoke-virtual {v5, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :goto_6
    iget-object v0, v6, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->balloon:Landroid/widget/FrameLayout;

    new-instance v6, Lu8;

    invoke-direct {v6, v2, v8}, Lu8;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Le80;->d:Lv80;

    iget-object v0, p0, Lv80;->d:Lt86;

    iget-object v6, p0, Lv80;->c:Lk80;

    iget-object p0, p0, Lv80;->a:Landroid/view/View;

    sget-object v10, Li80$b;->f:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v10, v0

    if-eq v0, v8, :cond_15

    const/high16 v10, 0x3f000000    # 0.5f

    if-eq v0, v9, :cond_10

    if-ne v0, v7, :cond_f

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v10

    invoke-static {v0}, Lw65;->b(F)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v10

    invoke-static {p0}, Lw65;->b(F)I

    move-result p0

    invoke-virtual {v2}, Li80;->g()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v10

    invoke-static {v1}, Lw65;->b(F)I

    move-result v1

    invoke-virtual {v2}, Li80;->f()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v10

    invoke-static {v12}, Lw65;->b(F)I

    move-result v10

    sget-object v12, Li80$b;->g:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v12, v6

    if-eq v6, v8, :cond_e

    if-eq v6, v9, :cond_d

    if-eq v6, v7, :cond_c

    if-ne v6, v11, :cond_b

    mul-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    neg-int v1, v10

    sub-int/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v1, Lb36;

    invoke-direct {v1, v0, p0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_b
    invoke-static {}, Lme0;->e()V

    return-void

    :cond_c
    invoke-virtual {v2}, Li80;->g()I

    move-result v1

    sub-int/2addr v0, v1

    mul-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    neg-int v1, v10

    sub-int/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v1, Lb36;

    invoke-direct {v1, v0, p0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_d
    sub-int/2addr v0, v1

    mul-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    neg-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v1, Lb36;

    invoke-direct {v1, v0, p0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_e
    sub-int/2addr v0, v1

    mul-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2}, Li80;->f()I

    move-result v1

    add-int/2addr v1, p0

    neg-int p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v1, Lb36;

    invoke-direct {v1, v0, p0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_f
    invoke-static {}, Lme0;->e()V

    return-void

    :cond_10
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v10

    invoke-static {v0}, Lw65;->b(F)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v10

    invoke-static {v12}, Lw65;->b(F)I

    move-result v12

    invoke-virtual {v2}, Li80;->g()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v10

    invoke-static {v13}, Lw65;->b(F)I

    move-result v13

    invoke-virtual {v2}, Li80;->f()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v10

    invoke-static {v14}, Lw65;->b(F)I

    move-result v10

    sget-object v14, Li80$b;->g:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v14, v6

    if-eq v6, v8, :cond_14

    if-eq v6, v9, :cond_13

    if-eq v6, v7, :cond_12

    if-ne v6, v11, :cond_11

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    mul-int/2addr p0, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    add-int/2addr v10, v12

    neg-int v0, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lb36;

    invoke-direct {v1, p0, v0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7

    :cond_11
    invoke-static {}, Lme0;->e()V

    return-void

    :cond_12
    invoke-virtual {v2}, Li80;->g()I

    move-result p0

    neg-int p0, p0

    mul-int/2addr p0, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    add-int/2addr v10, v12

    neg-int v0, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lb36;

    invoke-direct {v1, p0, v0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7

    :cond_13
    sub-int/2addr v0, v13

    mul-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v0, Lb36;

    invoke-direct {v0, p0, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v0

    goto :goto_7

    :cond_14
    sub-int/2addr v0, v13

    mul-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2}, Li80;->f()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, v1

    neg-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v1, Lb36;

    invoke-direct {v1, v0, p0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7

    :cond_15
    new-instance p0, Lb36;

    invoke-direct {p0, v1, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, p0

    :goto_7
    iget-object p0, v1, Lb36;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    iget-object v0, v1, Lb36;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr p0, v1

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    invoke-virtual {v5, v3, p0, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    :cond_16
    return-void
.end method
