.class public final Lyads/i44;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field public final a:Lyads/ip0;

.field public final b:Landroid/widget/FrameLayout;

.field public final c:Landroid/widget/ImageView;

.field public final d:Landroid/widget/TextView;

.field public final e:Landroid/widget/ImageView;

.field public final f:Landroid/widget/Button;

.field public final g:Landroid/widget/TextView;

.field public final h:Landroid/widget/ImageView;

.field public final i:Landroid/widget/TextView;

.field public final j:Landroid/widget/TextView;

.field public final k:Landroid/widget/TextView;

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v2, Lyads/ip0;

    invoke-direct {v2}, Lyads/ip0;-><init>()V

    iput-object v2, v0, Lyads/i44;->a:Lyads/ip0;

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v5, v6}, Lyads/ip0;->a(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setClipToOutline(Z)V

    iput-object v2, v0, Lyads/i44;->b:Landroid/widget/FrameLayout;

    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setId(I)V

    invoke-virtual {v5, v4}, Landroid/view/View;->setBackgroundColor(I)V

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iput-object v5, v0, Lyads/i44;->c:Landroid/widget/ImageView;

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setId(I)V

    const/4 v8, 0x2

    const/high16 v9, 0x41300000    # 11.0f

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v6}, Lyads/ip0;->a(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lyads/ip0;->a(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v6}, Lyads/ip0;->a(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v12}, Lyads/ip0;->a(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {v7, v10, v11, v6, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v6, 0x11

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    new-instance v10, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v11, 0xd8

    const/16 v12, 0xd3

    invoke-static {v11, v12, v12, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v11, 0x40a00000    # 5.0f

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v11}, Lyads/ip0;->a(Landroid/content/Context;F)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v7, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v10, 0x4479c000    # 999.0f

    invoke-virtual {v7, v10}, Landroid/view/View;->setElevation(F)V

    const/16 v10, 0x8

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    iput-object v7, v0, Lyads/i44;->d:Landroid/widget/TextView;

    new-instance v11, Landroid/widget/ImageView;

    invoke-direct {v11, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/view/View;->setId(I)V

    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iput-object v11, v0, Lyads/i44;->e:Landroid/widget/ImageView;

    new-instance v12, Landroid/widget/Button;

    const v13, 0x101032b

    const/4 v14, 0x0

    invoke-direct {v12, v1, v14, v13}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/view/View;->setId(I)V

    const/high16 v13, 0x41400000    # 12.0f

    invoke-virtual {v12, v8, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    const v15, -0xff8501

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v12, v14, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v6, 0x0

    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setAllCaps(Z)V

    invoke-virtual {v12, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setMinWidth(I)V

    invoke-virtual {v12, v6}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setMinHeight(I)V

    invoke-virtual {v12, v6}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    iput-object v12, v0, Lyads/i44;->f:Landroid/widget/Button;

    new-instance v14, Landroid/widget/TextView;

    invoke-direct {v14, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v13

    invoke-virtual {v14, v13}, Landroid/view/View;->setId(I)V

    const/high16 v13, 0x41200000    # 10.0f

    invoke-virtual {v14, v8, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    const v13, -0x71716d

    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v14, v10}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    iput-object v14, v0, Lyads/i44;->g:Landroid/widget/TextView;

    new-instance v13, Landroid/widget/ImageView;

    invoke-direct {v13, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v6

    invoke-virtual {v13, v6}, Landroid/view/View;->setId(I)V

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v13, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v13, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iput-object v13, v0, Lyads/i44;->h:Landroid/widget/ImageView;

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/view/View;->setId(I)V

    invoke-virtual {v6, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    iput-object v6, v0, Lyads/i44;->i:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/view/View;->setId(I)V

    const/high16 v9, 0x41400000    # 12.0f

    invoke-virtual {v3, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v3, v10, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const v4, 0x800033

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    iput-object v3, v0, Lyads/i44;->j:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/view/View;->setId(I)V

    const/high16 v9, 0x41400000    # 12.0f

    invoke-virtual {v4, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    const v1, -0x71716d

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v1, 0x8

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const v1, 0x800013

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setGravity(I)V

    iput-object v4, v0, Lyads/i44;->k:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const/high16 v8, 0x42480000    # 50.0f

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v8}, Lyads/ip0;->a(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    return p0
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance p0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 10
    new-instance p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public final onLayout(ZIIII)V
    .locals 6

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    iget-object p1, p0, Lyads/i44;->b:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lyads/i44;->a:Lyads/ip0;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p0, p2, p3}, Lyads/h44;->a(Lyads/i44;Lyads/ip0;F)I

    move-result p2

    iget-object v0, p0, Lyads/i44;->a:Lyads/ip0;

    invoke-static {p0, v0, p3}, Lyads/h44;->a(Lyads/i44;Lyads/ip0;F)I

    move-result v0

    iget-object v1, p0, Lyads/i44;->a:Lyads/ip0;

    invoke-static {p0, v1, p3}, Lyads/h44;->a(Lyads/i44;Lyads/ip0;F)I

    move-result v1

    iget v2, p0, Lyads/i44;->l:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lyads/i44;->a:Lyads/ip0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, p3}, Lyads/ip0;->a(Landroid/content/Context;F)I

    move-result v2

    sub-int v2, p5, v2

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    iget-boolean p1, p0, Lyads/i44;->u:Z

    const/high16 p2, 0x40800000    # 4.0f

    if-eqz p1, :cond_0

    iget-object p1, p0, Lyads/i44;->e:Landroid/widget/ImageView;

    iget-object v0, p0, Lyads/i44;->a:Lyads/ip0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p2}, Lyads/ip0;->a(Landroid/content/Context;F)I

    move-result v0

    sub-int v0, p4, v0

    iget-object v1, p0, Lyads/i44;->e:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lyads/i44;->a:Lyads/ip0;

    invoke-static {p0, v1, p2}, Lyads/h44;->a(Lyads/i44;Lyads/ip0;F)I

    move-result v1

    iget-object v2, p0, Lyads/i44;->a:Lyads/ip0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, p2}, Lyads/ip0;->a(Landroid/content/Context;F)I

    move-result v2

    sub-int v2, p4, v2

    iget-object v3, p0, Lyads/i44;->a:Lyads/ip0;

    invoke-static {p0, v3, p2}, Lyads/h44;->a(Lyads/i44;Lyads/ip0;F)I

    move-result v3

    iget-object v4, p0, Lyads/i44;->e:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/view/View;->layout(IIII)V

    :cond_0
    div-int/lit8 p1, p5, 0x2

    iget-object v0, p0, Lyads/i44;->a:Lyads/ip0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p2}, Lyads/ip0;->a(Landroid/content/Context;F)I

    move-result v0

    add-int/2addr v0, p1

    iget-object p1, p0, Lyads/i44;->f:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr v0, p1

    iget-object p1, p0, Lyads/i44;->a:Lyads/ip0;

    invoke-static {p0, p1, p3}, Lyads/h44;->a(Lyads/i44;Lyads/ip0;F)I

    move-result p1

    iget-object v1, p0, Lyads/i44;->f:Landroid/widget/Button;

    sub-int p1, p4, p1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v2, p1, v2

    iget-object v3, p0, Lyads/i44;->f:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, p1, v3}, Landroid/view/View;->layout(IIII)V

    iget-boolean p1, p0, Lyads/i44;->v:Z

    const/high16 v0, 0x40400000    # 3.0f

    if-eqz p1, :cond_1

    iget-object p1, p0, Lyads/i44;->g:Landroid/widget/TextView;

    iget v1, p0, Lyads/i44;->m:I

    iget-object v2, p0, Lyads/i44;->a:Lyads/ip0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v0}, Lyads/ip0;->a(Landroid/content/Context;F)I

    move-result v2

    add-int/2addr v2, v1

    iget-object v1, p0, Lyads/i44;->g:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v1, p5, v1

    iget-object v3, p0, Lyads/i44;->a:Lyads/ip0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, p3}, Lyads/ip0;->a(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lyads/i44;->a:Lyads/ip0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, p3}, Lyads/ip0;->a(Landroid/content/Context;F)I

    move-result p3

    sub-int p3, p5, p3

    invoke-virtual {p1, v2, v1, p4, p3}, Landroid/view/View;->layout(IIII)V

    :cond_1
    iget-boolean p1, p0, Lyads/i44;->w:Z

    const/4 p3, 0x0

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lyads/i44;->x:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lyads/i44;->h:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object p4, p0, Lyads/i44;->a:Lyads/ip0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0}, Lyads/ip0;->a(Landroid/content/Context;F)I

    move-result p4

    add-int/2addr p4, p1

    goto :goto_0

    :cond_2
    move p4, p3

    :goto_0
    iget-boolean p1, p0, Lyads/i44;->x:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lyads/i44;->h:Landroid/widget/ImageView;

    iget v1, p0, Lyads/i44;->m:I

    iget-object v2, p0, Lyads/i44;->a:Lyads/ip0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, p2}, Lyads/ip0;->a(Landroid/content/Context;F)I

    move-result v2

    add-int/2addr v2, v1

    iget v1, p0, Lyads/i44;->p:I

    iget v3, p0, Lyads/i44;->m:I

    iget-object v4, p0, Lyads/i44;->a:Lyads/ip0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, p2}, Lyads/ip0;->a(Landroid/content/Context;F)I

    move-result v4

    add-int/2addr v4, v3

    iget-object v3, p0, Lyads/i44;->h:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v4

    iget v4, p0, Lyads/i44;->p:I

    iget-object v5, p0, Lyads/i44;->h:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p1, v2, v1, v3, v5}, Landroid/view/View;->layout(IIII)V

    :cond_3
    iget-object p1, p0, Lyads/i44;->i:Landroid/widget/TextView;

    iget v1, p0, Lyads/i44;->m:I

    iget-object v2, p0, Lyads/i44;->a:Lyads/ip0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, p2}, Lyads/ip0;->a(Landroid/content/Context;F)I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v2, p4

    iget v1, p0, Lyads/i44;->p:I

    iget v3, p0, Lyads/i44;->m:I

    iget-object v4, p0, Lyads/i44;->a:Lyads/ip0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, p2}, Lyads/ip0;->a(Landroid/content/Context;F)I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v4, p4

    iget-object p4, p0, Lyads/i44;->i:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, v4

    iget v3, p0, Lyads/i44;->p:I

    iget-object v4, p0, Lyads/i44;->i:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p1, v2, v1, p4, v4}, Landroid/view/View;->layout(IIII)V

    :cond_4
    iget p1, p0, Lyads/i44;->p:I

    iget-boolean p4, p0, Lyads/i44;->w:Z

    if-eqz p4, :cond_5

    iget p4, p0, Lyads/i44;->t:I

    goto :goto_1

    :cond_5
    move p4, p3

    :goto_1
    add-int/2addr p1, p4

    iget-object p4, p0, Lyads/i44;->j:Landroid/widget/TextView;

    iget v1, p0, Lyads/i44;->m:I

    iget-object v2, p0, Lyads/i44;->a:Lyads/ip0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, p2}, Lyads/ip0;->a(Landroid/content/Context;F)I

    move-result v2

    add-int/2addr v2, v1

    iget v1, p0, Lyads/i44;->m:I

    iget-object v3, p0, Lyads/i44;->a:Lyads/ip0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, p2}, Lyads/ip0;->a(Landroid/content/Context;F)I

    move-result v3

    add-int/2addr v3, v1

    iget-object v1, p0, Lyads/i44;->j:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v3

    iget-object v3, p0, Lyads/i44;->j:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {p4, v2, p1, v1, v3}, Landroid/view/View;->layout(IIII)V

    iget-object p4, p0, Lyads/i44;->j:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p4, p1

    iget-boolean p1, p0, Lyads/i44;->y:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lyads/i44;->k:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_9

    iget p1, p0, Lyads/i44;->r:I

    add-int/2addr p4, p1

    iget-boolean p1, p0, Lyads/i44;->v:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lyads/i44;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p5, p1

    iget p1, p0, Lyads/i44;->s:I

    :goto_2
    sub-int/2addr p5, p1

    goto :goto_3

    :cond_6
    iget p1, p0, Lyads/i44;->s:I

    goto :goto_2

    :goto_3
    iget-object p1, p0, Lyads/i44;->k:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p5, p4

    if-gez p5, :cond_7

    goto :goto_4

    :cond_7
    move p3, p5

    :goto_4
    int-to-float p5, p4

    sub-int/2addr p3, p1

    int-to-float p3, p3

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p3, v1

    add-float/2addr p3, p5

    float-to-int p3, p3

    if-ge p3, p4, :cond_8

    goto :goto_5

    :cond_8
    move p4, p3

    :goto_5
    iget p3, p0, Lyads/i44;->m:I

    iget-object p5, p0, Lyads/i44;->a:Lyads/ip0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p2}, Lyads/ip0;->a(Landroid/content/Context;F)I

    move-result p2

    add-int/2addr p2, p3

    iget-object p3, p0, Lyads/i44;->k:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p5, p2

    add-int/2addr p1, p4

    invoke-virtual {p3, p2, p4, p5, p1}, Landroid/view/View;->layout(IIII)V

    :cond_9
    iget-object p1, p0, Lyads/i44;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object p2, p0, Lyads/i44;->b:Landroid/widget/FrameLayout;

    invoke-static {p1, p2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lyads/i44;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lyads/i44;->l:I

    iget-object p3, p0, Lyads/i44;->a:Lyads/ip0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 p3, 0x40c00000    # 6.0f

    invoke-static {p4, p3}, Lyads/ip0;->a(Landroid/content/Context;F)I

    move-result p3

    sub-int/2addr p2, p3

    if-le p1, p2, :cond_a

    move p1, p2

    :cond_a
    iget-object p2, p0, Lyads/i44;->d:Landroid/widget/TextView;

    iget-object p3, p0, Lyads/i44;->a:Lyads/ip0;

    invoke-static {p0, p3, v0}, Lyads/h44;->a(Lyads/i44;Lyads/ip0;F)I

    move-result p3

    iget-object p4, p0, Lyads/i44;->a:Lyads/ip0;

    invoke-static {p0, p4, v0}, Lyads/h44;->a(Lyads/i44;Lyads/ip0;F)I

    move-result p4

    iget-object p5, p0, Lyads/i44;->a:Lyads/ip0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0}, Lyads/ip0;->a(Landroid/content/Context;F)I

    move-result p5

    add-int/2addr p5, p1

    iget-object p1, p0, Lyads/i44;->a:Lyads/ip0;

    invoke-static {p0, p1, v0}, Lyads/h44;->a(Lyads/i44;Lyads/ip0;F)I

    move-result p1

    iget-object p0, p0, Lyads/i44;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, p1

    invoke-virtual {p2, p3, p4, p5, p0}, Landroid/view/View;->layout(IIII)V

    :cond_b
    return-void
