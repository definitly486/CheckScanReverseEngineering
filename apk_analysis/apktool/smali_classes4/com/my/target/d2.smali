.class public final Lcom/my/target/d2;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/d2$b;
    }
.end annotation


# static fields
.field public static final synthetic m:I


# instance fields
.field public final b:Landroidx/recyclerview/widget/RecyclerView;

.field public final c:Lcom/my/target/e6;

.field public final d:Lcom/my/target/e6;

.field public final e:Lcom/my/target/b;

.field public final f:Llfa;

.field public final g:Lw2a;

.field public final h:Lko9;

.field public final i:Lyu9;

.field public final j:Lcom/my/target/d2$b;

.field public k:Ljava/util/List;

.field public l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/my/target/d2$b;)V
    .locals 7

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/my/target/d2;->j:Lcom/my/target/d2$b;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/my/target/d2;->l:I

    new-instance v0, Lko9;

    invoke-direct {v0, p1}, Lko9;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/d2;->h:Lko9;

    new-instance v1, Lyu9;

    invoke-direct {v1, p1}, Lyu9;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/my/target/d2;->i:Lyu9;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lls9;

    invoke-direct {v1, p0, p2}, Lls9;-><init>(Lcom/my/target/d2;Lcom/my/target/d2$b;)V

    new-instance v2, Lcom/my/target/b;

    invoke-direct {v2, v1}, Lcom/my/target/b;-><init>(Lls9;)V

    iput-object v2, p0, Lcom/my/target/d2;->e:Lcom/my/target/b;

    new-instance v1, Lw2a;

    sget v3, Lko9;->g:I

    iget-object v0, v0, Lko9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    invoke-direct {v1, v4}, Lw2a;-><init>(I)V

    iput-object v1, p0, Lcom/my/target/d2;->g:Lw2a;

    new-instance v4, Llfa;

    sget v5, Lko9;->n:I

    invoke-virtual {v0, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-direct {v4, v5, v0}, Llfa;-><init>(II)V

    iput-object v4, p0, Lcom/my/target/d2;->f:Llfa;

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    iput-object v0, p0, Lcom/my/target/d2;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/my/target/d2;->f()Landroid/graphics/Bitmap;

    move-result-object v3

    const v5, 0x800015

    invoke-virtual {p0, p1, v3, v5}, Lcom/my/target/d2;->b(Landroid/content/Context;Landroid/graphics/Bitmap;I)Lcom/my/target/e6;

    move-result-object v3

    iput-object v3, p0, Lcom/my/target/d2;->c:Lcom/my/target/e6;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/my/target/d2;->e()Landroid/graphics/Bitmap;

    move-result-object v5

    const v6, 0x800013

    invoke-virtual {p0, p1, v5, v6}, Lcom/my/target/d2;->b(Landroid/content/Context;Landroid/graphics/Bitmap;I)Lcom/my/target/e6;

    move-result-object p1

    iput-object p1, p0, Lcom/my/target/d2;->d:Lcom/my/target/e6;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/my/target/d2;->h()V

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget p1, p0, Lcom/my/target/d2;->l:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :goto_0
    new-instance p1, Lcom/my/target/d2$a;

    invoke-direct {p1, p0, p2}, Lcom/my/target/d2$a;-><init>(Lcom/my/target/d2;Lcom/my/target/d2$b;)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    invoke-virtual {p0}, Lcom/my/target/d2;->c()V

    invoke-virtual {p0}, Lcom/my/target/d2;->d()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/my/target/d2;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/my/target/d2;->getVisibleCards()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getVisibleCards()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfo9;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/my/target/d2;->k:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/my/target/d2;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    instance-of v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v2, :cond_1

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v2

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    move v1, v2

    :goto_0
    if-gt v2, v1, :cond_3

    if-ltz v2, :cond_3

    iget-object v3, p0, Lcom/my/target/d2;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    if-gt v2, v1, :cond_3

    iget-object v3, p0, Lcom/my/target/d2;->k:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfo9;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-object v0
.end method


# virtual methods
.method public final b(Landroid/content/Context;Landroid/graphics/Bitmap;I)Lcom/my/target/e6;
    .locals 3

    new-instance v0, Lcom/my/target/e6;

    invoke-direct {v0, p1}, Lcom/my/target/e6;-><init>(Landroid/content/Context;)V

    sget p1, Lko9;->D:I

    iget-object v1, p0, Lcom/my/target/d2;->h:Lko9;

    iget-object v2, v1, Lko9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sget p1, Lko9;->g:I

    iget-object v1, v1, Lko9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    invoke-virtual {v2, p1, p1, p1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iput p3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Lcom/my/target/e6;->a(Landroid/graphics/Bitmap;Z)V

    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    sget p2, Lyu9;->l:I

    iget-object p0, p0, Lcom/my/target/d2;->i:Lyu9;

    iget-object p0, p0, Lyu9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    sget p0, Lko9;->e:I

    invoke-virtual {v1, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    const/4 p2, -0x1

    invoke-virtual {p1, p0, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public final c()V
    .locals 5

    iget v0, p0, Lcom/my/target/d2;->l:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/my/target/d2;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v4, 0x2

    iget-object p0, p0, Lcom/my/target/d2;->h:Lko9;

    if-ne v0, v4, :cond_0

    sget v0, Lko9;->r:I

    iget-object v4, p0, Lko9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    iget-object p0, p0, Lko9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    invoke-virtual {v3, v4, v2, v4, p0}, Landroid/view/View;->setPadding(IIII)V

    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_0
    sget v0, Lko9;->k:I

    iget-object p0, p0, Lko9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    invoke-virtual {v3, p0, v2, p0, v2}, Landroid/view/View;->setPadding(IIII)V

    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :goto_0
    invoke-virtual {v3, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public final d()V
    .locals 6

    iget-object v0, p0, Lcom/my/target/d2;->c:Lcom/my/target/e6;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/my/target/d2;->d:Lcom/my/target/e6;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/my/target/d2;->l:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const v4, 0x800015

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const v4, 0x800013

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_0
    const/16 v4, 0x51

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v4, 0x31

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_0
    invoke-virtual {p0}, Lcom/my/target/d2;->f()Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/my/target/e6;->a(Landroid/graphics/Bitmap;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/my/target/d2;->e()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v2, p0, v5}, Lcom/my/target/e6;->a(Landroid/graphics/Bitmap;Z)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final e()Landroid/graphics/Bitmap;
    .locals 10

    sget v0, Lko9;->u:I

    iget-object v1, p0, Lcom/my/target/d2;->h:Lko9;

    iget-object v1, v1, Lko9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    iget v1, p0, Lcom/my/target/d2;->l:I

    const/4 v2, 0x2

    const/4 v3, -0x1

    const-string v4, "BaseResources: Cannot build icon - OOME"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :try_start_0
    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {v5, v4}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v5

    :goto_0
    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "M9.01777 12L15.1339 5.88388C15.622 5.39573 15.622 4.60427 15.1339 4.11612C14.6457 3.62796 13.8543 3.62796 13.3661 4.11612L6.36612 11.1161C5.87796 11.6043 5.87796 12.3957 6.36612 12.8839L13.3661 19.8839C13.8543 20.372 14.6457 20.372 15.1339 19.8839C15.622 19.3957 15.622 18.6043 15.1339 18.1161L9.01777 12Z"

    invoke-static {v2}, Landroidx/core/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v2

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v8, v8

    iget v9, v4, Landroid/graphics/RectF;->top:F

    neg-float v9, v9

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v5, p0, p0}, Landroid/graphics/Matrix;->postScale(FF)Z

    int-to-float v0, v0

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v8

    mul-float/2addr v8, p0

    sub-float v8, v0, v8

    div-float/2addr v8, v7

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v4, p0

    sub-float/2addr v0, v4

    div-float/2addr v0, v7

    invoke-virtual {v5, v8, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v2, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object v5, v1

    :goto_1
    return-object v5

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :try_start_1
    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    invoke-static {v5, v4}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v5

    :goto_2
    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    const-string v2, "M12 9.01777L5.88388 15.1339C5.39573 15.622 4.60427 15.622 4.11612 15.1339C3.62796 14.6457 3.62796 13.8543 4.11612 13.3661L11.1161 6.36612C11.6043 5.87796 12.3957 5.87796 12.8839 6.36612L19.8839 13.3661C20.372 13.8543 20.372 14.6457 19.8839 15.1339C19.3957 15.622 18.6043 15.622 18.1161 15.1339L12 9.01777Z"

    invoke-static {v2}, Landroidx/core/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v2

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v8, v8

    iget v9, v4, Landroid/graphics/RectF;->top:F

    neg-float v9, v9

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v5, p0, p0}, Landroid/graphics/Matrix;->postScale(FF)Z

    int-to-float v0, v0

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v8

    mul-float/2addr v8, p0

    sub-float v8, v0, v8

    div-float/2addr v8, v7

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v4, p0

    sub-float/2addr v0, v4

    div-float/2addr v0, v7

    invoke-virtual {v5, v8, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v2, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object v5, v1

    :goto_3
    return-object v5
.end method

.method public final f()Landroid/graphics/Bitmap;
    .locals 10

    sget v0, Lko9;->u:I

    iget-object v1, p0, Lcom/my/target/d2;->h:Lko9;

    iget-object v1, v1, Lko9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    iget v1, p0, Lcom/my/target/d2;->l:I

    const/4 v2, 0x2

    const/4 v3, -0x1

    const-string v4, "BaseResources: Cannot build icon - OOME"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :try_start_0
    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {v5, v4}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v5

    :goto_0
    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "M14.9822 12L8.86612 5.88388C8.37796 5.39573 8.37796 4.60427 8.86612 4.11612C9.35427 3.62796 10.1457 3.62796 10.6339 4.11612L17.6339 11.1161C18.122 11.6043 18.122 12.3957 17.6339 12.8839L10.6339 19.8839C10.1457 20.372 9.35427 20.372 8.86612 19.8839C8.37796 19.3957 8.37796 18.6043 8.86612 18.1161L14.9822 12Z"

    invoke-static {v2}, Landroidx/core/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v2

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v8, v8

    iget v9, v4, Landroid/graphics/RectF;->top:F

    neg-float v9, v9

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v5, p0, p0}, Landroid/graphics/Matrix;->postScale(FF)Z

    int-to-float v0, v0

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v8

    mul-float/2addr v8, p0

    sub-float v8, v0, v8

    div-float/2addr v8, v7

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v4, p0

    sub-float/2addr v0, v4

    div-float/2addr v0, v7

    invoke-virtual {v5, v8, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v2, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object v5, v1

    :goto_1
    return-object v5

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :try_start_1
    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    invoke-static {v5, v4}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v5

    :goto_2
    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    const-string v2, "M12 14.9822L5.88388 8.86612C5.39573 8.37796 4.60427 8.37796 4.11612 8.86612C3.62796 9.35427 3.62796 10.1457 4.11612 10.6339L11.1161 17.6339C11.6043 18.122 12.3957 18.122 12.8839 17.6339L19.8839 10.6339C20.372 10.1457 20.372 9.35427 19.8839 8.86612C19.3957 8.37796 18.6043 8.37796 18.1161 8.86612L12 14.9822Z"

    invoke-static {v2}, Landroidx/core/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v2

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v8, v8

    iget v9, v4, Landroid/graphics/RectF;->top:F

    neg-float v9, v9

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v5, p0, p0}, Landroid/graphics/Matrix;->postScale(FF)Z

    int-to-float v0, v0

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v8

    mul-float/2addr v8, p0

    sub-float v8, v0, v8

    div-float/2addr v8, v7

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v4, p0

    sub-float/2addr v0, v4

    div-float/2addr v0, v7

    invoke-virtual {v5, v8, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v2, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object v5, v1

    :goto_3
    return-object v5
.end method

.method public final g()V
    .locals 6

    iget-object v0, p0, Lcom/my/target/d2;->k:Ljava/util/List;

    iget-object v1, p0, Lcom/my/target/d2;->c:Lcom/my/target/e6;

    iget-object v2, p0, Lcom/my/target/d2;->d:Lcom/my/target/e6;

    const/16 v3, 0x8

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/my/target/d2;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v4

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v5

    move v4, v0

    :goto_0
    if-gtz v4, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/my/target/d2;->e:Lcom/my/target/b;

    iget-object p0, p0, Lcom/my/target/b;->i:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-ne v0, p0, :cond_3

    goto :goto_2

    :cond_3
    move v3, v5

    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_4
    :goto_3
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public getMoreButton()Lcom/my/target/e6;
    .locals 0

    iget-object p0, p0, Lcom/my/target/d2;->c:Lcom/my/target/e6;

    return-object p0
.end method

.method public final h()V
    .locals 6

    iget v0, p0, Lcom/my/target/d2;->l:I

    iget-object v1, p0, Lcom/my/target/d2;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v0, v4, v3, v5, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :goto_0
    iget-object v0, p0, Lcom/my/target/d2;->j:Lcom/my/target/d2$b;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/my/target/d2;->getVisibleCards()Ljava/util/List;

    move-result-object v1

    check-cast v0, Lcom/my/target/z1;

    invoke-virtual {v0, v1, p0}, Lcom/my/target/z1;->h(Ljava/util/List;Lcom/my/target/d2;)V

    :cond_1
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget v0, p0, Lcom/my/target/d2;->l:I

    iget-object v1, p0, Lcom/my/target/d2;->d:Lcom/my/target/e6;

    iget-object v2, p0, Lcom/my/target/d2;->e:Lcom/my/target/b;

    iget-object v3, p0, Lcom/my/target/d2;->c:Lcom/my/target/e6;

    const/4 v4, 0x2

    iget-object p0, p0, Lcom/my/target/d2;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v0, v4, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v4

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    if-ne p1, v3, :cond_1

    iget-object v2, v2, Lcom/my/target/b;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v4, v2, :cond_1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void

    :cond_1
    if-ne p1, v1, :cond_5

    if-lez v0, :cond_5

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v4

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    iget-object v2, v2, Lcom/my/target/b;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne p1, v3, :cond_4

    add-int/lit8 v2, v2, -0x1

    if-ge v4, v2, :cond_4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void

    :cond_4
    if-ne p1, v1, :cond_5

    if-lez v0, :cond_5

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/my/target/d2;->l:I

    invoke-virtual {p0}, Lcom/my/target/d2;->h()V

    iget p1, p0, Lcom/my/target/d2;->l:I

    iget-object v0, p0, Lcom/my/target/d2;->g:Lw2a;

    iget-object v1, p0, Lcom/my/target/d2;->f:Llfa;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/my/target/d2;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-ne p1, v2, :cond_0

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :goto_0
    invoke-virtual {p0}, Lcom/my/target/d2;->d()V

    invoke-virtual {p0}, Lcom/my/target/d2;->c()V

    invoke-virtual {p0}, Lcom/my/target/d2;->g()V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfo9;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/my/target/d2;->e:Lcom/my/target/b;

    iput-object p1, v0, Lcom/my/target/b;->i:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lcom/my/target/b;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/my/target/d2;->k:Ljava/util/List;

    return-void
.end method
