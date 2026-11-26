.class public final Lcom/my/target/y1;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/y1$a;
    }
.end annotation


# static fields
.field public static final synthetic q:I


# instance fields
.field public final b:Lcom/my/target/zh;

.field public final c:Landroid/widget/TextView;

.field public final d:Landroid/widget/TextView;

.field public final e:Landroid/widget/TextView;

.field public final f:Landroid/widget/TextView;

.field public final g:Landroid/widget/Button;

.field public final h:Landroid/widget/FrameLayout;

.field public final i:Lko9;

.field public j:Lyu9;

.field public k:Le6a;

.field public final l:Lcom/my/target/c1;

.field public m:Lcom/my/target/y1$a;

.field public n:Z

.field public o:Lt2a;

.field public p:Lfo9;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Ld6a;

    invoke-direct {v2}, Le6a;-><init>()V

    iput-object v2, v0, Lcom/my/target/y1;->k:Le6a;

    new-instance v2, Lcom/my/target/c1;

    new-instance v3, Lc21;

    const/16 v4, 0x8

    invoke-direct {v3, v0, v4}, Lc21;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v2, v3}, Lcom/my/target/c1;-><init>(Lcom/my/target/c1$a;)V

    iput-object v2, v0, Lcom/my/target/y1;->l:Lcom/my/target/c1;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/my/target/y1;->n:Z

    new-instance v3, Lko9;

    invoke-direct {v3, v1}, Lko9;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/my/target/y1;->i:Lko9;

    new-instance v5, Lyu9;

    invoke-direct {v5, v1}, Lyu9;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/my/target/y1;->j:Lyu9;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v6, Lcom/my/target/zh;

    invoke-direct {v6, v1}, Lcom/my/target/zh;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/my/target/y1;->b:Lcom/my/target/zh;

    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v8, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v9, v0, Lcom/my/target/y1;->j:Lyu9;

    sget v10, Lyu9;->x:I

    iget-object v9, v9, Lyu9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    sget v9, Lko9;->d:I

    iget-object v3, v3, Lko9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    iget-object v10, v0, Lcom/my/target/y1;->j:Lyu9;

    sget v11, Lyu9;->k:I

    iget-object v10, v10, Lyu9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    sget v9, Lko9;->r:I

    invoke-virtual {v3, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v7, v5}, Landroid/view/View;->setClipToOutline(Z)V

    iput-object v7, v0, Lcom/my/target/y1;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v8, Lko9;->g:I

    invoke-virtual {v3, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    invoke-virtual {v6, v9, v9, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v9, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iget-object v10, v0, Lcom/my/target/y1;->j:Lyu9;

    sget v11, Lyu9;->i:I

    iget-object v10, v10, Lyu9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    sget v10, Lko9;->x:I

    invoke-virtual {v3, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v6, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v9, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v11, Lko9;->i:I

    invoke-virtual {v3, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v12

    invoke-virtual {v9, v12, v12, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v6, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v9, -0x1

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v12, 0x0

    invoke-virtual {v6, v12, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    sget v13, Lko9;->R:I

    invoke-virtual {v3, v13}, Landroid/util/SparseIntArray;->get(I)I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    iput-object v6, v0, Lcom/my/target/y1;->c:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v6, v0, Lcom/my/target/y1;->j:Lyu9;

    sget v14, Lyu9;->s:I

    iget-object v6, v6, Lyu9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v14}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    invoke-virtual {v0, v1, v6, v2}, Lcom/my/target/y1;->a(Landroid/content/Context;IZ)Landroid/widget/TextView;

    move-result-object v6

    iput-object v6, v0, Lcom/my/target/y1;->d:Landroid/widget/TextView;

    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v15, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    invoke-virtual {v15, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v6, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v15, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v12, Lko9;->k:I

    invoke-virtual {v3, v12}, Landroid/util/SparseIntArray;->get(I)I

    move-result v12

    invoke-virtual {v3, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    invoke-virtual {v15, v9, v12, v9, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v11, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v11, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, v0, Lcom/my/target/y1;->j:Lyu9;

    sget v6, Lyu9;->v:I

    iget-object v2, v2, Lyu9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v0, v1, v2, v5}, Lcom/my/target/y1;->a(Landroid/content/Context;IZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, v0, Lcom/my/target/y1;->e:Landroid/widget/TextView;

    invoke-virtual {v11, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v13}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, v0, Lcom/my/target/y1;->j:Lyu9;

    iget-object v4, v4, Lyu9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v14}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLines(I)V

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v4, v6, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    div-int/lit8 v9, v7, 0x2

    invoke-virtual {v4, v7, v9, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v2, v0, Lcom/my/target/y1;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/my/target/y1;->j:Lyu9;

    sget v4, Lyu9;->w:I

    iget-object v1, v1, Lyu9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    iget-object v4, v0, Lcom/my/target/y1;->j:Lyu9;

    sget v6, Lyu9;->A:I

    iget-object v4, v4, Lyu9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    iget-object v6, v0, Lcom/my/target/y1;->j:Lyu9;

    sget v7, Lyu9;->E:I

    iget-object v6, v6, Lyu9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    sget v7, Lko9;->m:I

    invoke-virtual {v3, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v1, v4, v6, v9}, Lyu9;->b(IIIF)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lcom/my/target/y1;->j:Lyu9;

    sget v4, Lyu9;->B:I

    iget-object v1, v1, Lyu9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    sget v1, Lko9;->Q:I

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v3, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v3, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-virtual {v2, v1, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iput-object v2, v0, Lcom/my/target/y1;->g:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;IZ)Landroid/widget/TextView;
    .locals 1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget p1, Lko9;->Q:I

    iget-object p0, p0, Lcom/my/target/y1;->i:Lko9;

    iget-object p0, p0, Lko9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p0, 0x0

    const/4 p1, 0x1

    invoke-virtual {v0, p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    if-eqz p3, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result p0

    or-int/lit8 p0, p0, 0x10

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setPaintFlags(I)V

    :cond_0
    return-object v0
.end method

.method public final b()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lyu9;

    invoke-direct {v1, v0}, Lyu9;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/my/target/y1;->j:Lyu9;

    sget v0, Lyu9;->s:I

    iget-object v1, v1, Lyu9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/my/target/y1;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/my/target/y1;->j:Lyu9;

    sget v2, Lyu9;->v:I

    iget-object v1, v1, Lyu9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/my/target/y1;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/my/target/y1;->j:Lyu9;

    iget-object v1, v1, Lyu9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/my/target/y1;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/my/target/y1;->j:Lyu9;

    sget v1, Lyu9;->w:I

    iget-object v0, v0, Lyu9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/my/target/y1;->j:Lyu9;

    sget v2, Lyu9;->A:I

    iget-object v1, v1, Lyu9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/my/target/y1;->j:Lyu9;

    sget v3, Lyu9;->E:I

    iget-object v2, v2, Lyu9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    sget v3, Lko9;->m:I

    iget-object v4, p0, Lcom/my/target/y1;->i:Lko9;

    iget-object v4, v4, Lko9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0, v1, v2, v3}, Lyu9;->b(IIIF)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/y1;->g:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/my/target/y1;->j:Lyu9;

    sget v0, Lyu9;->B:I

    iget-object p0, p0, Lyu9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public getActionButton()Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/my/target/y1;->g:Landroid/widget/Button;

    return-object p0
.end method

.method public getAdImage()Lcom/my/target/zh;
    .locals 0

    iget-object p0, p0, Lcom/my/target/y1;->b:Lcom/my/target/zh;

    return-object p0
.end method

.method public getDescriptionTextView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/my/target/y1;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-boolean v0, p0, Lcom/my/target/y1;->n:Z

    iget-object v1, p0, Lcom/my/target/y1;->g:Landroid/widget/Button;

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_a

    const/4 v0, -0x1

    if-ne p1, v1, :cond_0

    const/16 v4, 0x40

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/my/target/y1;->d:Landroid/widget/TextView;

    if-eq p1, v4, :cond_5

    iget-object v4, p0, Lcom/my/target/y1;->e:Landroid/widget/TextView;

    if-ne p1, v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/my/target/y1;->f:Landroid/widget/TextView;

    if-ne p1, v4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/my/target/y1;->b:Lcom/my/target/zh;

    if-ne p1, v4, :cond_3

    const/16 v4, 0x8

    goto :goto_1

    :cond_3
    if-ne p1, p0, :cond_4

    const/16 v4, 0x800

    goto :goto_1

    :cond_4
    move v4, v0

    goto :goto_1

    :cond_5
    :goto_0
    move v4, v3

    :goto_1
    if-ne v4, v0, :cond_6

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/my/target/y1;->k:Le6a;

    new-instance v5, Lup9;

    invoke-direct {v5, v4, v0}, Lup9;-><init>(ILe6a;)V

    iget-object v0, p0, Lcom/my/target/y1;->m:Lcom/my/target/y1$a;

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    iget-object p0, p0, Lcom/my/target/y1;->p:Lfo9;

    if-nez p0, :cond_8

    goto :goto_2

    :cond_8
    if-ne p1, v1, :cond_9

    invoke-interface {v0, p0, v2, v5, p1}, Lcom/my/target/y1$a;->a(Lfo9;ILpfa;Landroid/view/View;)V

    return-void

    :cond_9
    invoke-interface {v0, p0, v3, v5, p1}, Lcom/my/target/y1$a;->a(Lfo9;ILpfa;Landroid/view/View;)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/my/target/y1;->m:Lcom/my/target/y1$a;

    if-nez v0, :cond_b

    goto :goto_2

    :cond_b
    iget-object p0, p0, Lcom/my/target/y1;->p:Lfo9;

    if-nez p0, :cond_c

    :goto_2
    return-void

    :cond_c
    if-ne p1, v1, :cond_d

    new-instance v1, Lgia;

    invoke-direct {v1}, Lgia;-><init>()V

    invoke-interface {v0, p0, v2, v1, p1}, Lcom/my/target/y1$a;->a(Lfo9;ILpfa;Landroid/view/View;)V

    return-void

    :cond_d
    new-instance v1, Lgia;

    invoke-direct {v1}, Lgia;-><init>()V

    invoke-interface {v0, p0, v3, v1, p1}, Lcom/my/target/y1$a;->a(Lfo9;ILpfa;Landroid/view/View;)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/my/target/y1;->b()V

    return-void
.end method

.method public setCard(Lfo9;)V
    .locals 6

    iput-object p1, p0, Lcom/my/target/y1;->p:Lfo9;

    invoke-virtual {p0}, Lcom/my/target/y1;->b()V

    iget-object v0, p1, Lao9;->Q:Lpp9;

    iget-boolean v0, v0, Lpp9;->c:Z

    iput-boolean v0, p0, Lcom/my/target/y1;->n:Z

    iget-object v0, p1, Lao9;->r:Lt2a;

    iput-object v0, p0, Lcom/my/target/y1;->o:Lt2a;

    iget-object v0, p1, Lao9;->p:Lh14;

    iget-object v1, p0, Lcom/my/target/y1;->b:Lcom/my/target/zh;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lxha;->d:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/my/target/zh;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/my/target/zh;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    iget-object v0, p0, Lcom/my/target/y1;->f:Landroid/widget/TextView;

    iget-object v2, p1, Lao9;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/my/target/y1;->g:Landroid/widget/Button;

    invoke-virtual {p1}, Lao9;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lao9;->M:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/my/target/y1;->d:Landroid/widget/TextView;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/my/target/y1;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lao9;->K:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lao9;->M:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lao9;->K:Ljava/lang/String;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v0, p1, Lao9;->J:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v3, p0, Lcom/my/target/y1;->c:Landroid/widget/TextView;

    if-nez v0, :cond_2

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Lao9;->J:Ljava/lang/String;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    const/4 v2, -0x2

    if-ne p1, v0, :cond_3

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_3

    :cond_3
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_3
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v1, p0, Lcom/my/target/y1;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setOnClickListeners(Lcom/my/target/y1$a;)V
    .locals 7

    iput-object p1, p0, Lcom/my/target/y1;->m:Lcom/my/target/y1$a;

    iget-boolean p1, p0, Lcom/my/target/y1;->n:Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/my/target/y1;->b:Lcom/my/target/zh;

    iget-object v2, p0, Lcom/my/target/y1;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/my/target/y1;->e:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/my/target/y1;->f:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/my/target/y1;->g:Landroid/widget/Button;

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/my/target/y1;->o:Lt2a;

    if-nez p1, :cond_0

    goto/16 :goto_a

    :cond_0
    iget-object p1, p0, Lcom/my/target/y1;->l:Lcom/my/target/c1;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v3, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v4, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v5, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/my/target/y1;->o:Lt2a;

    iget-boolean v6, p1, Lt2a;->m:Z

    if-eqz v6, :cond_1

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    iget-boolean v6, p1, Lt2a;->l:Z

    if-nez v6, :cond_3

    iget-boolean p1, p1, Lt2a;->o:Z

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v0

    goto :goto_1

    :cond_3
    :goto_0
    move-object p1, p0

    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/my/target/y1;->o:Lt2a;

    iget-boolean p1, p1, Lt2a;->g:Z

    if-eqz p1, :cond_4

    move-object p1, p0

    goto :goto_2

    :cond_4
    move-object p1, v0

    :goto_2
    invoke-virtual {v5, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/my/target/y1;->o:Lt2a;

    iget-boolean v5, p1, Lt2a;->d:Z

    if-nez v5, :cond_6

    iget-boolean p1, p1, Lt2a;->o:Z

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move-object p1, v0

    goto :goto_4

    :cond_6
    :goto_3
    move-object p1, p0

    :goto_4
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/my/target/y1;->o:Lt2a;

    iget-boolean v1, p1, Lt2a;->a:Z

    if-nez v1, :cond_8

    iget-boolean p1, p1, Lt2a;->o:Z

    if-eqz p1, :cond_7

    goto :goto_5

    :cond_7
    move-object p1, v0

    goto :goto_6

    :cond_8
    :goto_5
    move-object p1, p0

    :goto_6
    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/my/target/y1;->o:Lt2a;

    iget-boolean v1, p1, Lt2a;->a:Z

    if-nez v1, :cond_a

    iget-boolean p1, p1, Lt2a;->o:Z

    if-eqz p1, :cond_9

    goto :goto_7

    :cond_9
    move-object p1, v0

    goto :goto_8

    :cond_a
    :goto_7
    move-object p1, p0

    :goto_8
    invoke-virtual {v3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/my/target/y1;->o:Lt2a;

    iget-boolean v1, p1, Lt2a;->b:Z

    if-nez v1, :cond_c

    iget-boolean p1, p1, Lt2a;->o:Z

    if-eqz p1, :cond_b

    goto :goto_9

    :cond_b
    move-object p0, v0

    :cond_c
    :goto_9
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_d
    iget-object p1, p0, Lcom/my/target/y1;->o:Lt2a;

    if-nez p1, :cond_e

    :goto_a
    return-void

    :cond_e
    iget-boolean v6, p1, Lt2a;->m:Z

    if-eqz v6, :cond_f

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_f
    iget-boolean v6, p1, Lt2a;->l:Z

    if-nez v6, :cond_11

    iget-boolean p1, p1, Lt2a;->o:Z

    if-eqz p1, :cond_10

    goto :goto_b

    :cond_10
    move-object p1, v0

    goto :goto_c

    :cond_11
    :goto_b
    move-object p1, p0

    :goto_c
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/my/target/y1;->o:Lt2a;

    iget-boolean p1, p1, Lt2a;->g:Z

    if-eqz p1, :cond_12

    move-object p1, p0

    goto :goto_d

    :cond_12
    move-object p1, v0

    :goto_d
    invoke-virtual {v5, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/my/target/y1;->o:Lt2a;

    iget-boolean v5, p1, Lt2a;->d:Z

    if-nez v5, :cond_14

    iget-boolean p1, p1, Lt2a;->o:Z

    if-eqz p1, :cond_13

    goto :goto_e

    :cond_13
    move-object p1, v0

    goto :goto_f

    :cond_14
    :goto_e
    move-object p1, p0

    :goto_f
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/my/target/y1;->o:Lt2a;

    iget-boolean v1, p1, Lt2a;->a:Z

    if-nez v1, :cond_16

    iget-boolean p1, p1, Lt2a;->o:Z

    if-eqz p1, :cond_15

    goto :goto_10

    :cond_15
    move-object p1, v0

    goto :goto_11

    :cond_16
    :goto_10
    move-object p1, p0

    :goto_11
    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/my/target/y1;->o:Lt2a;

    iget-boolean v1, p1, Lt2a;->a:Z

    if-nez v1, :cond_18

    iget-boolean p1, p1, Lt2a;->o:Z

    if-eqz p1, :cond_17

    goto :goto_12

    :cond_17
    move-object p1, v0

    goto :goto_13

    :cond_18
    :goto_12
    move-object p1, p0

    :goto_13
    invoke-virtual {v3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/my/target/y1;->o:Lt2a;

    iget-boolean v1, p1, Lt2a;->b:Z

    if-nez v1, :cond_1a

    iget-boolean p1, p1, Lt2a;->o:Z

    if-eqz p1, :cond_19

    goto :goto_14

    :cond_19
    move-object p0, v0

    :cond_1a
    :goto_14
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
