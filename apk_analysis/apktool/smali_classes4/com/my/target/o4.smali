.class public abstract Lcom/my/target/o4;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final synthetic p:I


# instance fields
.field public final b:Lko9;

.field public final c:Landroid/widget/TextView;

.field public final d:Landroid/widget/TextView;

.field public final e:Landroid/widget/Button;

.field public final f:Lcom/my/target/zh;

.field public final g:Landroid/widget/TextView;

.field public final h:Landroid/widget/FrameLayout;

.field public final i:Lcom/my/target/i0;

.field public final j:Lcom/my/target/e6;

.field public k:Z

.field public l:Lv2a;

.field public m:Le6a;

.field public final n:Lcom/my/target/c1;

.field public final o:Lcom/my/target/f1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/my/target/f1;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Ld6a;

    invoke-direct {v2}, Le6a;-><init>()V

    iput-object v2, v0, Lcom/my/target/o4;->m:Le6a;

    new-instance v2, Lcom/my/target/c1;

    new-instance v3, Lff1;

    invoke-direct {v3, v0}, Lff1;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v3}, Lcom/my/target/c1;-><init>(Lcom/my/target/c1$a;)V

    iput-object v2, v0, Lcom/my/target/o4;->n:Lcom/my/target/c1;

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/my/target/o4;->o:Lcom/my/target/f1;

    new-instance v2, Lko9;

    invoke-direct {v2, v1}, Lko9;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/my/target/o4;->b:Lko9;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/my/target/o4;->h:Landroid/widget/FrameLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lcom/my/target/i0;

    invoke-direct {v5, v1}, Lcom/my/target/i0;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sget v10, Lko9;->k:I

    iget-object v2, v2, Lko9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v11, v12, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const v11, 0x800033

    iput v11, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v5, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v5, v0, Lcom/my/target/o4;->i:Lcom/my/target/i0;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Lcom/my/target/e6;

    invoke-direct {v5, v1}, Lcom/my/target/e6;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    sget v11, Lko9;->C:I

    invoke-virtual {v2, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    sget v13, Lko9;->D:I

    invoke-virtual {v2, v13}, Landroid/util/SparseIntArray;->get(I)I

    move-result v13

    invoke-direct {v9, v11, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v11, 0x800035

    iput v11, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v5, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    div-int/lit8 v11, v9, 0x2

    invoke-virtual {v5, v9, v9, v11, v9}, Lcom/my/target/e6;->setPadding(IIII)V

    sget v9, Lko9;->w:I

    invoke-virtual {v2, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v9, v3}, Lkv9;->b(Landroid/content/Context;IZ)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v5, v9, v12}, Lcom/my/target/e6;->a(Landroid/graphics/Bitmap;Z)V

    iput-object v5, v0, Lcom/my/target/o4;->j:Lcom/my/target/e6;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v9, Lko9;->r:I

    invoke-virtual {v2, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    invoke-virtual {v4, v12, v11, v12, v11}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x0

    invoke-virtual {v5, v11, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/4 v13, 0x2

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    sget v15, Lko9;->N:I

    invoke-virtual {v2, v15}, Landroid/util/SparseIntArray;->get(I)I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setTextSize(F)V

    iput-object v5, v0, Lcom/my/target/o4;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v15, Lko9;->O:I

    invoke-virtual {v2, v15}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setLines(I)V

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v13, Lko9;->g:I

    invoke-virtual {v2, v13}, Landroid/util/SparseIntArray;->get(I)I

    move-result v13

    invoke-virtual {v3, v12, v13, v12, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v5, v0, Lcom/my/target/o4;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    sget v6, Lko9;->n:I

    invoke-virtual {v2, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    invoke-virtual {v5, v12, v6, v12, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x10

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    sget v7, Lko9;->m:I

    invoke-virtual {v2, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    invoke-virtual {v5, v6, v7, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v2, v15}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v6, 0x1

    invoke-virtual {v5, v11, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iput-object v5, v0, Lcom/my/target/o4;->e:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Lcom/my/target/zh;

    invoke-direct {v5, v1}, Lcom/my/target/zh;-><init>(Landroid/content/Context;)V

    sget v6, Lko9;->u:I

    invoke-virtual {v2, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v6, Lko9;->d:I

    invoke-virtual {v2, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    invoke-virtual {v5, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    iput-object v5, v0, Lcom/my/target/o4;->f:Lcom/my/target/zh;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v15}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iput-object v5, v0, Lcom/my/target/o4;->g:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(II)Landroid/util/Size;
    .locals 1

    iget-object p0, p0, Lcom/my/target/o4;->h:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p2, p1, p2

    if-nez p2, :cond_1

    if-ge p0, v0, :cond_0

    int-to-float p2, p0

    div-float/2addr p2, p1

    float-to-int v0, p2

    goto :goto_1

    :cond_0
    int-to-float p0, v0

    div-float/2addr p0, p1

    :goto_0
    float-to-int p0, p0

    goto :goto_1

    :cond_1
    if-lez p2, :cond_3

    int-to-float p2, p0

    div-float/2addr p2, p1

    float-to-int p2, p2

    if-le p2, v0, :cond_2

    int-to-float p0, v0

    mul-float/2addr p0, p1

    goto :goto_0

    :cond_2
    move v0, p2

    goto :goto_1

    :cond_3
    int-to-float p2, v0

    mul-float/2addr p2, p1

    float-to-int p1, p2

    if-le p1, p0, :cond_4

    move v0, p1

    goto :goto_1

    :cond_4
    move p0, p1

    :goto_1
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, p0, v0}, Landroid/util/Size;-><init>(II)V

    return-object p1
.end method

.method public final b()V
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lyu9;

    invoke-direct {v1, v0}, Lyu9;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/my/target/o4;->h:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/my/target/o4;->d(Lyu9;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lyu9;->s:I

    iget-object v2, v1, Lyu9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    iget-object v3, p0, Lcom/my/target/o4;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    sget v0, Lyu9;->t:I

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    iget-object v3, p0, Lcom/my/target/o4;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    sget v0, Lyu9;->B:I

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    sget v3, Lyu9;->y:I

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    sget v5, Lyu9;->C:I

    invoke-virtual {v2, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    sget v6, Lko9;->n:I

    iget-object v7, p0, Lcom/my/target/o4;->b:Lko9;

    iget-object v8, v7, Lko9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v0, v4, v5, v6}, Lyu9;->b(IIIF)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    iget-object v4, p0, Lcom/my/target/o4;->e:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    sget v0, Lko9;->d:I

    iget-object v3, v7, Lko9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    invoke-virtual {v1, v0}, Lyu9;->a(F)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/o4;->f:Lcom/my/target/zh;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lyu9;->z:I

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    iget-object p0, p0, Lcom/my/target/o4;->g:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public abstract c(Lv2a;)V
.end method

.method public final d(Lyu9;)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    sget v1, Lyu9;->x:I

    iget-object p1, p1, Lyu9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    sget p1, Lko9;->r:I

    iget-object p0, p0, Lcom/my/target/o4;->b:Lko9;

    iget-object p0, p0, Lko9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method public e(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Lcom/my/target/o4;->e:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    const/16 p0, 0x40

    return p0

    :cond_0
    iget-object v0, p0, Lcom/my/target/o4;->d:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    if-ne p1, p0, :cond_2

    const/16 p0, 0x800

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 9

    iget-object v0, p0, Lcom/my/target/o4;->l:Lv2a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/my/target/o4;->k:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/my/target/o4;->e:Landroid/widget/Button;

    iget-object v6, p0, Lcom/my/target/o4;->j:Lcom/my/target/e6;

    iget-object v7, p0, Lcom/my/target/o4;->o:Lcom/my/target/f1;

    if-eqz v1, :cond_7

    invoke-virtual {p0, p1}, Lcom/my/target/o4;->e(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/my/target/o4;->m:Le6a;

    new-instance v8, Lup9;

    invoke-direct {v8, v0, v1}, Lup9;-><init>(ILe6a;)V

    iget-object v0, p0, Lcom/my/target/o4;->l:Lv2a;

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v0, v0, Lv2a;->a:Lxda;

    if-ne p1, v6, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    iget-object p1, v0, Lao9;->H:Lcom/my/target/q;

    if-nez p1, :cond_3

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_3
    iget-object v0, v7, Lcom/my/target/f1;->j:Lcom/my/target/o;

    if-nez v0, :cond_4

    iget-object p1, p1, Lcom/my/target/q;->b:Ljava/lang/String;

    invoke-static {p0, p1, v2, v2, v2}, Ly14;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Intent;)Z

    return-void

    :cond_4
    invoke-virtual {v0}, Lcom/my/target/o;->b()V

    return-void

    :cond_5
    if-ne p1, v5, :cond_6

    invoke-virtual {v7, v0, v4, v8, p0}, Lcom/my/target/f1;->c(Lao9;ILpfa;Lcom/my/target/o4;)V

    return-void

    :cond_6
    invoke-virtual {v7, v0, v3, v8, p0}, Lcom/my/target/f1;->c(Lao9;ILpfa;Lcom/my/target/o4;)V

    return-void

    :cond_7
    iget-object v0, v0, Lv2a;->a:Lxda;

    if-ne p1, v6, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    iget-object p1, v0, Lao9;->H:Lcom/my/target/q;

    if-nez p1, :cond_8

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_8
    iget-object v0, v7, Lcom/my/target/f1;->j:Lcom/my/target/o;

    if-nez v0, :cond_9

    iget-object p1, p1, Lcom/my/target/q;->b:Ljava/lang/String;

    invoke-static {p0, p1, v2, v2, v2}, Ly14;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Intent;)Z

    return-void

    :cond_9
    invoke-virtual {v0}, Lcom/my/target/o;->b()V

    return-void

    :cond_a
    if-ne p1, v5, :cond_b

    new-instance p1, Lgia;

    invoke-direct {p1}, Lgia;-><init>()V

    invoke-virtual {v7, v0, v4, p1, p0}, Lcom/my/target/f1;->c(Lao9;ILpfa;Lcom/my/target/o4;)V

    return-void

    :cond_b
    new-instance p1, Lgia;

    invoke-direct {p1}, Lgia;-><init>()V

    invoke-virtual {v7, v0, v3, p1, p0}, Lcom/my/target/f1;->c(Lao9;ILpfa;Lcom/my/target/o4;)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/my/target/o4;->b()V

    return-void
.end method

.method public setBannerData(Lv2a;)V
    .locals 7

    invoke-virtual {p0}, Lcom/my/target/o4;->b()V

    iput-object p1, p0, Lcom/my/target/o4;->l:Lv2a;

    iget-object v0, p1, Lv2a;->a:Lxda;

    iget-object v1, v0, Lao9;->Q:Lpp9;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/my/target/o4;->o:Lcom/my/target/f1;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v0, Lao9;->H:Lcom/my/target/q;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v5, v4, Lcom/my/target/q;->c:Ljava/util/List;

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lao9;->d()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/my/target/o;

    invoke-direct {v6, v4, v5, v2}, Lcom/my/target/o;-><init>(Lcom/my/target/q;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v6, v3, Lcom/my/target/f1;->j:Lcom/my/target/o;

    new-instance v2, Lzu;

    invoke-direct {v2, v3}, Lzu;-><init>(Ljava/lang/Object;)V

    iput-object v2, v6, Lcom/my/target/o;->e:Lgv9;

    :goto_0
    iget-boolean v2, v1, Lpp9;->c:Z

    iput-boolean v2, p0, Lcom/my/target/o4;->k:Z

    invoke-virtual {p0, p1}, Lcom/my/target/o4;->c(Lv2a;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/my/target/o4;->b:Lko9;

    const/4 v4, 0x2

    if-ne p1, v4, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ll3a;->l(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    sget v5, Lko9;->r:I

    iget-object v3, v3, Lko9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    iget p1, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr p1, v3

    div-int/2addr p1, v4

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, p1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumWidth(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ll3a;->l(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    sget v5, Lko9;->r:I

    iget-object v6, v3, Lko9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    mul-int/2addr v5, v4

    sget v6, Lko9;->D:I

    iget-object v3, v3, Lko9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    add-int/2addr v3, v5

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, v3

    div-int/2addr p1, v4

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    :goto_1
    invoke-virtual {p0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/my/target/o4;->c:Landroid/widget/TextView;

    iget-object v2, v0, Lao9;->e:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/my/target/o4;->d:Landroid/widget/TextView;

    iget-object v2, v0, Lao9;->c:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/my/target/o4;->e:Landroid/widget/Button;

    invoke-virtual {v0}, Lao9;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lao9;->q:Lh14;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lxha;->d:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p1}, Lr2a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v2, p0, Lcom/my/target/o4;->f:Lcom/my/target/zh;

    invoke-virtual {v2, p1}, Lcom/my/target/zh;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    iget-object p1, v0, Lao9;->m:Ljava/lang/String;

    const-string v2, "store"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, v0, Lao9;->j:Ljava/lang/String;

    goto :goto_2

    :cond_4
    iget-object p1, v0, Lao9;->l:Ljava/lang/String;

    :goto_2
    iget-object v2, p0, Lcom/my/target/o4;->g:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lxda;->b0:Lh14;

    invoke-virtual {v0}, Lao9;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/my/target/o4;->i:Lcom/my/target/i0;

    if-nez p1, :cond_5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 p1, 0x4

    invoke-virtual {v3, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {v3}, Lcom/my/target/i0;->getAdsIcon()Landroid/widget/ImageView;

    move-result-object v4

    iget-object p1, p1, Lxha;->d:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_6
    invoke-virtual {v3}, Lcom/my/target/i0;->getAgeRestrictionsTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {v3, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    iget-boolean p1, v1, Lpp9;->c:Z

    iget-object v0, v0, Lao9;->r:Lt2a;

    iput-boolean p1, p0, Lcom/my/target/o4;->k:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0, v0}, Lcom/my/target/o4;->setClickAreaActual(Lt2a;)V

    return-void

    :cond_7
    invoke-virtual {p0, v0}, Lcom/my/target/o4;->setClickAreaLegacy(Lt2a;)V

    return-void
.end method

.method public setClickAreaActual(Lt2a;)V
    .locals 4

    iget-object v0, p0, Lcom/my/target/o4;->n:Lcom/my/target/c1;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/my/target/o4;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/my/target/o4;->e:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-boolean v0, p1, Lt2a;->m:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-boolean v0, p1, Lt2a;->l:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    move-object v0, p0

    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p1, Lt2a;->g:Z

    if-eqz v0, :cond_2

    move-object v0, p0

    goto :goto_1

    :cond_2
    move-object v0, v3

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean p1, p1, Lt2a;->b:Z

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move-object p0, v3

    :goto_2
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setClickAreaLegacy(Lt2a;)V
    .locals 3

    iget-boolean v0, p1, Lt2a;->m:Z

    iget-object v1, p0, Lcom/my/target/o4;->e:Landroid/widget/Button;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-boolean v0, p1, Lt2a;->l:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move-object v0, p0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p1, Lt2a;->g:Z

    if-eqz v0, :cond_2

    move-object v0, p0

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean p1, p1, Lt2a;->b:Z

    if-eqz p1, :cond_3

    move-object v2, p0

    :cond_3
    iget-object p0, p0, Lcom/my/target/o4;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