.end method

.method public final onMeasure(II)V
    .locals 18

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/high16 v4, 0x43a00000    # 320.0f

    if-gtz v1, :cond_0

    iget-object v1, v0, Lyads/i44;->a:Lyads/ip0;

    invoke-static {v0, v1, v4}, Lyads/h44;->a(Lyads/i44;Lyads/ip0;F)I

    move-result v1

    :cond_0
    const/high16 v5, 0x42480000    # 50.0f

    const/high16 v6, 0x40000000    # 2.0f

    if-gtz v2, :cond_2

    iget-object v2, v0, Lyads/i44;->a:Lyads/ip0;

    invoke-static {v0, v2, v4}, Lyads/h44;->a(Lyads/i44;Lyads/ip0;F)I

    move-result v2

    if-lt v1, v2, :cond_1

    if-eq v3, v6, :cond_1

    const/high16 v2, 0x437a0000    # 250.0f

    iget-object v3, v0, Lyads/i44;->a:Lyads/ip0;

    invoke-static {v0, v3, v2}, Lyads/h44;->a(Lyads/i44;Lyads/ip0;F)I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lyads/i44;->a:Lyads/ip0;

    invoke-static {v0, v2, v5}, Lyads/h44;->a(Lyads/i44;Lyads/ip0;F)I

    move-result v2

    :cond_2
    :goto_0
    int-to-float v3, v2

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    div-float v7, v3, v7

    int-to-float v8, v1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    div-float v9, v8, v9

    const/high16 v10, 0x43340000    # 180.0f

    cmpl-float v7, v7, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-lez v7, :cond_3

    move v7, v10

    goto :goto_1

    :cond_3
    move v7, v11

    :goto_1
    cmpg-float v4, v9, v4

    if-gez v4, :cond_4

    move v4, v10

    goto :goto_2

    :cond_4
    move v4, v11

    :goto_2
    const/high16 v9, 0x40000000    # 2.0f

    if-eqz v7, :cond_6

    if-eqz v4, :cond_5

    const v4, 0x3ed70a3d    # 0.42f

    goto :goto_3

    :cond_5
    const v4, 0x3ef5c28f    # 0.48f

    :goto_3
    mul-float/2addr v8, v4

    float-to-int v4, v8

    goto :goto_4

    :cond_6
    iget-object v4, v0, Lyads/i44;->a:Lyads/ip0;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v9}, Lyads/ip0;->a(Landroid/content/Context;F)I

    move-result v4

    sub-int v4, v2, v4

    if-gez v4, :cond_7

    move v4, v11

    :cond_7
    :goto_4
    iput v4, v0, Lyads/i44;->l:I

    iget-object v7, v0, Lyads/i44;->a:Lyads/ip0;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v8, v7}, Lyads/ip0;->a(Landroid/content/Context;F)I

    move-result v8

    add-int/2addr v8, v4

    iput v8, v0, Lyads/i44;->m:I

    iput v1, v0, Lyads/i44;->n:I

    iput v2, v0, Lyads/i44;->o:I

    iget-object v4, v0, Lyads/i44;->a:Lyads/ip0;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v9}, Lyads/ip0;->a(Landroid/content/Context;F)I

    move-result v4

    sub-int/2addr v2, v4

    if-gez v2, :cond_8

    move v2, v11

    :cond_8
    iget-object v4, v0, Lyads/i44;->b:Landroid/widget/FrameLayout;

    iget v8, v0, Lyads/i44;->l:I

    invoke-static {v8, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v4, v8, v2}, Landroid/view/View;->measure(II)V

    iget-object v2, v0, Lyads/i44;->a:Lyads/ip0;

    const/high16 v4, 0x41700000    # 15.0f

    invoke-static {v0, v2, v4}, Lyads/h44;->a(Lyads/i44;Lyads/ip0;F)I

    move-result v2

    iget-object v8, v0, Lyads/i44;->e:Landroid/widget/ImageView;

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v8, v12, v2}, Landroid/view/View;->measure(II)V

    const/high16 v2, 0x42a80000    # 84.0f

    iget-object v8, v0, Lyads/i44;->a:Lyads/ip0;

    invoke-static {v0, v8, v2}, Lyads/h44;->a(Lyads/i44;Lyads/ip0;F)I

    move-result v2

    iget v8, v0, Lyads/i44;->m:I

    sub-int v8, v1, v8

    iget-object v12, v0, Lyads/i44;->a:Lyads/ip0;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13, v9}, Lyads/ip0;->a(Landroid/content/Context;F)I

    move-result v12

    sub-int/2addr v8, v12

    if-gez v8, :cond_9

    move v8, v11

    :cond_9
    iget-object v12, v0, Lyads/i44;->f:Landroid/widget/Button;

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v8, -0x80000000

    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v11, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v12, v2, v13}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v2

    const/high16 v2, 0x42a00000    # 80.0f

    cmpl-float v3, v3, v2

    const/high16 v12, 0x41400000    # 12.0f

    if-ltz v3, :cond_a

    const/high16 v13, 0x41c00000    # 24.0f

    goto :goto_5

    :cond_a
    move v13, v12

    :goto_5
    iget-object v14, v0, Lyads/i44;->a:Lyads/ip0;

    invoke-static {v0, v14, v13}, Lyads/h44;->a(Lyads/i44;Lyads/ip0;F)I

    move-result v13

    if-ltz v3, :cond_b

    const/4 v3, 0x2

    goto :goto_6

    :cond_b
    move v3, v10

    :goto_6
    iget-object v15, v0, Lyads/i44;->g:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getMaxLines()I

    move-result v15

    if-eq v15, v3, :cond_c

    iget-object v15, v0, Lyads/i44;->g:Landroid/widget/TextView;

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_c
    iget v3, v0, Lyads/i44;->m:I

    sub-int/2addr v1, v3

    iget-object v3, v0, Lyads/i44;->a:Lyads/ip0;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v15, v3}, Lyads/ip0;->a(Landroid/content/Context;F)I

    move-result v15

    sub-int/2addr v1, v15

    if-gez v1, :cond_d

    move v1, v11

    :cond_d
    iget-object v15, v0, Lyads/i44;->g:Landroid/widget/TextView;

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v13, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v15, v1, v13}, Landroid/view/View;->measure(II)V

    iget-object v1, v0, Lyads/i44;->f:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v13, v0, Lyads/i44;->n:I

    iget v15, v0, Lyads/i44;->o:I

    int-to-float v15, v15

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    move/from16 v17, v2

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v15, v2

    iget-object v2, v0, Lyads/i44;->a:Lyads/ip0;

    invoke-static {v0, v2, v12}, Lyads/h44;->a(Lyads/i44;Lyads/ip0;F)I

    move-result v2

    iget-object v12, v0, Lyads/i44;->h:Landroid/widget/ImageView;

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v12, v14, v5}, Landroid/view/View;->measure(II)V

    iget-object v5, v0, Lyads/i44;->a:Lyads/ip0;

    invoke-static {v0, v5, v4}, Lyads/h44;->a(Lyads/i44;Lyads/ip0;F)I

    move-result v4

    iget-boolean v5, v0, Lyads/i44;->x:Z

    if-eqz v5, :cond_e

    iget-object v5, v0, Lyads/i44;->a:Lyads/ip0;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12, v3}, Lyads/ip0;->a(Landroid/content/Context;F)I

    move-result v5

    add-int/2addr v5, v2

    goto :goto_7

    :cond_e
    move v5, v11

    :goto_7
    iget-boolean v2, v0, Lyads/i44;->u:Z

    const/high16 v12, 0x40800000    # 4.0f

    if-eqz v2, :cond_f

    iget-object v2, v0, Lyads/i44;->a:Lyads/ip0;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14, v12}, Lyads/ip0;->a(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v13, v2

    sub-int/2addr v13, v4

    :cond_f
    const/high16 v2, 0x42700000    # 60.0f

    cmpg-float v4, v15, v2

    if-gez v4, :cond_10

    move v4, v10

    goto :goto_8

    :cond_10
    const/4 v4, 0x2

    :goto_8
    iget-object v14, v0, Lyads/i44;->i:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getMaxLines()I

    move-result v14

    if-eq v14, v4, :cond_11

    iget-object v14, v0, Lyads/i44;->i:Landroid/widget/TextView;

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_11
    iget-object v4, v0, Lyads/i44;->i:Landroid/widget/TextView;

    iget v14, v0, Lyads/i44;->m:I

    sub-int/2addr v13, v14

    iget-object v14, v0, Lyads/i44;->a:Lyads/ip0;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v15, v12}, Lyads/ip0;->a(Landroid/content/Context;F)I

    move-result v14

    sub-int/2addr v13, v14

    sub-int/2addr v13, v5

    if-gez v13, :cond_12

    move v13, v11

    :cond_12
    invoke-static {v13, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v11, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v4, v5, v13}, Landroid/view/View;->measure(II)V

    iget v4, v0, Lyads/i44;->o:I

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v4, v5

    cmpg-float v4, v4, v2

    if-gez v4, :cond_13

    move v4, v10

    goto :goto_9

    :cond_13
    move v4, v11

    :goto_9
    if-eqz v4, :cond_14

    iget-object v5, v0, Lyads/i44;->a:Lyads/ip0;

    invoke-static {v0, v5, v7}, Lyads/h44;->a(Lyads/i44;Lyads/ip0;F)I

    move-result v5

    goto :goto_a

    :cond_14
    iget-boolean v5, v0, Lyads/i44;->w:Z

    iget-object v13, v0, Lyads/i44;->a:Lyads/ip0;

    if-eqz v5, :cond_15

    invoke-static {v0, v13, v12}, Lyads/h44;->a(Lyads/i44;Lyads/ip0;F)I

    move-result v5

    goto :goto_a

    :cond_15
    invoke-static {v0, v13, v9}, Lyads/h44;->a(Lyads/i44;Lyads/ip0;F)I

    move-result v5

    :goto_a
    iput v5, v0, Lyads/i44;->p:I

    if-eqz v4, :cond_16

    move v5, v7

    goto :goto_b

    :cond_16
    move v5, v9

    :goto_b
    iget-object v13, v0, Lyads/i44;->a:Lyads/ip0;

    invoke-static {v0, v13, v5}, Lyads/h44;->a(Lyads/i44;Lyads/ip0;F)I

    move-result v5

    iput v5, v0, Lyads/i44;->q:I

    if-eqz v4, :cond_17

    move v9, v7

    :cond_17
    iget-object v5, v0, Lyads/i44;->a:Lyads/ip0;

    invoke-static {v0, v5, v9}, Lyads/h44;->a(Lyads/i44;Lyads/ip0;F)I

    move-result v5

    iput v5, v0, Lyads/i44;->r:I

    if-eqz v4, :cond_18

    move v3, v7

    :cond_18
    iget-object v5, v0, Lyads/i44;->a:Lyads/ip0;

    invoke-static {v0, v5, v3}, Lyads/h44;->a(Lyads/i44;Lyads/ip0;F)I

    move-result v3

    iput v3, v0, Lyads/i44;->s:I

    iget-boolean v3, v0, Lyads/i44;->w:Z

    if-eqz v3, :cond_1a

    if-eqz v4, :cond_19

    iget-object v3, v0, Lyads/i44;->i:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    goto :goto_c

    :cond_19
    iget-object v3, v0, Lyads/i44;->h:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget-object v4, v0, Lyads/i44;->i:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_c
    iget v4, v0, Lyads/i44;->q:I

    add-int/2addr v3, v4

    goto :goto_d

    :cond_1a
    move v3, v11

    :goto_d
    iput v3, v0, Lyads/i44;->t:I

    iget v3, v0, Lyads/i44;->n:I

    iget v4, v0, Lyads/i44;->o:I

    int-to-float v5, v4

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v5, v9

    iget-object v9, v0, Lyads/i44;->a:Lyads/ip0;

    invoke-static {v0, v9, v7}, Lyads/h44;->a(Lyads/i44;Lyads/ip0;F)I

    move-result v7

    iget v9, v0, Lyads/i44;->m:I

    sub-int/2addr v3, v9

    iget-object v9, v0, Lyads/i44;->a:Lyads/ip0;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13, v12}, Lyads/ip0;->a(Landroid/content/Context;F)I

    move-result v9

    sub-int/2addr v3, v9

    sub-int/2addr v3, v1

    sub-int/2addr v3, v7

    if-gez v3, :cond_1b

    move v3, v11

    :cond_1b
    iget-boolean v1, v0, Lyads/i44;->v:Z

    if-eqz v1, :cond_1c

    iget-object v1, v0, Lyads/i44;->g:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_e

    :cond_1c
    move v1, v11

    :goto_e
    iget v7, v0, Lyads/i44;->p:I

    iget v9, v0, Lyads/i44;->t:I

    add-int/2addr v7, v9

    iget-boolean v9, v0, Lyads/i44;->v:Z

    iget v12, v0, Lyads/i44;->s:I

    if-eqz v9, :cond_1d

    sub-int/2addr v4, v1

    :cond_1d
    sub-int/2addr v4, v12

    sub-int/2addr v4, v7

    if-gez v4, :cond_1e

    move v4, v11

    :cond_1e
    iget-object v1, v0, Lyads/i44;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, v0, Lyads/i44;->k:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMaxLines()I

    move-result v1

    if-eq v1, v10, :cond_1f

    iget-object v1, v0, Lyads/i44;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_1f
    iget-object v1, v0, Lyads/i44;->k:Landroid/widget/TextView;

    if-gez v3, :cond_20

    move v7, v11

    goto :goto_f

    :cond_20
    move v7, v3

    :goto_f
    invoke-static {v7, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v11, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v1, v7, v9}, Landroid/view/View;->measure(II)V

    iget-object v1, v0, Lyads/i44;->k:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v7, v0, Lyads/i44;->j:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMaxLines()I

    move-result v7

    if-eq v7, v10, :cond_21

    iget-object v7, v0, Lyads/i44;->j:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_21
    iget-object v7, v0, Lyads/i44;->j:Landroid/widget/TextView;

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-static {v11, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v7, v9, v12}, Landroid/view/View;->measure(II)V

    iget-object v7, v0, Lyads/i44;->j:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iget-boolean v9, v0, Lyads/i44;->y:Z

    if-eqz v9, :cond_22

    iget v9, v0, Lyads/i44;->r:I

    add-int/2addr v9, v1

    goto :goto_10

    :cond_22
    move v9, v11

    :goto_10
    sub-int v9, v4, v9

    if-ge v9, v7, :cond_23

    goto :goto_11

    :cond_23
    move v7, v9

    :goto_11
    cmpl-float v9, v5, v17

    if-ltz v9, :cond_24

    const/4 v14, 0x3

    goto :goto_12

    :cond_24
    cmpl-float v2, v5, v2

    if-ltz v2, :cond_25

    const/4 v14, 0x2

    goto :goto_12

    :cond_25
    move v14, v10

    :goto_12
    iget-object v2, v0, Lyads/i44;->j:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMaxLines()I

    move-result v2

    if-eq v2, v14, :cond_26

    iget-object v2, v0, Lyads/i44;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_26
    iget-object v2, v0, Lyads/i44;->j:Landroid/widget/TextView;

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v2, v5, v7}, Landroid/view/View;->measure(II)V

    iget-object v2, v0, Lyads/i44;->j:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v2, v4, v2

    iget v5, v0, Lyads/i44;->r:I

    sub-int/2addr v2, v5

    if-gez v2, :cond_27

    move v2, v11

    :cond_27
    if-lt v2, v1, :cond_28

    move v5, v10

    goto :goto_13

    :cond_28
    move v5, v11

    :goto_13
    iget-boolean v7, v0, Lyads/i44;->y:Z

    iget-object v9, v0, Lyads/i44;->k:Landroid/widget/TextView;

    if-eqz v7, :cond_29

    if-eqz v7, :cond_29

    if-eqz v5, :cond_29

    move v7, v11

    goto :goto_14

    :cond_29
    const/16 v7, 0x8

    :goto_14
    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v7, v0, Lyads/i44;->y:Z

    if-eqz v7, :cond_2d

    if-eqz v5, :cond_2d

    if-lez v1, :cond_2d

    div-int v1, v2, v1

    if-ge v1, v10, :cond_2a

    goto :goto_15

    :cond_2a
    move v10, v1

    :goto_15
    iget-object v1, v0, Lyads/i44;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, v0, Lyads/i44;->k:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMaxLines()I

    move-result v1

    if-eq v1, v10, :cond_2b

    iget-object v1, v0, Lyads/i44;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_2b
    iget-object v1, v0, Lyads/i44;->k:Landroid/widget/TextView;

    if-gez v3, :cond_2c

    move v3, v11

    :cond_2c
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/view/View;->measure(II)V

    goto :goto_16

    :cond_2d
    if-eqz v7, :cond_2e

    iget-object v1, v0, Lyads/i44;->k:Landroid/widget/TextView;

    invoke-static {v11, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v11, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v1, v2, v7}, Landroid/view/View;->measure(II)V

    :cond_2e
    iget-boolean v1, v0, Lyads/i44;->y:Z

    if-eqz v1, :cond_2f

    if-nez v5, :cond_2f

    iget-object v1, v0, Lyads/i44;->j:Landroid/widget/TextView;

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    :cond_2f
    :goto_16
    iget-object v1, v0, Lyads/i44;->d:Landroid/widget/TextView;

    iget v2, v0, Lyads/i44;->l:I

    iget-object v3, v0, Lyads/i44;->a:Lyads/ip0;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v4, v3}, Lyads/ip0;->a(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v11, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    iget v1, v0, Lyads/i44;->n:I

    move/from16 v2, p1

    invoke-static {v1, v2}, Landroid/view/View;->resolveSize(II)I

    move-result v1

    iget v2, v0, Lyads/i44;->o:I

    move/from16 v3, p2

    invoke-static {v2, v3}, Landroid/view/View;->resolveSize(II)I

    move-result v2

    iget-object v3, v0, Lyads/i44;->a:Lyads/ip0;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v4, v3}, Lyads/ip0;->a(Landroid/content/Context;F)I

    move-result v3

    if-ge v2, v3, :cond_30

    move v2, v3

    :cond_30
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method
