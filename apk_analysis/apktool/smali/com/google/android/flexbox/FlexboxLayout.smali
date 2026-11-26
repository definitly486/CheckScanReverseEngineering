.class public Lcom/google/android/flexbox/FlexboxLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lpc3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;
    }
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Landroid/graphics/drawable/Drawable;

.field public i:Landroid/graphics/drawable/Drawable;

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:[I

.field public o:Landroid/util/SparseIntArray;

.field public final p:Lcom/google/android/flexbox/b;

.field public q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/a;",
            ">;"
        }
    .end annotation
.end field

.field public final r:Lcom/google/android/flexbox/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 146
    invoke-direct {p0, p1, v0}, Lcom/google/android/flexbox/FlexboxLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 145
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/flexbox/FlexboxLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->g:I

    new-instance v1, Lcom/google/android/flexbox/b;

    invoke-direct {v1, p0}, Lcom/google/android/flexbox/b;-><init>(Lpc3;)V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->p:Lcom/google/android/flexbox/b;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->q:Ljava/util/List;

    new-instance v1, Lcom/google/android/flexbox/b$a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->r:Lcom/google/android/flexbox/b$a;

    sget-object v1, Ltw6;->a:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->b:I

    const/4 p2, 0x6

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->c:I

    const/4 p2, 0x7

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->d:I

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->e:I

    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->f:I

    const/16 p2, 0x8

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->g:I

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayout;->setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayout;->setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayout;->setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayout;->setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const/16 p2, 0x9

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eqz p2, :cond_3

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->k:I

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->j:I

    :cond_3
    const/16 p2, 0xb

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eqz p2, :cond_4

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->k:I

    :cond_4
    const/16 p2, 0xa

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eqz p2, :cond_5

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->j:I

    :cond_5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;IILcom/google/android/flexbox/a;)V
    .locals 0

    invoke-virtual {p0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayout;->p(II)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->m()Z

    move-result p1

    iget p2, p4, Lcom/google/android/flexbox/a;->e:I

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayout;->m:I

    add-int/2addr p2, p0

    iput p2, p4, Lcom/google/android/flexbox/a;->e:I

    iget p1, p4, Lcom/google/android/flexbox/a;->f:I

    add-int/2addr p1, p0

    iput p1, p4, Lcom/google/android/flexbox/a;->f:I

    return-void

    :cond_0
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayout;->l:I

    add-int/2addr p2, p0

    iput p2, p4, Lcom/google/android/flexbox/a;->e:I

    iget p1, p4, Lcom/google/android/flexbox/a;->f:I

    add-int/2addr p1, p0

    iput p1, p4, Lcom/google/android/flexbox/a;->f:I

    :cond_1
    return-void
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->o:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->o:Landroid/util/SparseIntArray;

    :cond_0
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->p:Lcom/google/android/flexbox/b;

    iget-object v2, v1, Lcom/google/android/flexbox/b;->a:Lpc3;

    invoke-interface {v2}, Lpc3;->getFlexItemCount()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/flexbox/b;->f(I)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v4, Lcom/google/android/flexbox/b$b;

    invoke-direct {v4}, Lcom/google/android/flexbox/b$b;-><init>()V

    const/4 v5, 0x1

    if-eqz p1, :cond_1

    instance-of v6, p3, Lcom/google/android/flexbox/FlexItem;

    if-eqz v6, :cond_1

    move-object v6, p3

    check-cast v6, Lcom/google/android/flexbox/FlexItem;

    invoke-interface {v6}, Lcom/google/android/flexbox/FlexItem;->getOrder()I

    move-result v6

    iput v6, v4, Lcom/google/android/flexbox/b$b;->c:I

    goto :goto_0

    :cond_1
    iput v5, v4, Lcom/google/android/flexbox/b$b;->c:I

    :goto_0
    const/4 v6, -0x1

    if-eq p2, v6, :cond_4

    if-ne p2, v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v2}, Lpc3;->getFlexItemCount()I

    move-result v2

    if-ge p2, v2, :cond_3

    iput p2, v4, Lcom/google/android/flexbox/b$b;->b:I

    move v2, p2

    :goto_1
    if-ge v2, v3, :cond_5

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/flexbox/b$b;

    iget v7, v6, Lcom/google/android/flexbox/b$b;->b:I

    add-int/2addr v7, v5

    iput v7, v6, Lcom/google/android/flexbox/b$b;->b:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iput v3, v4, Lcom/google/android/flexbox/b$b;->b:I

    goto :goto_3

    :cond_4
    :goto_2
    iput v3, v4, Lcom/google/android/flexbox/b$b;->b:I

    :cond_5
    :goto_3
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v3, v5

    invoke-static {v3, v1, v0}, Lcom/google/android/flexbox/b;->r(ILjava/util/ArrayList;Landroid/util/SparseIntArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->n:[I

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b(Landroid/graphics/Canvas;ZZ)V
    .locals 12

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    sub-int/2addr v2, v0

    const/4 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayout;->q:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_a

    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayout;->q:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/flexbox/a;

    move v6, v1

    :goto_1
    iget v7, v5, Lcom/google/android/flexbox/a;->h:I

    if-ge v6, v7, :cond_5

    iget v7, v5, Lcom/google/android/flexbox/a;->o:I

    add-int/2addr v7, v6

    invoke-virtual {p0, v7}, Lcom/google/android/flexbox/FlexboxLayout;->o(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    invoke-virtual {p0, v7, v6}, Lcom/google/android/flexbox/FlexboxLayout;->p(II)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v7

    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v7, v10

    goto :goto_2

    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v7

    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v7, v10

    iget v10, p0, Lcom/google/android/flexbox/FlexboxLayout;->m:I

    sub-int/2addr v7, v10

    :goto_2
    iget v10, v5, Lcom/google/android/flexbox/a;->b:I

    iget v11, v5, Lcom/google/android/flexbox/a;->g:I

    invoke-virtual {p0, p1, v7, v10, v11}, Lcom/google/android/flexbox/FlexboxLayout;->n(Landroid/graphics/Canvas;III)V

    :cond_2
    iget v7, v5, Lcom/google/android/flexbox/a;->h:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_4

    iget v7, p0, Lcom/google/android/flexbox/FlexboxLayout;->k:I

    and-int/lit8 v7, v7, 0x4

    if-lez v7, :cond_4

    if-eqz p2, :cond_3

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v7

    iget v8, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/google/android/flexbox/FlexboxLayout;->m:I

    sub-int/2addr v7, v8

    goto :goto_3

    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v7

    iget v8, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v7, v8

    :goto_3
    iget v8, v5, Lcom/google/android/flexbox/a;->b:I

    iget v9, v5, Lcom/google/android/flexbox/a;->g:I

    invoke-virtual {p0, p1, v7, v8, v9}, Lcom/google/android/flexbox/FlexboxLayout;->n(Landroid/graphics/Canvas;III)V

    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v4}, Lcom/google/android/flexbox/FlexboxLayout;->q(I)Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz p3, :cond_6

    iget v6, v5, Lcom/google/android/flexbox/a;->d:I

    goto :goto_5

    :cond_6
    iget v6, v5, Lcom/google/android/flexbox/a;->b:I

    iget v7, p0, Lcom/google/android/flexbox/FlexboxLayout;->l:I

    sub-int/2addr v6, v7

    :goto_5
    invoke-virtual {p0, p1, v0, v6, v2}, Lcom/google/android/flexbox/FlexboxLayout;->l(Landroid/graphics/Canvas;III)V

    :cond_7
    invoke-virtual {p0, v4}, Lcom/google/android/flexbox/FlexboxLayout;->r(I)Z

    move-result v6

    if-eqz v6, :cond_9

    iget v6, p0, Lcom/google/android/flexbox/FlexboxLayout;->j:I

    and-int/lit8 v6, v6, 0x4

    if-lez v6, :cond_9

    if-eqz p3, :cond_8

    iget v5, v5, Lcom/google/android/flexbox/a;->b:I

    iget v6, p0, Lcom/google/android/flexbox/FlexboxLayout;->l:I

    sub-int/2addr v5, v6

    goto :goto_6

    :cond_8
    iget v5, v5, Lcom/google/android/flexbox/a;->d:I

    :goto_6
    invoke-virtual {p0, p1, v0, v5, v2}, Lcom/google/android/flexbox/FlexboxLayout;->l(Landroid/graphics/Canvas;III)V

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public final c(Landroid/graphics/Canvas;ZZ)V
    .locals 12

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    sub-int/2addr v2, v0

    const/4 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayout;->q:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_a

    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayout;->q:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/flexbox/a;

    move v6, v1

    :goto_1
    iget v7, v5, Lcom/google/android/flexbox/a;->h:I

    if-ge v6, v7, :cond_5

    iget v7, v5, Lcom/google/android/flexbox/a;->o:I

    add-int/2addr v7, v6

    invoke-virtual {p0, v7}, Lcom/google/android/flexbox/FlexboxLayout;->o(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    invoke-virtual {p0, v7, v6}, Lcom/google/android/flexbox/FlexboxLayout;->p(II)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v7

    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v7, v10

    goto :goto_2

    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v7

    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v7, v10

    iget v10, p0, Lcom/google/android/flexbox/FlexboxLayout;->l:I

    sub-int/2addr v7, v10

    :goto_2
    iget v10, v5, Lcom/google/android/flexbox/a;->a:I

    iget v11, v5, Lcom/google/android/flexbox/a;->g:I

    invoke-virtual {p0, p1, v10, v7, v11}, Lcom/google/android/flexbox/FlexboxLayout;->l(Landroid/graphics/Canvas;III)V

    :cond_2
    iget v7, v5, Lcom/google/android/flexbox/a;->h:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_4

    iget v7, p0, Lcom/google/android/flexbox/FlexboxLayout;->j:I

    and-int/lit8 v7, v7, 0x4

    if-lez v7, :cond_4

    if-eqz p3, :cond_3

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v7

    iget v8, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/google/android/flexbox/FlexboxLayout;->l:I

    sub-int/2addr v7, v8

    goto :goto_3

    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v7

    iget v8, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    :goto_3
    iget v8, v5, Lcom/google/android/flexbox/a;->a:I

    iget v9, v5, Lcom/google/android/flexbox/a;->g:I

    invoke-virtual {p0, p1, v8, v7, v9}, Lcom/google/android/flexbox/FlexboxLayout;->l(Landroid/graphics/Canvas;III)V

    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v4}, Lcom/google/android/flexbox/FlexboxLayout;->q(I)Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz p2, :cond_6

    iget v6, v5, Lcom/google/android/flexbox/a;->c:I

    goto :goto_5

    :cond_6
    iget v6, v5, Lcom/google/android/flexbox/a;->a:I

    iget v7, p0, Lcom/google/android/flexbox/FlexboxLayout;->m:I

    sub-int/2addr v6, v7

    :goto_5
    invoke-virtual {p0, p1, v6, v0, v2}, Lcom/google/android/flexbox/FlexboxLayout;->n(Landroid/graphics/Canvas;III)V

    :cond_7
    invoke-virtual {p0, v4}, Lcom/google/android/flexbox/FlexboxLayout;->r(I)Z

    move-result v6

    if-eqz v6, :cond_9

    iget v6, p0, Lcom/google/android/flexbox/FlexboxLayout;->k:I

    and-int/lit8 v6, v6, 0x4

    if-lez v6, :cond_9

    if-eqz p2, :cond_8

    iget v5, v5, Lcom/google/android/flexbox/a;->a:I

    iget v6, p0, Lcom/google/android/flexbox/FlexboxLayout;->m:I

    sub-int/2addr v5, v6

    goto :goto_6

    :cond_8
    iget v5, v5, Lcom/google/android/flexbox/a;->c:I

    :goto_6
    invoke-virtual {p0, p1, v5, v0, v2}, Lcom/google/android/flexbox/FlexboxLayout;->n(Landroid/graphics/Canvas;III)V

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p0, p1, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    return p0
.end method

.method public final d(I)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final e(III)I
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    return p0
.end method

.method public final f(Landroid/view/View;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final g(I)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->o(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 8

    .line 134
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 135
    invoke-direct {v0, p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x1

    .line 136
    iput v1, v0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->b:I

    const/4 v2, 0x0

    .line 137
    iput v2, v0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->c:F

    const/high16 v3, 0x3f800000    # 1.0f

    .line 138
    iput v3, v0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->d:F

    const/4 v4, -0x1

    .line 139
    iput v4, v0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->e:I

    const/high16 v5, -0x40800000    # -1.0f

    .line 140
    iput v5, v0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->f:F

    .line 141
    iput v4, v0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->g:I

    .line 142
    iput v4, v0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->h:I

    const v6, 0xffffff

    .line 143
    iput v6, v0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->i:I

    .line 144
    iput v6, v0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->j:I

    .line 145
    sget-object v7, Ltw6;->b:[I

    .line 146
    invoke-virtual {p0, p1, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/16 p1, 0x8

    .line 147
    invoke-virtual {p0, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, v0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->b:I

    const/4 p1, 0x2

    .line 148
    invoke-virtual {p0, p1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, v0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->c:F

    const/4 p1, 0x3

    .line 149
    invoke-virtual {p0, p1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, v0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->d:F

    const/4 p1, 0x0

    .line 150
    invoke-virtual {p0, p1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->e:I

    .line 151
    invoke-virtual {p0, v1, v1, v1, v5}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v1

    iput v1, v0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->f:F

    const/4 v1, 0x7

    .line 152
    invoke-virtual {p0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->g:I

    const/4 v1, 0x6

    .line 153
    invoke-virtual {p0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->h:I

    const/4 v1, 0x5

    .line 154
    invoke-virtual {p0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->i:I

    const/4 v1, 0x4

    .line 155
    invoke-virtual {p0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->j:I

    const/16 v1, 0x9

    .line 156
    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->k:Z

    .line 157
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 6

    instance-of p0, p1, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    const v0, 0xffffff

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    check-cast p1, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    iput v5, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->b:I

    iput v4, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->c:F

    iput v3, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->d:F

    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->e:I

    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->f:F

    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->g:I

    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->h:I

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->i:I

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->j:I

    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->b:I

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->b:I

    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->c:F

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->c:F

    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->d:F

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->d:F

    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->e:I

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->e:I

    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->f:F

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->f:F

    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->g:I

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->g:I

    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->h:I

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->h:I

    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->i:I

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->i:I

    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->j:I

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->j:I

    iget-boolean p1, p1, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->k:Z

    iput-boolean p1, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->k:Z

    return-object p0

    :cond_0
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_1

    new-instance p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    iput v5, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->b:I

    iput v4, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->c:F

    iput v3, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->d:F

    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->e:I

    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->f:F

    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->g:I

    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->h:I

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->i:I

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->j:I

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput v5, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->b:I

    iput v4, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->c:F

    iput v3, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->d:F

    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->e:I

    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->f:F

    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->g:I

    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->h:I

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->i:I

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->j:I

    return-object p0
.end method

.method public getAlignContent()I
    .locals 0

    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayout;->f:I

    return p0
.end method

.method public getAlignItems()I
    .locals 0

    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayout;->e:I

    return p0
.end method

.method public getDividerDrawableHorizontal()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayout;->h:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getDividerDrawableVertical()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayout;->i:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getFlexDirection()I
    .locals 0

    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayout;->b:I

    return p0
.end method

.method public getFlexItemCount()I
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    return p0
.end method

.method public getFlexLines()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayout;->q:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/flexbox/a;

    invoke-virtual {v1}, Lcom/google/android/flexbox/a;->a()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getFlexLinesInternal()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/a;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayout;->q:Ljava/util/List;

    return-object p0
.end method

.method public getFlexWrap()I
    .locals 0

    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayout;->c:I

    return p0
.end method

.method public getJustifyContent()I
    .locals 0

    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayout;->d:I

    return p0
.end method

.method public getLargestMainSize()I
    .locals 2

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayout;->q:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/high16 v0, -0x80000000

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/flexbox/a;

    iget v1, v1, Lcom/google/android/flexbox/a;->e:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getMaxLine()I
    .locals 0

    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayout;->g:I

    return p0
.end method

.method public getShowDividerHorizontal()I
    .locals 0

    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayout;->j:I

    return p0
.end method

.method public getShowDividerVertical()I
    .locals 0

    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayout;->k:I

    return p0
.end method

.method public getSumOfCrossSize()I
    .locals 5

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_4

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayout;->q:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/flexbox/a;

    invoke-virtual {p0, v1}, Lcom/google/android/flexbox/FlexboxLayout;->q(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->m()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/google/android/flexbox/FlexboxLayout;->l:I

    :goto_1
    add-int/2addr v2, v4

    goto :goto_2

    :cond_0
    iget v4, p0, Lcom/google/android/flexbox/FlexboxLayout;->m:I

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p0, v1}, Lcom/google/android/flexbox/FlexboxLayout;->r(I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->m()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/google/android/flexbox/FlexboxLayout;->l:I

    :goto_3
    add-int/2addr v2, v4

    goto :goto_4

    :cond_2
    iget v4, p0, Lcom/google/android/flexbox/FlexboxLayout;->m:I

    goto :goto_3

    :cond_3
    :goto_4
    iget v3, v3, Lcom/google/android/flexbox/a;->g:I

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public final h(Landroid/view/View;II)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->m()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayout;->p(II)Z

    move-result p1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->m:I

    :cond_0
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->k:I

    and-int/lit8 p1, p1, 0x4

    if-lez p1, :cond_1

    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayout;->m:I

    :goto_0
    add-int/2addr v0, p0

    :cond_1
    return v0

    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayout;->p(II)Z

    move-result p1

    if-eqz p1, :cond_3

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->l:I

    :cond_3
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->j:I

    and-int/lit8 p1, p1, 0x4

    if-lez p1, :cond_4

    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayout;->l:I

    goto :goto_0

    :cond_4
    return v0
.end method

.method public final i(III)I
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    return p0
.end method

.method public final j(Lcom/google/android/flexbox/a;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->k:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_1

    iget v0, p1, Lcom/google/android/flexbox/a;->e:I

    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayout;->m:I

    add-int/2addr v0, p0

    iput v0, p1, Lcom/google/android/flexbox/a;->e:I

    iget v0, p1, Lcom/google/android/flexbox/a;->f:I

    add-int/2addr v0, p0

    iput v0, p1, Lcom/google/android/flexbox/a;->f:I

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->j:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_1

    iget v0, p1, Lcom/google/android/flexbox/a;->e:I

    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayout;->l:I

    add-int/2addr v0, p0

    iput v0, p1, Lcom/google/android/flexbox/a;->e:I

    iget v0, p1, Lcom/google/android/flexbox/a;->f:I

    add-int/2addr v0, p0

    iput v0, p1, Lcom/google/android/flexbox/a;->f:I

    :cond_1
    return-void
.end method

.method public final k(ILandroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final l(Landroid/graphics/Canvas;III)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->h:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    add-int/2addr p4, p2

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->l:I

    add-int/2addr v1, p3

    invoke-virtual {v0, p2, p3, p4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayout;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final m()Z
    .locals 1

    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayout;->b:I

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public final n(Landroid/graphics/Canvas;III)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->i:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->m:I

    add-int/2addr v1, p2

    add-int/2addr p4, p3

    invoke-virtual {v0, p2, p3, v1, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayout;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final o(I)Landroid/view/View;
    .locals 2

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->n:[I

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    aget p1, v0, p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->i:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->h:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->j:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->k:I

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_b

    if-eq v1, v4, :cond_8

    if-eq v1, v2, :cond_5

    const/4 v5, 0x3

    if-eq v1, v5, :cond_2

    :goto_0
    return-void

    :cond_2
    if-ne v0, v4, :cond_3

    move v3, v4

    :cond_3
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->c:I

    if-ne v0, v2, :cond_4

    xor-int/lit8 v3, v3, 0x1

    :cond_4
    invoke-virtual {p0, p1, v3, v4}, Lcom/google/android/flexbox/FlexboxLayout;->c(Landroid/graphics/Canvas;ZZ)V

    return-void

    :cond_5
    if-ne v0, v4, :cond_6

    goto :goto_1

    :cond_6
    move v4, v3

    :goto_1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->c:I

    if-ne v0, v2, :cond_7

    xor-int/lit8 v4, v4, 0x1

    :cond_7
    invoke-virtual {p0, p1, v4, v3}, Lcom/google/android/flexbox/FlexboxLayout;->c(Landroid/graphics/Canvas;ZZ)V

    return-void

    :cond_8
    if-eq v0, v4, :cond_9

    move v0, v4

    goto :goto_2

    :cond_9
    move v0, v3

    :goto_2
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->c:I

    if-ne v1, v2, :cond_a

    move v3, v4

    :cond_a
    invoke-virtual {p0, p1, v0, v3}, Lcom/google/android/flexbox/FlexboxLayout;->b(Landroid/graphics/Canvas;ZZ)V

    return-void

    :cond_b
    if-ne v0, v4, :cond_c

    move v0, v4

    goto :goto_3

    :cond_c
    move v0, v3

    :goto_3
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->c:I

    if-ne v1, v2, :cond_d

    move v3, v4

    :cond_d
    invoke-virtual {p0, p1, v0, v3}, Lcom/google/android/flexbox/FlexboxLayout;->b(Landroid/graphics/Canvas;ZZ)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 9

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    if-ne p1, v2, :cond_0

    move v1, v2

    :cond_0
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->c:I

    if-ne p1, v3, :cond_1

    xor-int/lit8 v1, v1, 0x1

    :cond_1
    move v7, v1

    const/4 v8, 0x1

    move-object v2, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/flexbox/FlexboxLayout;->t(IIIIZZ)V

    return-void

    :cond_2
    const-string p1, "Invalid flex direction is set: "

    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayout;->b:I

    invoke-static {p0, p1}, Lj2;->c(ILjava/lang/String;)V

    return-void

    :cond_3
    if-ne p1, v2, :cond_4

    move v1, v2

    :cond_4
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->c:I

    if-ne p1, v3, :cond_5

    xor-int/lit8 v1, v1, 0x1

    :cond_5
    move v5, v1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/flexbox/FlexboxLayout;->t(IIIIZZ)V

    return-void

    :cond_6
    if-eq p1, v2, :cond_7

    move p1, v2

    goto :goto_0

    :cond_7
    move p1, v1

    :goto_0
    invoke-virtual/range {p0 .. p5}, Lcom/google/android/flexbox/FlexboxLayout;->s(ZIIII)V

    return-void

    :cond_8
    if-ne p1, v2, :cond_9

    move p1, v2

    goto :goto_1

    :cond_9
    move p1, v1

    :goto_1
    invoke-virtual/range {p0 .. p5}, Lcom/google/android/flexbox/FlexboxLayout;->s(ZIIII)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayout;->o:Landroid/util/SparseIntArray;

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, v0, Lcom/google/android/flexbox/FlexboxLayout;->o:Landroid/util/SparseIntArray;

    :cond_0
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayout;->p:Lcom/google/android/flexbox/b;

    iget-object v2, v9, Lcom/google/android/flexbox/b;->a:Lpc3;

    invoke-interface {v2}, Lpc3;->getFlexItemCount()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    const/4 v10, 0x0

    if-eq v4, v3, :cond_1

    goto :goto_1

    :cond_1
    move v4, v10

    :goto_0
    if-ge v4, v3, :cond_4

    invoke-interface {v2, v4}, Lpc3;->d(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/google/android/flexbox/FlexItem;

    invoke-interface {v5}, Lcom/google/android/flexbox/FlexItem;->getOrder()I

    move-result v5

    invoke-virtual {v1, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    if-eq v5, v6, :cond_3

    :goto_1
    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayout;->o:Landroid/util/SparseIntArray;

    iget-object v2, v9, Lcom/google/android/flexbox/b;->a:Lpc3;

    invoke-interface {v2}, Lpc3;->getFlexItemCount()I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/google/android/flexbox/b;->f(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/google/android/flexbox/b;->r(ILjava/util/ArrayList;Landroid/util/SparseIntArray;)[I

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/flexbox/FlexboxLayout;->n:[I

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    iget v1, v0, Lcom/google/android/flexbox/FlexboxLayout;->b:I

    const/4 v2, 0x0

    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayout;->r:Lcom/google/android/flexbox/b$a;

    const/4 v12, 0x3

    const/4 v13, 0x2

    if-eqz v1, :cond_7

    const/4 v3, 0x1

    if-eq v1, v3, :cond_7

    if-eq v1, v13, :cond_6

    if-ne v1, v12, :cond_5

    goto :goto_4

    :cond_5
    const-string v1, "Invalid value for the flex direction is set: "

    iget v0, v0, Lcom/google/android/flexbox/FlexboxLayout;->b:I

    invoke-static {v0, v1}, Lj2;->c(ILjava/lang/String;)V

    return-void

    :cond_6
    :goto_4
    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayout;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-object v2, v11, Lcom/google/android/flexbox/b$a;->a:Ljava/util/List;

    iput v10, v11, Lcom/google/android/flexbox/b$a;->b:I

    const/4 v7, -0x1

    const/4 v8, 0x0

    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayout;->p:Lcom/google/android/flexbox/b;

    iget-object v2, v0, Lcom/google/android/flexbox/FlexboxLayout;->r:Lcom/google/android/flexbox/b$a;

    const v5, 0x7fffffff

    const/4 v6, 0x0

    move/from16 v4, p1

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/flexbox/b;->b(Lcom/google/android/flexbox/b$a;IIIIILjava/util/List;)V

    move v15, v4

    move v4, v3

    move v3, v15

    iget-object v1, v11, Lcom/google/android/flexbox/b$a;->a:Ljava/util/List;

    iput-object v1, v0, Lcom/google/android/flexbox/FlexboxLayout;->q:Ljava/util/List;

    invoke-virtual {v9, v3, v4, v10}, Lcom/google/android/flexbox/b;->h(III)V

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v9, v3, v4, v2}, Lcom/google/android/flexbox/b;->g(III)V

    invoke-virtual {v9, v10}, Lcom/google/android/flexbox/b;->u(I)V

    iget v1, v0, Lcom/google/android/flexbox/FlexboxLayout;->b:I

    iget v2, v11, Lcom/google/android/flexbox/b$a;->b:I

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/google/android/flexbox/FlexboxLayout;->u(IIII)V

    return-void

    :cond_7
    move/from16 v3, p1

    move/from16 v4, p2

    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayout;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-object v2, v11, Lcom/google/android/flexbox/b$a;->a:Ljava/util/List;

    iput v10, v11, Lcom/google/android/flexbox/b$a;->b:I

    const/4 v7, -0x1

    const/4 v8, 0x0

    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayout;->p:Lcom/google/android/flexbox/b;

    iget-object v2, v0, Lcom/google/android/flexbox/FlexboxLayout;->r:Lcom/google/android/flexbox/b$a;

    const v5, 0x7fffffff

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/flexbox/b;->b(Lcom/google/android/flexbox/b$a;IIIIILjava/util/List;)V

    iget-object v1, v11, Lcom/google/android/flexbox/b$a;->a:Ljava/util/List;

    iput-object v1, v0, Lcom/google/android/flexbox/FlexboxLayout;->q:Ljava/util/List;

    invoke-virtual {v9, v3, v4, v10}, Lcom/google/android/flexbox/b;->h(III)V

    iget v1, v0, Lcom/google/android/flexbox/FlexboxLayout;->e:I

    if-ne v1, v12, :cond_c

    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayout;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/flexbox/a;

    const/high16 v5, -0x80000000

    move v6, v10

    :goto_6
    iget v7, v2, Lcom/google/android/flexbox/a;->h:I

    if-ge v6, v7, :cond_b

    iget v7, v2, Lcom/google/android/flexbox/a;->o:I

    add-int/2addr v7, v6

    invoke-virtual {v0, v7}, Lcom/google/android/flexbox/FlexboxLayout;->o(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v12, 0x8

    if-ne v8, v12, :cond_8

    goto :goto_7

    :cond_8
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    iget v12, v0, Lcom/google/android/flexbox/FlexboxLayout;->c:I

    iget v14, v2, Lcom/google/android/flexbox/a;->l:I

    if-eq v12, v13, :cond_9

    invoke-virtual {v7}, Landroid/view/View;->getBaseline()I

    move-result v12

    sub-int/2addr v14, v12

    iget v12, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {v14, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v12

    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_7

    :cond_9
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int/2addr v14, v12

    invoke-virtual {v7}, Landroid/view/View;->getBaseline()I

    move-result v12

    add-int/2addr v12, v14

    iget v14, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-static {v12, v14}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v7, v8

    add-int/2addr v7, v12

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_a
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_b
    iput v5, v2, Lcom/google/android/flexbox/a;->g:I

    goto :goto_5

    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v9, v3, v4, v2}, Lcom/google/android/flexbox/b;->g(III)V

    invoke-virtual {v9, v10}, Lcom/google/android/flexbox/b;->u(I)V

    iget v1, v0, Lcom/google/android/flexbox/FlexboxLayout;->b:I

    iget v2, v11, Lcom/google/android/flexbox/b$a;->b:I

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/google/android/flexbox/FlexboxLayout;->u(IIII)V

    return-void
.end method

.method public final p(II)Z
    .locals 5

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/4 v2, 0x0

    if-gt v1, p2, :cond_4

    sub-int v3, p1, v1

    invoke-virtual {p0, v3}, Lcom/google/android/flexbox/FlexboxLayout;->o(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_3

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->m()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayout;->k:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    return v0

    :cond_0
    return v2

    :cond_1
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayout;->j:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->m()Z

    move-result p1

    if-eqz p1, :cond_6

    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayout;->k:I

    and-int/2addr p0, v0

    if-eqz p0, :cond_5

    return v0

    :cond_5
    return v2

    :cond_6
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayout;->j:I

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    return v2
.end method

.method public final q(I)Z
    .locals 4

    const/4 v0, 0x0

    if-ltz p1, :cond_8

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_1

    :cond_0
    move v1, v0

    :goto_0
    const/4 v2, 0x1

    if-ge v1, p1, :cond_5

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayout;->q:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/flexbox/a;

    invoke-virtual {v3}, Lcom/google/android/flexbox/a;->a()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->m()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayout;->j:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    return v2

    :cond_1
    return v0

    :cond_2
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayout;->k:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->m()Z

    move-result p1

    if-eqz p1, :cond_7

    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayout;->j:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_6

    return v2

    :cond_6
    return v0

    :cond_7
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayout;->k:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_8

    return v2

    :cond_8
    :goto_1
    return v0
.end method

.method public final r(I)Z
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_5

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    add-int/2addr p1, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayout;->q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayout;->q:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/flexbox/a;

    invoke-virtual {v2}, Lcom/google/android/flexbox/a;->a()I

    move-result v2

    if-lez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->m()Z

    move-result p1

    if-eqz p1, :cond_4

    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayout;->j:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayout;->k:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_5

    return v1

    :cond_5
    :goto_1
    return v0
.end method

.method public final s(ZIIII)V
    .locals 24

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int v3, p5, p3

    sub-int v4, p4, p2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayout;->q:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_13

    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayout;->q:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v12, v9

    check-cast v12, Lcom/google/android/flexbox/a;

    invoke-virtual {v0, v8}, Lcom/google/android/flexbox/FlexboxLayout;->q(I)Z

    move-result v9

    if-eqz v9, :cond_0

    iget v9, v0, Lcom/google/android/flexbox/FlexboxLayout;->l:I

    sub-int/2addr v3, v9

    add-int/2addr v5, v9

    :cond_0
    move/from16 v16, v3

    iget v3, v0, Lcom/google/android/flexbox/FlexboxLayout;->d:I

    const/4 v9, 0x4

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v13, 0x1

    if-eqz v3, :cond_9

    if-eq v3, v13, :cond_8

    const/high16 v14, 0x40000000    # 2.0f

    if-eq v3, v10, :cond_7

    const/4 v15, 0x3

    if-eq v3, v15, :cond_5

    if-eq v3, v9, :cond_3

    const/4 v14, 0x5

    if-ne v3, v14, :cond_2

    invoke-virtual {v12}, Lcom/google/android/flexbox/a;->a()I

    move-result v3

    if-eqz v3, :cond_1

    iget v14, v12, Lcom/google/android/flexbox/a;->e:I

    sub-int v14, v4, v14

    int-to-float v14, v14

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    div-float/2addr v14, v3

    goto :goto_1

    :cond_1
    move v14, v11

    :goto_1
    int-to-float v3, v1

    add-float/2addr v3, v14

    sub-int v15, v4, v2

    int-to-float v15, v15

    sub-float/2addr v15, v14

    goto :goto_5

    :cond_2
    const-string v1, "Invalid justifyContent is set: "

    iget v0, v0, Lcom/google/android/flexbox/FlexboxLayout;->d:I

    invoke-static {v0, v1}, Lj2;->c(ILjava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {v12}, Lcom/google/android/flexbox/a;->a()I

    move-result v3

    if-eqz v3, :cond_4

    iget v15, v12, Lcom/google/android/flexbox/a;->e:I

    sub-int v15, v4, v15

    int-to-float v15, v15

    int-to-float v3, v3

    div-float/2addr v15, v3

    goto :goto_2

    :cond_4
    move v15, v11

    :goto_2
    int-to-float v3, v1

    div-float v14, v15, v14

    add-float/2addr v3, v14

    sub-int v7, v4, v2

    int-to-float v7, v7

    sub-float/2addr v7, v14

    move v14, v15

    move v15, v7

    goto :goto_5

    :cond_5
    int-to-float v3, v1

    invoke-virtual {v12}, Lcom/google/android/flexbox/a;->a()I

    move-result v7

    if-eq v7, v13, :cond_6

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    goto :goto_3

    :cond_6
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_3
    iget v14, v12, Lcom/google/android/flexbox/a;->e:I

    sub-int v14, v4, v14

    int-to-float v14, v14

    div-float/2addr v14, v7

    sub-int v7, v4, v2

    int-to-float v15, v7

    goto :goto_5

    :cond_7
    int-to-float v3, v1

    iget v7, v12, Lcom/google/android/flexbox/a;->e:I

    sub-int v15, v4, v7

    int-to-float v15, v15

    div-float/2addr v15, v14

    add-float/2addr v3, v15

    sub-int v15, v4, v2

    int-to-float v15, v15

    sub-int v7, v4, v7

    int-to-float v7, v7

    div-float/2addr v7, v14

    sub-float/2addr v15, v7

    :goto_4
    move v14, v11

    goto :goto_5

    :cond_8
    iget v3, v12, Lcom/google/android/flexbox/a;->e:I

    sub-int v7, v4, v3

    add-int/2addr v7, v2

    int-to-float v7, v7

    sub-int/2addr v3, v1

    int-to-float v15, v3

    move v3, v7

    goto :goto_4

    :cond_9
    int-to-float v3, v1

    sub-int v7, v4, v2

    int-to-float v15, v7

    goto :goto_4

    :goto_5
    invoke-static {v14, v11}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const/4 v11, 0x0

    :goto_6
    iget v14, v12, Lcom/google/android/flexbox/a;->h:I

    if-ge v11, v14, :cond_12

    iget v14, v12, Lcom/google/android/flexbox/a;->o:I

    add-int/2addr v14, v11

    invoke-virtual {v0, v14}, Lcom/google/android/flexbox/FlexboxLayout;->o(I)Landroid/view/View;

    move-result-object v17

    move/from16 p3, v9

    if-eqz v17, :cond_11

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getVisibility()I

    move-result v9

    move/from16 p4, v13

    const/16 v13, 0x8

    if-ne v9, v13, :cond_a

    move/from16 v22, p4

    :goto_7
    move/from16 v21, v10

    move/from16 v17, v11

    move/from16 v23, v16

    goto/16 :goto_f

    :cond_a
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    iget v13, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v13, v13

    add-float/2addr v3, v13

    iget v13, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    int-to-float v13, v13

    sub-float/2addr v15, v13

    invoke-virtual {v0, v14, v11}, Lcom/google/android/flexbox/FlexboxLayout;->p(II)Z

    move-result v13

    if-eqz v13, :cond_b

    iget v13, v0, Lcom/google/android/flexbox/FlexboxLayout;->m:I

    int-to-float v14, v13

    add-float/2addr v3, v14

    sub-float/2addr v15, v14

    move/from16 v18, v13

    :goto_8
    move/from16 v19, v15

    goto :goto_9

    :cond_b
    const/16 v18, 0x0

    goto :goto_8

    :goto_9
    iget v13, v12, Lcom/google/android/flexbox/a;->h:I

    add-int/lit8 v13, v13, -0x1

    if-ne v11, v13, :cond_c

    iget v13, v0, Lcom/google/android/flexbox/FlexboxLayout;->k:I

    and-int/lit8 v13, v13, 0x4

    if-lez v13, :cond_c

    iget v13, v0, Lcom/google/android/flexbox/FlexboxLayout;->m:I

    move/from16 v20, v13

    goto :goto_a

    :cond_c
    const/16 v20, 0x0

    :goto_a
    iget v13, v0, Lcom/google/android/flexbox/FlexboxLayout;->c:I

    if-ne v13, v10, :cond_e

    move v13, v10

    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayout;->p:Lcom/google/android/flexbox/b;

    if-eqz p1, :cond_d

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int v15, v16, v15

    move/from16 v21, v13

    move v13, v14

    move v14, v15

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v15

    move-object/from16 v22, v17

    move/from16 v17, v11

    move-object/from16 v11, v22

    move/from16 v22, p4

    invoke-virtual/range {v10 .. v16}, Lcom/google/android/flexbox/b;->o(Landroid/view/View;Lcom/google/android/flexbox/a;IIII)V

    :goto_b
    move/from16 v23, v16

    goto :goto_c

    :cond_d
    move-object/from16 v21, v17

    move/from16 v17, v11

    move-object/from16 v11, v21

    move/from16 v22, p4

    move/from16 v21, v13

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int v14, v16, v14

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v15

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    add-int v15, v23, v15

    invoke-virtual/range {v10 .. v16}, Lcom/google/android/flexbox/b;->o(Landroid/view/View;Lcom/google/android/flexbox/a;IIII)V

    goto :goto_b

    :cond_e
    move-object/from16 v21, v17

    move/from16 v17, v11

    move-object/from16 v11, v21

    move/from16 v22, p4

    move/from16 v21, v10

    move/from16 v23, v16

    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayout;->p:Lcom/google/android/flexbox/b;

    if-eqz p1, :cond_f

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v15

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int v16, v14, v5

    move v14, v5

    invoke-virtual/range {v10 .. v16}, Lcom/google/android/flexbox/b;->o(Landroid/view/View;Lcom/google/android/flexbox/a;IIII)V

    goto :goto_c

    :cond_f
    move v14, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v5

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int v16, v5, v14

    invoke-virtual/range {v10 .. v16}, Lcom/google/android/flexbox/b;->o(Landroid/view/View;Lcom/google/android/flexbox/a;IIII)V

    move v5, v14

    :goto_c
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v7

    iget v13, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    int-to-float v13, v13

    add-float/2addr v10, v13

    add-float/2addr v3, v10

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v7

    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v9, v9

    add-float/2addr v10, v9

    sub-float v19, v19, v10

    if-eqz p1, :cond_10

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object v10, v12

    move/from16 v14, v18

    move/from16 v12, v20

    invoke-virtual/range {v10 .. v15}, Lcom/google/android/flexbox/a;->b(Landroid/view/View;IIII)V

    :goto_d
    move-object v12, v10

    goto :goto_e

    :cond_10
    move/from16 v14, v18

    move/from16 v13, v20

    const/4 v9, 0x0

    const/4 v15, 0x0

    move-object v10, v12

    move v12, v14

    move v14, v13

    move v13, v9

    invoke-virtual/range {v10 .. v15}, Lcom/google/android/flexbox/a;->b(Landroid/view/View;IIII)V

    goto :goto_d

    :goto_e
    move/from16 v15, v19

    goto :goto_f

    :cond_11
    move/from16 v22, v13

    goto/16 :goto_7

    :goto_f
    add-int/lit8 v11, v17, 0x1

    move/from16 v9, p3

    move/from16 v10, v21

    move/from16 v13, v22

    move/from16 v16, v23

    goto/16 :goto_6

    :cond_12
    move/from16 v23, v16

    iget v3, v12, Lcom/google/android/flexbox/a;->g:I

    add-int/2addr v5, v3

    sub-int v3, v23, v3

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_13
    return-void
.end method

.method public setAlignContent(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->f:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->f:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setAlignItems(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->e:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->e:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->h:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->h:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->l:I

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->l:I

    :goto_0
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->h:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->i:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->i:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->i:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->m:I

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->m:I

    :goto_0
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->h:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->i:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setFlexDirection(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->b:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->b:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setFlexLines(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->q:Ljava/util/List;

    return-void
.end method

.method public setFlexWrap(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->c:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->c:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setJustifyContent(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->d:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->d:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setMaxLine(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->g:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->g:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setShowDivider(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->setShowDividerVertical(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->setShowDividerHorizontal(I)V

    return-void
.end method

.method public setShowDividerHorizontal(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->j:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->j:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setShowDividerVertical(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->k:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->k:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final t(IIIIZZ)V
    .locals 24

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int v5, p3, p1

    sub-int v6, p4, p2

    sub-int/2addr v5, v3

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayout;->q:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v3, :cond_13

    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayout;->q:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v12, v9

    check-cast v12, Lcom/google/android/flexbox/a;

    invoke-virtual {v0, v8}, Lcom/google/android/flexbox/FlexboxLayout;->q(I)Z

    move-result v9

    if-eqz v9, :cond_0

    iget v9, v0, Lcom/google/android/flexbox/FlexboxLayout;->m:I

    add-int/2addr v4, v9

    sub-int/2addr v5, v9

    :cond_0
    move/from16 v16, v5

    iget v5, v0, Lcom/google/android/flexbox/FlexboxLayout;->d:I

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v5, :cond_9

    if-eq v5, v11, :cond_8

    const/4 v13, 0x2

    const/high16 v14, 0x40000000    # 2.0f

    if-eq v5, v13, :cond_7

    const/4 v13, 0x3

    if-eq v5, v13, :cond_5

    if-eq v5, v9, :cond_3

    const/4 v13, 0x5

    if-ne v5, v13, :cond_2

    invoke-virtual {v12}, Lcom/google/android/flexbox/a;->a()I

    move-result v5

    if-eqz v5, :cond_1

    iget v13, v12, Lcom/google/android/flexbox/a;->e:I

    sub-int v13, v6, v13

    int-to-float v13, v13

    add-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    div-float/2addr v13, v5

    goto :goto_1

    :cond_1
    move v13, v10

    :goto_1
    int-to-float v5, v1

    add-float/2addr v5, v13

    sub-int v14, v6, v2

    int-to-float v14, v14

    sub-float/2addr v14, v13

    goto :goto_5

    :cond_2
    const-string v1, "Invalid justifyContent is set: "

    iget v0, v0, Lcom/google/android/flexbox/FlexboxLayout;->d:I

    invoke-static {v0, v1}, Lj2;->c(ILjava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {v12}, Lcom/google/android/flexbox/a;->a()I

    move-result v5

    if-eqz v5, :cond_4

    iget v13, v12, Lcom/google/android/flexbox/a;->e:I

    sub-int v13, v6, v13

    int-to-float v13, v13

    int-to-float v5, v5

    div-float/2addr v13, v5

    goto :goto_2

    :cond_4
    move v13, v10

    :goto_2
    int-to-float v5, v1

    div-float v14, v13, v14

    add-float/2addr v5, v14

    sub-int v15, v6, v2

    int-to-float v15, v15

    sub-float v14, v15, v14

    goto :goto_5

    :cond_5
    int-to-float v5, v1

    invoke-virtual {v12}, Lcom/google/android/flexbox/a;->a()I

    move-result v13

    if-eq v13, v11, :cond_6

    add-int/lit8 v13, v13, -0x1

    int-to-float v13, v13

    goto :goto_3

    :cond_6
    const/high16 v13, 0x3f800000    # 1.0f

    :goto_3
    iget v14, v12, Lcom/google/android/flexbox/a;->e:I

    sub-int v14, v6, v14

    int-to-float v14, v14

    div-float v13, v14, v13

    sub-int v14, v6, v2

    int-to-float v14, v14

    goto :goto_5

    :cond_7
    int-to-float v5, v1

    iget v13, v12, Lcom/google/android/flexbox/a;->e:I

    sub-int v13, v6, v13

    int-to-float v13, v13

    div-float/2addr v13, v14

    add-float/2addr v5, v13

    sub-int v14, v6, v2

    int-to-float v14, v14

    sub-float/2addr v14, v13

    :goto_4
    move v13, v10

    goto :goto_5

    :cond_8
    iget v5, v12, Lcom/google/android/flexbox/a;->e:I

    sub-int v13, v6, v5

    add-int/2addr v13, v2

    int-to-float v13, v13

    sub-int/2addr v5, v1

    int-to-float v14, v5

    move v5, v13

    goto :goto_4

    :cond_9
    int-to-float v5, v1

    sub-int v13, v6, v2

    int-to-float v14, v13

    goto :goto_4

    :goto_5
    invoke-static {v13, v10}, Ljava/lang/Math;->max(FF)F

    move-result v18

    const/4 v10, 0x0

    :goto_6
    iget v13, v12, Lcom/google/android/flexbox/a;->h:I

    if-ge v10, v13, :cond_12

    iget v13, v12, Lcom/google/android/flexbox/a;->o:I

    add-int/2addr v13, v10

    move v15, v11

    invoke-virtual {v0, v13}, Lcom/google/android/flexbox/FlexboxLayout;->o(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_11

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v7

    move/from16 p2, v9

    const/16 v9, 0x8

    if-ne v7, v9, :cond_a

    :goto_7
    move/from16 v22, v10

    move/from16 v21, v15

    move/from16 v23, v16

    goto/16 :goto_10

    :cond_a
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    iget v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v9, v9

    add-float/2addr v5, v9

    iget v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float v9, v9

    sub-float/2addr v14, v9

    invoke-virtual {v0, v13, v10}, Lcom/google/android/flexbox/FlexboxLayout;->p(II)Z

    move-result v9

    if-eqz v9, :cond_b

    iget v9, v0, Lcom/google/android/flexbox/FlexboxLayout;->l:I

    int-to-float v13, v9

    add-float/2addr v5, v13

    sub-float/2addr v14, v13

    :goto_8
    move/from16 v19, v14

    goto :goto_9

    :cond_b
    const/4 v9, 0x0

    goto :goto_8

    :goto_9
    iget v13, v12, Lcom/google/android/flexbox/a;->h:I

    sub-int/2addr v13, v15

    if-ne v10, v13, :cond_c

    iget v13, v0, Lcom/google/android/flexbox/FlexboxLayout;->j:I

    and-int/lit8 v13, v13, 0x4

    if-lez v13, :cond_c

    iget v13, v0, Lcom/google/android/flexbox/FlexboxLayout;->l:I

    move/from16 v20, v13

    :goto_a
    move v13, v10

    goto :goto_b

    :cond_c
    const/16 v20, 0x0

    goto :goto_a

    :goto_b
    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayout;->p:Lcom/google/android/flexbox/b;

    if-eqz p5, :cond_e

    if-eqz p6, :cond_d

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int v14, v16, v14

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v17

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    sub-int v17, v17, v21

    move/from16 v21, v15

    move/from16 v15, v17

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v17

    move/from16 v22, v13

    const/4 v13, 0x1

    invoke-virtual/range {v10 .. v17}, Lcom/google/android/flexbox/b;->p(Landroid/view/View;Lcom/google/android/flexbox/a;ZIIII)V

    :goto_c
    move/from16 v23, v16

    goto :goto_d

    :cond_d
    move/from16 v22, v13

    move/from16 v21, v15

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    sub-int v14, v16, v13

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v15

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    add-int v17, v17, v13

    const/4 v13, 0x1

    invoke-virtual/range {v10 .. v17}, Lcom/google/android/flexbox/b;->p(Landroid/view/View;Lcom/google/android/flexbox/a;ZIIII)V

    goto :goto_c

    :cond_e
    move/from16 v22, v13

    move/from16 v21, v15

    move/from16 v23, v16

    if-eqz p6, :cond_f

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int v15, v13, v14

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int v16, v13, v4

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v17

    const/4 v13, 0x0

    move v14, v4

    invoke-virtual/range {v10 .. v17}, Lcom/google/android/flexbox/b;->p(Landroid/view/View;Lcom/google/android/flexbox/a;ZIIII)V

    goto :goto_d

    :cond_f
    move v14, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v15

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int v16, v4, v14

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int v17, v13, v4

    const/4 v13, 0x0

    invoke-virtual/range {v10 .. v17}, Lcom/google/android/flexbox/b;->p(Landroid/view/View;Lcom/google/android/flexbox/a;ZIIII)V

    move v4, v14

    :goto_d
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    add-float v10, v10, v18

    iget v13, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float v13, v13

    add-float/2addr v10, v13

    add-float/2addr v5, v10

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    add-float v10, v10, v18

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v7, v7

    add-float/2addr v10, v7

    sub-float v19, v19, v10

    if-eqz p6, :cond_10

    move-object v10, v12

    const/4 v12, 0x0

    const/4 v14, 0x0

    move v15, v9

    move/from16 v13, v20

    invoke-virtual/range {v10 .. v15}, Lcom/google/android/flexbox/a;->b(Landroid/view/View;IIII)V

    :goto_e
    move-object v12, v10

    goto :goto_f

    :cond_10
    move v13, v9

    move-object v10, v12

    move/from16 v15, v20

    const/4 v12, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v10 .. v15}, Lcom/google/android/flexbox/a;->b(Landroid/view/View;IIII)V

    goto :goto_e

    :goto_f
    move/from16 v14, v19

    goto :goto_10

    :cond_11
    move/from16 p2, v9

    goto/16 :goto_7

    :goto_10
    add-int/lit8 v10, v22, 0x1

    move/from16 v9, p2

    move/from16 v11, v21

    move/from16 v16, v23

    goto/16 :goto_6

    :cond_12
    move/from16 v23, v16

    iget v5, v12, Lcom/google/android/flexbox/a;->g:I

    add-int/2addr v4, v5

    sub-int v5, v23, v5

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_13
    return-void
.end method

.method public final u(IIII)V
    .locals 8

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    if-eq p1, v4, :cond_2

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1

    const/4 v4, 0x3

    if-ne p1, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Invalid flex direction: "

    invoke-static {p1, p0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getLargestMainSize()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getSumOfCrossSize()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v4, v5

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getSumOfCrossSize()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    add-int/2addr p1, v4

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getLargestMainSize()I

    move-result v4

    :goto_1
    const/high16 v5, 0x1000000

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, -0x80000000

    if-eq v0, v7, :cond_6

    if-eqz v0, :cond_5

    if-ne v0, v6, :cond_4

    if-ge v1, v4, :cond_3

    invoke-static {p4, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result p4

    :cond_3
    invoke-static {v1, p2, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    goto :goto_3

    :cond_4
    const-string p0, "Unknown width mode is set: "

    invoke-static {v0, p0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-static {v4, p2, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    goto :goto_3

    :cond_6
    if-ge v1, v4, :cond_7

    invoke-static {p4, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result p4

    goto :goto_2

    :cond_7
    move v1, v4

    :goto_2
    invoke-static {v1, p2, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    :goto_3
    const/16 v0, 0x100

    if-eq v2, v7, :cond_b

    if-eqz v2, :cond_a

    if-ne v2, v6, :cond_9

    if-ge v3, p1, :cond_8

    invoke-static {p4, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result p4

    :cond_8
    invoke-static {v3, p3, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    goto :goto_5

    :cond_9
    const-string p0, "Unknown height mode is set: "

    invoke-static {v2, p0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_a
    invoke-static {p1, p3, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    goto :goto_5

    :cond_b
    if-ge v3, p1, :cond_c

    invoke-static {p4, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result p4

    goto :goto_4

    :cond_c
    move v3, p1

    :goto_4
    invoke-static {v3, p3, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    :goto_5
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method
