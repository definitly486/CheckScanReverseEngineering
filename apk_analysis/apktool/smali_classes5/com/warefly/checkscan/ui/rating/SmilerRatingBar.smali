.class public final Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field public static final i:Landroid/graphics/Bitmap$Config;


# instance fields
.field public final b:Landroid/graphics/Canvas;

.field public final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lrx6;",
            "Lox6;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroid/graphics/RectF;

.field public e:F

.field public f:F

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lv38;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "-",
            "Lrx6;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->i:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 176
    invoke-direct {p0, p1, v0}, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 175
    invoke-direct {p0, p1, p2, v0}, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p2, 0x7f080244

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 p3, 0x38

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    :cond_1
    sget-object p1, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->i:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p3, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p3, p0, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->b:Landroid/graphics/Canvas;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->c:Ljava/util/HashMap;

    new-instance p1, Landroid/graphics/RectF;

    const/4 p3, 0x0

    invoke-direct {p1, p3, p3, p3, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->d:Landroid/graphics/RectF;

    new-instance p1, Lv38;

    const p3, 0x7f08024a

    invoke-virtual {p0, p3}, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    const v0, 0x7f08024d

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Lrx6;->VeryBad:Lrx6;

    const/4 v2, 0x1

    invoke-direct {p1, p3, v0, v2, v1}, Lv38;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZLrx6;)V

    new-instance p3, Lv38;

    const v0, 0x7f080246

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0x7f080240

    invoke-virtual {p0, v1}, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v3, Lrx6;->Bad:Lrx6;

    invoke-direct {p3, v0, v1, v2, v3}, Lv38;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZLrx6;)V

    new-instance v0, Lv38;

    const v1, 0x7f080248

    invoke-virtual {p0, v1}, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v3, 0x7f080243

    invoke-virtual {p0, v3}, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget-object v4, Lrx6;->Middle:Lrx6;

    invoke-direct {v0, v1, v3, v2, v4}, Lv38;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZLrx6;)V

    new-instance v1, Lv38;

    const v3, 0x7f080247

    invoke-virtual {p0, v3}, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f080242

    invoke-virtual {p0, v4}, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget-object v5, Lrx6;->Good:Lrx6;

    invoke-direct {v1, v3, v4, v2, v5}, Lv38;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZLrx6;)V

    new-instance v3, Lv38;

    const v4, 0x7f080249

    invoke-virtual {p0, v4}, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, p2}, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget-object v5, Lrx6;->Perfect:Lrx6;

    invoke-direct {v3, v4, p2, v2, v5}, Lv38;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZLrx6;)V

    filled-new-array {p1, p3, v0, v1, v3}, [Lv38;

    move-result-object p1

    invoke-static {p1}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lis2;

    invoke-direct {p0, p1}, Lis2;-><init>(I)V

    throw p0
.end method

.method public final getCurrentSelectedRating()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lv38;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->g:Ljava/util/List;

    return-object p0
.end method

.method public final getRatingListener()Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Lrx6;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->h:Lnl3;

    return-object p0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->g:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    const/4 v5, 0x0

    if-ltz v2, :cond_2

    check-cast v3, Lv38;

    iget v6, p0, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->f:F

    int-to-float v7, v2

    mul-float/2addr v6, v7

    iget-object v8, p0, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->d:Landroid/graphics/RectF;

    if-nez v2, :cond_0

    iget v2, v8, Landroid/graphics/RectF;->left:F

    goto :goto_1

    :cond_0
    iget v2, p0, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->e:F

    mul-float/2addr v2, v7

    iget v7, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v7

    add-float/2addr v2, v6

    :goto_1
    iget-object v6, v3, Lv38;->d:Lrx6;

    new-instance v7, Lox6;

    iget v9, v8, Landroid/graphics/RectF;->top:F

    iget v10, v8, Landroid/graphics/RectF;->bottom:F

    iget v11, p0, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->e:F

    add-float/2addr v11, v2

    invoke-direct {v7, v9, v10, v2, v11}, Lox6;-><init>(FFFF)V

    iget-object v9, p0, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->c:Ljava/util/HashMap;

    invoke-virtual {v9, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v6, v3, Lv38;->c:Z

    if-eqz v6, :cond_1

    iget-object v3, v3, Lv38;->b:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_1
    iget-object v3, v3, Lv38;->a:Landroid/graphics/drawable/Drawable;

    :goto_2
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sget-object v9, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->i:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v9

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v10

    invoke-virtual {v3, v1, v1, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v3, v8, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v6, v2, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move v2, v4

    goto :goto_0

    :cond_2
    invoke-static {}, Lu96;->o()V

    throw v5

    :cond_3
    return-void
.end method

.method public final onMeasure(II)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->b:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    iget-object v3, p0, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v3, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Integer;->max(II)I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-static {v1, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p1, p0, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->g:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iget-object p2, p0, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->g:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    int-to-float p2, p2

    div-float p2, p1, p2

    iget-object p3, p0, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->g:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p2, p3

    iget-object p3, p0, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->b:Landroid/graphics/Canvas;

    invoke-virtual {p3}, Landroid/graphics/Canvas;->getWidth()I

    move-result p3

    int-to-float p3, p3

    iget-object p4, p0, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->g:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    int-to-float p4, p4

    mul-float/2addr p3, p4

    sub-float p3, p1, p3

    iget-object p4, p0, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->g:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    int-to-float p4, p4

    div-float p4, p3, p4

    iget-object v0, p0, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    iget-object v1, p0, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p3, v1

    sub-float/2addr v0, p3

    iput v0, p0, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->e:F

    iput p4, p0, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->f:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p1, p2

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p1, p4

    add-float/2addr p1, p3

    iget-object p3, p0, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->d:Landroid/graphics/RectF;

    iput p1, p3, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p3, Landroid/graphics/RectF;->top:F

    iget p4, p3, Landroid/graphics/RectF;->left:F

    add-float/2addr p4, p2

    iput p4, p3, Landroid/graphics/RectF;->right:F

    iget p0, p0, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->e:F

    add-float/2addr p1, p0

    iput p1, p3, Landroid/graphics/RectF;->bottom:F

    :cond_1
    :goto_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->d:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v3

    iget-object v3, p0, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->c:Ljava/util/HashMap;

    invoke-static {v3}, Lp05;->o(Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lb36;

    iget-object v6, v6, Lb36;->c:Ljava/lang/Object;

    check-cast v6, Lox6;

    iget v7, v6, Lox6;->c:F

    iget v8, v6, Lox6;->d:F

    cmpg-float v8, v0, v8

    if-gtz v8, :cond_1

    cmpg-float v7, v7, v0

    if-gtz v7, :cond_1

    iget v7, v6, Lox6;->a:F

    iget v6, v6, Lox6;->b:F

    cmpg-float v6, p1, v6

    if-gtz v6, :cond_1

    cmpg-float v6, v7, p1

    if-gtz v6, :cond_1

    goto :goto_0

    :cond_2
    move-object v4, v5

    :goto_0
    check-cast v4, Lb36;

    if-eqz v4, :cond_3

    iget-object p1, v4, Lb36;->b:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Lrx6;

    :cond_3
    if-eqz v5, :cond_f

    iget-object p1, p0, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->g:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    instance-of v0, p1, Ljava/util/Collection;

    const/16 v3, 0xa

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_4

    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv38;

    iget-boolean v0, v0, Lv38;->c:Z

    if-nez v0, :cond_5

    iget-object p1, p0, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v0, v2

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv38;

    iget-object v4, v4, Lv38;->d:Lrx6;

    if-ne v4, v5, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    const/4 v0, -0x1

    :goto_2
    if-ltz v0, :cond_10

    iget-object p1, p0, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->g:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    if-ge v0, p1, :cond_10

    iget-object p1, p0, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->g:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv38;

    iget-boolean v4, p1, Lv38;->c:Z

    if-eqz v4, :cond_8

    goto/16 :goto_8

    :cond_8
    xor-int/2addr v4, v1

    invoke-static {p1, v4}, Lv38;->a(Lv38;Z)Lv38;

    move-result-object v4

    iget-object v6, p0, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->g:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v6, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv38;

    invoke-static {v6, v2}, Lv38;->a(Lv38;Z)Lv38;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v2, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iput-object v2, p0, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->g:Ljava/util/List;

    iget-boolean p1, p1, Lv38;->c:Z

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->h:Lnl3;

    if-eqz p1, :cond_a

    invoke-interface {p1, v5}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v1

    :cond_b
    :goto_4
    iget-object p1, p0, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->g:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv38;

    iget-object v4, v3, Lv38;->d:Lrx6;

    if-ne v5, v4, :cond_c

    goto :goto_6

    :cond_c
    invoke-static {v3, v2}, Lv38;->a(Lv38;Z)Lv38;

    move-result-object v3

    :goto_6
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_d
    iput-object v0, p0, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->g:Ljava/util/List;

    iget-object p1, p0, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->h:Lnl3;

    if-eqz p1, :cond_e

    invoke-interface {p1, v5}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v1

    :cond_f
    :goto_7
    return v2

    :cond_10
    :goto_8
    return v1
.end method

.method public final setRatingListener(Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Lrx6;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->h:Lnl3;

    return-void
.end method

.method public final setSelectedRating(Lrx6;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->g:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv38;

    invoke-static {v2, v3}, Lv38;->a(Lv38;Z)Lv38;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv38;

    iget-object v2, v2, Lv38;->d:Lrx6;

    if-ne v2, p1, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, -0x1

    :goto_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv38;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lv38;->a(Lv38;Z)Lv38;

    move-result-object p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/warefly/checkscan/ui/rating/SmilerRatingBar;->g:Ljava/util/List;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
