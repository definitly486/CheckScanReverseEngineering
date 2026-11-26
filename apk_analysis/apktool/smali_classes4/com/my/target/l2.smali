.class public abstract Lcom/my/target/l2;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/my/target/y0$a;
.implements Lcom/my/target/h0;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final synthetic m:I


# instance fields
.field public b:Ljava/lang/ref/WeakReference;

.field public final c:Lko9;

.field public final d:Landroid/widget/Button;

.field public final e:Landroid/widget/RadioGroup;

.field public final f:Landroid/widget/TextView;

.field public final g:Lcom/my/target/e6;

.field public h:Landroid/widget/FrameLayout;

.field public i:Ls95;

.field public final j:Lyu9;

.field public final k:Lbr;

.field public final l:Lcom/my/target/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/my/target/o;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/my/target/l2;->l:Lcom/my/target/o;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Lbr;

    invoke-direct {v4, v2}, Lbr;-><init>(Ljava/lang/Object;)V

    iput-object v4, v0, Lcom/my/target/l2;->k:Lbr;

    new-instance v2, Lko9;

    invoke-direct {v2, v1}, Lko9;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/my/target/l2;->c:Lko9;

    new-instance v4, Lyu9;

    invoke-direct {v4, v1}, Lyu9;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/my/target/l2;->j:Lyu9;

    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    sget v7, Lyu9;->r:I

    iget-object v4, v4, Lyu9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    sget v7, Lko9;->n:I

    iget-object v2, v2, Lko9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    int-to-float v8, v8

    const/16 v9, 0x8

    new-array v9, v9, [F

    aput v8, v9, v6

    aput v8, v9, v3

    const/4 v10, 0x2

    aput v8, v9, v10

    const/4 v11, 0x3

    aput v8, v9, v11

    const/4 v8, 0x4

    const/4 v11, 0x0

    aput v11, v9, v8

    const/4 v12, 0x5

    aput v11, v9, v12

    const/4 v12, 0x6

    aput v11, v9, v12

    const/4 v12, 0x7

    aput v11, v9, v12

    invoke-virtual {v5, v9}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Lcom/my/target/e6;

    invoke-direct {v5, v1}, Lcom/my/target/e6;-><init>(Landroid/content/Context;)V

    sget v9, Lko9;->D:I

    invoke-virtual {v2, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    sget v12, Lko9;->E:I

    invoke-virtual {v2, v12}, Landroid/util/SparseIntArray;->get(I)I

    move-result v12

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v13, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v11, Lko9;->k:I

    invoke-virtual {v2, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v12

    sget v14, Lko9;->g:I

    invoke-virtual {v2, v14}, Landroid/util/SparseIntArray;->get(I)I

    move-result v14

    invoke-virtual {v13, v12, v14, v6, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v5, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    sget v12, Lko9;->m:I

    invoke-virtual {v2, v12}, Landroid/util/SparseIntArray;->get(I)I

    move-result v13

    iput v13, v5, Lcom/my/target/e6;->f:I

    iput v13, v5, Lcom/my/target/e6;->i:I

    iput v11, v5, Lcom/my/target/e6;->g:I

    iput v11, v5, Lcom/my/target/e6;->h:I

    sget v11, Lko9;->w:I

    invoke-virtual {v2, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    sget v13, Lyu9;->G:I

    invoke-virtual {v4, v13}, Landroid/util/SparseIntArray;->get(I)I

    move-result v13

    const-string v14, "M 0.263 0.264 C 0.615 -0.088 1.185 -0.088 1.536 0.264 L 7 5.727 L 12.463 0.264 C 12.815 -0.088 13.385 -0.088 13.736 0.264 C 14.088 0.615 14.088 1.185 13.736 1.536 L 8.272 7 L 13.736 12.464 C 14.088 12.815 14.088 13.385 13.736 13.736 C 13.385 14.088 12.815 14.088 12.463 13.736 L 7 8.273 L 1.536 13.736 C 1.185 14.088 0.615 14.088 0.263 13.736 C -0.088 13.385 -0.088 12.815 0.263 12.464 L 5.727 7 L 0.263 1.536 C -0.088 1.185 -0.088 0.615 0.263 0.264 Z"

    invoke-static {v1, v11, v13, v14}, Ldt9;->a(Landroid/content/Context;IILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v5, v11, v6}, Lcom/my/target/e6;->a(Landroid/graphics/Bitmap;Z)V

    new-instance v11, Lu15;

    invoke-direct {v11, v0, v10}, Lu15;-><init>(Landroid/widget/LinearLayout;I)V

    invoke-virtual {v5, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v5, v0, Lcom/my/target/l2;->g:Lcom/my/target/e6;

    invoke-virtual/range {p0 .. p1}, Lcom/my/target/l2;->f(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v10, Landroid/view/View;

    invoke-direct {v10, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/my/target/l2;->d()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v11, Lyu9;->F:I

    invoke-virtual {v4, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lcom/my/target/l2;->f:Landroid/widget/TextView;

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v11, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v15, Lko9;->r:I

    invoke-virtual {v2, v15}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    invoke-virtual {v2, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v13

    invoke-virtual {v11, v8, v13, v8, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v8, Lyu9;->s:I

    invoke-virtual {v4, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setTextColor(I)V

    sget v8, Lko9;->S:I

    invoke-virtual {v2, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/ScrollView;

    invoke-direct {v3, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    invoke-direct {v10, v11, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v13, 0x3f800000    # 1.0f

    iput v13, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v3, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/widget/RadioGroup;

    invoke-direct {v10, v1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v13, v11, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v12}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    invoke-virtual {v2, v15}, Landroid/util/SparseIntArray;->get(I)I

    move-result v12

    invoke-virtual {v13, v6, v11, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v10, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v10, v12, v6, v12, v6}, Landroid/view/View;->setPadding(IIII)V

    iput-object v10, v0, Lcom/my/target/l2;->e:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v10}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    invoke-direct {v9, v11, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v2, v15}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    invoke-virtual {v9, v10, v1, v10, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v3, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Lyu9;->y:I

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget v1, Lyu9;->B:I

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    sget v8, Lyu9;->A:I

    invoke-virtual {v4, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    sget v9, Lyu9;->C:I

    invoke-virtual {v4, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    invoke-virtual {v2, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v8, v4, v2}, Lyu9;->b(IIIF)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x4

    invoke-virtual {v3, v1}, Landroid/view/View;->setTextAlignment(I)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setEnabled(Z)V

    iput-object v3, v0, Lcom/my/target/l2;->d:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/my/target/l2;->getActionText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/widget/FrameLayout;)V
    .locals 1

    iput-object p1, p0, Lcom/my/target/l2;->h:Landroid/widget/FrameLayout;

    const/4 v0, -0x1

    invoke-virtual {p1, p0, v0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-void
.end method

.method public final c(Ljava/util/ArrayList;)V
    .locals 22

    move-object/from16 v0, p0

    sget v1, Lko9;->m:I

    iget-object v2, v0, Lcom/my/target/l2;->c:Lko9;

    iget-object v3, v2, Lko9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    sget v3, Lko9;->r:I

    iget-object v2, v2, Lko9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls95;

    new-instance v6, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v3, v1, v3, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object v7, v5, Ls95;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v7, Lyu9;->s:I

    iget-object v8, v0, Lcom/my/target/l2;->j:Lyu9;

    iget-object v9, v8, Lyu9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    sget v7, Lko9;->S:I

    invoke-virtual {v2, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v7, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    sget v9, Lko9;->v:I

    invoke-virtual {v2, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    const v10, 0x10100a0

    filled-new-array {v10}, [I

    move-result-object v10

    new-instance v11, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v11}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    sget v14, Lko9;->f:I

    invoke-virtual {v2, v14}, Landroid/util/SparseIntArray;->get(I)I

    move-result v15

    move/from16 p1, v13

    sget v13, Lyu9;->G:I

    iget-object v8, v8, Lyu9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v13}, Landroid/util/SparseIntArray;->get(I)I

    move-result v12

    invoke-virtual {v11, v15, v12}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v11, v9, v9}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    new-instance v12, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v12}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {v8, v13}, Landroid/util/SparseIntArray;->get(I)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    sget v13, Lko9;->i:I

    invoke-virtual {v2, v13}, Landroid/util/SparseIntArray;->get(I)I

    move-result v18

    div-int/lit8 v13, v9, 0x2

    invoke-virtual {v12, v13, v13}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    new-instance v13, Landroid/graphics/drawable/LayerDrawable;

    const/4 v15, 0x2

    new-array v15, v15, [Landroid/graphics/drawable/Drawable;

    aput-object v11, v15, p1

    const/4 v11, 0x1

    aput-object v12, v15, v11

    invoke-direct {v13, v15}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/16 v17, 0x1

    move/from16 v19, v18

    move/from16 v20, v18

    move/from16 v21, v18

    move-object/from16 v16, v13

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    move-object/from16 v12, v16

    invoke-virtual {v7, v10, v12}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    move/from16 v10, p1

    new-array v10, v10, [I

    new-instance v12, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v12}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v12, v11}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/4 v11, -0x1

    invoke-virtual {v12, v11}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v2, v14}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    sget v13, Lyu9;->H:I

    invoke-virtual {v8, v13}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    invoke-virtual {v12, v11, v8}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v12, v9, v9}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    invoke-virtual {v7, v10, v12}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v7}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v7, Lf1a;

    invoke-direct {v7, v0, v5}, Lf1a;-><init>(Lcom/my/target/l2;Ls95;)V

    invoke-virtual {v6, v7}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v5, v0, Lcom/my/target/l2;->e:Landroid/widget/RadioGroup;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method public abstract d()Landroid/widget/LinearLayout$LayoutParams;
.end method

.method public final e(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 2

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Landroid/view/View;->setTextAlignment(I)V

    sget p1, Lyu9;->s:I

    iget-object v1, p0, Lcom/my/target/l2;->j:Lyu9;

    iget-object v1, v1, Lyu9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    sget p1, Lko9;->X:I

    iget-object p0, p0, Lcom/my/target/l2;->c:Lko9;

    iget-object v1, p0, Lko9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    sget p1, Lko9;->k:I

    iget-object p0, p0, Lko9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method

.method public abstract f(Landroid/content/Context;)Landroid/widget/LinearLayout;
.end method

.method public abstract getActionText()Ljava/lang/String;
.end method

.method public final m()V
    .locals 1

    iget-object v0, p0, Lcom/my/target/l2;->h:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    iget-object v0, p0, Lcom/my/target/l2;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/my/target/l2;->b:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/my/target/l2;->g:Lcom/my/target/e6;

    if-ne p1, v0, :cond_0

    invoke-interface {p0}, Lcom/my/target/h0;->dismiss()V

    :cond_0
    return-void
.end method
