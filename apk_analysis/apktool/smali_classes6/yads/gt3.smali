.class public Lyads/gt3;
.super Lyads/yh2;
.source "SourceFile"

# interfaces
.implements Lyads/wj;


# static fields
.field public static final synthetic B:[Lze4;


# instance fields
.field public A:F

.field public c:I

.field public d:I

.field public final e:Lyads/hp0;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public final j:Lyads/hp0;

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public final r:Lyads/xh2;

.field public s:I

.field public t:I

.field public u:Landroid/graphics/drawable/Drawable;

.field public final v:Lyads/hp0;

.field public final w:Ljava/util/ArrayList;

.field public final x:Ljava/util/LinkedHashSet;

.field public y:I

.field public final z:Ljava/util/LinkedHashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lyads/gt3;

    const-string v1, "orientation"

    const-string v2, "getOrientation()I"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lyads/mo;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lxe4;

    move-result-object v1

    const-string v2, "aspectRatio"

    const-string v4, "getAspectRatio()F"

    invoke-static {v0, v2, v4, v3}, Lyads/mo;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lxe4;

    move-result-object v2

    const-string v4, "showDividers"

    const-string v5, "getShowDividers()I"

    invoke-static {v0, v4, v5, v3}, Lyads/mo;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lxe4;

    move-result-object v0

    const/4 v4, 0x3

    new-array v4, v4, [Lze4;

    aput-object v1, v4, v3

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v1, 0x2

    aput-object v0, v4, v1

    sput-object v4, Lyads/gt3;->B:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 66
    invoke-direct {p0, p1, v2, v0, v1}, Lyads/gt3;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1, p2, v0, v1}, Lyads/gt3;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lyads/yh2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    iput p1, p0, Lyads/gt3;->c:I

    iput p1, p0, Lyads/gt3;->d:I

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Lyads/nh6;->a(Ljava/lang/Object;)Lyads/hp0;

    move-result-object p3

    iput-object p3, p0, Lyads/gt3;->e:Lyads/hp0;

    invoke-static {}, Lyads/vj;->a()Lyads/hp0;

    move-result-object p3

    iput-object p3, p0, Lyads/gt3;->j:Lyads/hp0;

    new-instance p3, Lyads/xh2;

    invoke-direct {p3}, Lyads/xh2;-><init>()V

    iput-object p3, p0, Lyads/gt3;->r:Lyads/xh2;

    iput p1, p0, Lyads/gt3;->s:I

    iput p1, p0, Lyads/gt3;->t:I

    invoke-static {p2}, Lyads/nh6;->a(Ljava/lang/Object;)Lyads/hp0;

    move-result-object p1

    iput-object p1, p0, Lyads/gt3;->v:Lyads/hp0;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lyads/gt3;->w:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lyads/gt3;->x:Ljava/util/LinkedHashSet;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lyads/gt3;->z:Ljava/util/LinkedHashSet;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 p3, 0x0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lyads/gt3;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static a(IF)F
    .locals 2

    .line 399
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    return p1

    :cond_0
    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_1
    return v0
.end method


# virtual methods
.method public final a(I)I
    .locals 2

    .line 383
    invoke-virtual {p0}, Lyads/gt3;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    iget v0, p0, Lyads/gt3;->l:I

    iget v1, p0, Lyads/gt3;->m:I

    add-int/2addr v0, v1

    iget v1, p0, Lyads/gt3;->n:I

    :goto_0
    add-int/2addr v0, v1

    goto :goto_1

    .line 385
    :cond_0
    iget v0, p0, Lyads/gt3;->k:I

    iget v1, p0, Lyads/gt3;->p:I

    add-int/2addr v0, v1

    iget v1, p0, Lyads/gt3;->o:I

    goto :goto_0

    .line 386
    :goto_1
    invoke-virtual {p0, p1}, Lyads/gt3;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 387
    :cond_1
    iget v0, p0, Lyads/gt3;->s:I

    if-ne p1, v0, :cond_2

    const/4 p0, 0x0

    return p0

    .line 388
    :cond_2
    iget p0, p0, Lyads/gt3;->q:I

    return p0
.end method

.method public final a(II)I
    .locals 1

    if-gez p1, :cond_1

    .line 400
    iget v0, p0, Lyads/gt3;->h:I

    if-lez v0, :cond_1

    add-int/2addr p1, v0

    if-gez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return p1

    :cond_1
    if-ltz p1, :cond_2

    .line 401
    invoke-static {p2}, Lyads/nh6;->a(I)Z

    move-result p2

    if-eqz p2, :cond_2

    iget p0, p0, Lyads/gt3;->h:I

    add-int/2addr p1, p0

    :cond_2
    return p1
.end method

.method public final a(Landroid/graphics/Canvas;IIII)Lj59;
    .locals 5

    .line 389
    iget-object v0, p0, Lyads/gt3;->u:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    add-int v1, p2, p4

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-int v3, p3, p5

    int-to-float v3, v3

    div-float/2addr v3, v2

    .line 390
    iget v4, p0, Lyads/gt3;->k:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    .line 391
    iget p0, p0, Lyads/gt3;->l:I

    int-to-float p0, p0

    div-float/2addr p0, v2

    sub-float v2, v1, v4

    float-to-int v2, v2

    .line 392
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-float v2, v3, p0

    float-to-int v2, v2

    .line 393
    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    add-float/2addr v1, v4

    float-to-int v1, v1

    .line 394
    invoke-static {v1, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    add-float/2addr v3, p0

    float-to-int p0, v3

    .line 395
    invoke-static {p0, p5}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 396
    invoke-virtual {v0, p2, p3, p4, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 397
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 398
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final a(IIII)V
    .locals 10

    iget v0, p0, Lyads/gt3;->f:I

    sub-int/2addr p2, v0

    iget-object v0, p0, Lyads/gt3;->w:Ljava/util/ArrayList;

    const v1, 0x7fffffff

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Lyads/ro1;

    iget v2, v2, Lyads/ro1;->g:I

    if-eq v2, v1, :cond_1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0, p2, p3}, Lyads/gt3;->b(II)Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lyads/gt3;->f:I

    invoke-virtual {p0, p2, p3}, Lyads/gt3;->a(II)I

    move-result v2

    iget-object v3, p0, Lyads/gt3;->w:Ljava/util/ArrayList;

    if-ltz v2, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Lyads/ro1;

    iget v4, v4, Lyads/ro1;->g:I

    if-eq v4, v1, :cond_3

    iget v4, p0, Lyads/gt3;->y:I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v6, Lyads/ro1;

    iget v6, v6, Lyads/ro1;->g:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p0, v3, p1, v4, v5}, Lyads/gt3;->a(Landroid/view/View;III)V

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x1

    if-le v1, v4, :cond_5

    new-instance v1, Lyads/et3;

    invoke-direct {v1}, Lyads/et3;-><init>()V

    invoke-static {v1, v3}, Lnn1;->J(Ljava/util/Comparator;Ljava/util/List;)V

    :cond_5
    iget-object v1, p0, Lyads/gt3;->w:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Lyads/ro1;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    add-int/2addr v6, v5

    int-to-float v7, v6

    iget v8, p0, Lyads/gt3;->g:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    int-to-float v8, v2

    mul-float/2addr v7, v8

    invoke-static {v7}, Lw65;->b(F)I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v3}, Landroid/view/View;->getMinimumHeight()I

    move-result v8

    if-ge v7, v8, :cond_6

    move v7, v8

    :cond_6
    iget v4, v4, Lyads/ro1;->g:I

    if-le v7, v4, :cond_7

    move v7, v4

    :cond_7
    iget v4, p0, Lyads/gt3;->y:I

    invoke-virtual {p0, v3, p1, v4, v7}, Lyads/gt3;->a(Landroid/view/View;III)V

    iget v4, p0, Lyads/gt3;->i:I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v7

    const/high16 v8, 0x1000000

    and-int/2addr v7, v8

    invoke-static {v4, v7}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v4

    iput v4, p0, Lyads/gt3;->i:I

    iget v4, p0, Lyads/gt3;->g:I

    sub-int/2addr v4, v6

    iput v4, p0, Lyads/gt3;->g:I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v3, v5

    sub-int/2addr v2, v3

    goto :goto_3

    :cond_8
    invoke-virtual {p0, p2, p3}, Lyads/gt3;->a(II)I

    move-result p2

    iget p3, p0, Lyads/gt3;->A:F

    iget v1, p0, Lyads/gt3;->y:I

    iput v0, p0, Lyads/gt3;->y:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v4, p2

    move v3, v0

    :goto_4
    if-ge v3, v2, :cond_c

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_b

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v6, Lyads/ro1;

    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_a

    if-lez p2, :cond_9

    iget v8, v6, Lyads/ro1;->c:F

    invoke-static {v7, v8}, Lyads/gt3;->a(IF)F

    move-result v7

    int-to-float v8, v4

    mul-float/2addr v7, v8

    div-float/2addr v7, p3

    float-to-int v7, v7

    iget v8, v6, Lyads/ro1;->c:F

    iget v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v9, v8}, Lyads/gt3;->a(IF)F

    move-result v8

    sub-float/2addr p3, v8

    sub-int/2addr v4, v7

    invoke-virtual {p0, v5, p1, v1, v7}, Lyads/gt3;->a(Landroid/view/View;III)V

    goto :goto_5

    :cond_9
    iget-object v7, p0, Lyads/gt3;->x:Ljava/util/LinkedHashSet;

    invoke-interface {v7, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v5}, Landroid/view/View;->getMinimumHeight()I

    move-result v7

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v5, p1, v1, v7}, Lyads/gt3;->a(Landroid/view/View;III)V

    :cond_a
    :goto_5
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    invoke-virtual {p0, p1, v8}, Lyads/gt3;->c(II)V

    iget v7, p0, Lyads/gt3;->f:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v8, v6

    add-int/2addr v8, v5

    add-int/2addr v8, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lyads/gt3;->f:I

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_c
    iget p1, p0, Lyads/gt3;->y:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    add-int/2addr p3, p2

    add-int/2addr p3, p1

    invoke-static {p4, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lyads/gt3;->y:I

    iget p1, p0, Lyads/gt3;->f:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    add-int/2addr p3, p2

    add-int/2addr p3, p1

    iput p3, p0, Lyads/gt3;->f:I

    :cond_d
    return-void
.end method

.method public final a(Landroid/view/View;III)V
    .locals 6

    .line 436
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lyads/ro1;

    .line 437
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v2, -0x1

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_1

    if-nez p3, :cond_0

    const/4 p3, -0x3

    .line 438
    iput p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_0

    .line 439
    :cond_0
    invoke-static {p3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 440
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, p3

    .line 441
    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p3, v4

    add-int/2addr p3, v2

    .line 442
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 443
    invoke-virtual {p1}, Landroid/view/View;->getMinimumWidth()I

    move-result v4

    .line 444
    iget v5, v0, Lyads/ro1;->h:I

    .line 445
    invoke-static {p2, p3, v2, v4, v5}, Lyads/wh2;->a(IIIII)I

    move-result p2

    .line 446
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 447
    invoke-static {p4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 448
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 449
    iget p2, p0, Lyads/gt3;->i:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredState()I

    move-result p1

    and-int/lit16 p1, p1, -0x100

    invoke-static {p2, p1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result p1

    iput p1, p0, Lyads/gt3;->i:I

    return-void
.end method

.method public final a(Landroid/view/View;IIZZ)V
    .locals 10

    .line 402
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v6, v0

    check-cast v6, Lyads/ro1;

    .line 403
    iget v0, v6, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v1, -0x2

    const/4 v7, -0x3

    if-eq v0, v7, :cond_3

    const/4 v7, -0x1

    if-eq v0, v7, :cond_0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    .line 404
    invoke-virtual/range {v0 .. v5}, Lyads/yh2;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto/16 :goto_0

    .line 405
    :cond_0
    invoke-static {p3}, Lyads/nh6;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    .line 406
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 407
    invoke-virtual/range {v0 .. v5}, Lyads/yh2;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto/16 :goto_0

    .line 408
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v8, v0

    check-cast v8, Lyads/ro1;

    .line 409
    iput v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    .line 410
    invoke-virtual/range {v0 .. v5}, Lyads/yh2;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 411
    iput v7, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-nez p5, :cond_2

    goto :goto_0

    .line 412
    :cond_2
    iget v1, p0, Lyads/gt3;->h:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v1

    .line 413
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 414
    iput v1, p0, Lyads/gt3;->h:I

    goto :goto_0

    .line 415
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v8, v2

    check-cast v8, Lyads/ro1;

    .line 416
    iget v9, v8, Lyads/ro1;->g:I

    .line 417
    iput v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const v1, 0x7fffffff

    .line 418
    iput v1, v8, Lyads/ro1;->g:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    .line 419
    invoke-virtual/range {v0 .. v5}, Lyads/yh2;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 420
    iput v7, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 421
    iput v9, v8, Lyads/ro1;->g:I

    if-nez p5, :cond_4

    goto :goto_0

    .line 422
    :cond_4
    iget v2, p0, Lyads/gt3;->g:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 423
    iget v4, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v4, v2

    .line 424
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 425
    iput v2, p0, Lyads/gt3;->g:I

    .line 426
    iget-object v2, p0, Lyads/gt3;->w:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    .line 427
    :cond_5
    iget-object v2, p0, Lyads/gt3;->w:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    :goto_0
    iget v2, p0, Lyads/gt3;->i:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    invoke-static {v2, v3}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    iput v2, p0, Lyads/gt3;->i:I

    if-eqz p4, :cond_6

    .line 429
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 430
    iget v3, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    .line 431
    invoke-virtual {p0, p2, v3}, Lyads/gt3;->c(II)V

    :cond_6
    if-nez p5, :cond_7

    return-void

    .line 432
    :cond_7
    iget v2, p0, Lyads/gt3;->f:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 433
    iget v3, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    add-int/2addr v3, v2

    .line 434
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 435
    iput v1, p0, Lyads/gt3;->f:I

    return-void
.end method

.method public final b(Landroid/view/View;II)V
    .locals 4

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lyads/ro1;

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v2, v1

    .line 101
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 102
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v3

    add-int/2addr v1, v2

    .line 103
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getMinimumHeight()I

    move-result v3

    .line 105
    iget v0, v0, Lyads/ro1;->g:I

    .line 106
    invoke-static {p2, v1, v2, v3, v0}, Lyads/wh2;->a(IIIII)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    .line 107
    invoke-static {p3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 108
    invoke-virtual {p1, p3, p2}, Landroid/view/View;->measure(II)V

    .line 109
    iget p0, p0, Lyads/gt3;->i:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredState()I

    move-result p1

    const/high16 p2, -0x1000000

    and-int/2addr p1, p2

    invoke-static {p0, p1}, Landroid/view/View;->combineMeasuredStates(II)I

    return-void
.end method

.method public final b(I)Z
    .locals 4

    iget v0, p0, Lyads/gt3;->s:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lyads/gt3;->v:Lyads/hp0;

    sget-object p1, Lyads/gt3;->B:[Lze4;

    aget-object p1, p1, v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lyads/hp0;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    and-int/2addr p0, v1

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_0
    iget v0, p0, Lyads/gt3;->t:I

    iget-object v3, p0, Lyads/gt3;->v:Lyads/hp0;

    if-le p1, v0, :cond_1

    sget-object p0, Lyads/gt3;->B:[Lze4;

    aget-object p0, p0, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v3, Lyads/hp0;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_3

    :goto_0
    return v1

    :cond_1
    sget-object v0, Lyads/gt3;->B:[Lze4;

    aget-object v0, v0, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v3, Lyads/hp0;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    add-int/lit8 v0, p1, -0x1

    :goto_1
    const/4 v2, -0x1

    if-ge v2, v0, :cond_3

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final b(II)Z
    .locals 1

    .line 94
    iget-object v0, p0, Lyads/gt3;->x:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    if-gez p1, :cond_2

    .line 96
    iget p1, p0, Lyads/gt3;->g:I

    if-gtz p1, :cond_4

    iget p0, p0, Lyads/gt3;->A:F

    cmpl-float p0, p0, v0

    if-lez p0, :cond_5

    goto :goto_0

    .line 97
    :cond_2
    invoke-static {p2}, Lyads/nh6;->a(I)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    if-lez p1, :cond_5

    .line 98
    iget p0, p0, Lyads/gt3;->A:F

    cmpl-float p0, p0, v0

    if-lez p0, :cond_5

    :cond_4
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final c(II)V
    .locals 0

    invoke-static {p1}, Lyads/nh6;->a(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lyads/gt3;->y:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lyads/gt3;->y:I

    :cond_0
    return-void
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    invoke-virtual {p0}, Lyads/gt3;->k()Z

    move-result p0

    const/4 v0, -0x2

    if-eqz p0, :cond_0

    new-instance p0, Lyads/ro1;

    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lyads/ro1;-><init>(II)V

    return-object p0

    :cond_0
    new-instance p0, Lyads/ro1;

    invoke-direct {p0, v0, v0}, Lyads/ro1;-><init>(II)V

    return-object p0
.end method

.method public final getBaseline()I
    .locals 2

    invoke-virtual {p0}, Lyads/gt3;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lyads/ro1;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    add-int/2addr p0, v1

    return p0

    :cond_1
    iget v0, p0, Lyads/gt3;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    add-int/2addr p0, v0

    return p0

    :cond_2
    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    move-result p0

    return p0
.end method

.method public final j()F
    .locals 2

    iget-object p0, p0, Lyads/gt3;->j:Lyads/hp0;

    sget-object v0, Lyads/gt3;->B:[Lze4;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lyads/hp0;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final k()Z
    .locals 2

    iget-object p0, p0, Lyads/gt3;->e:Lyads/hp0;

    sget-object v0, Lyads/gt3;->B:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lyads/hp0;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    return v1
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    iget-object v1, p0, Lyads/gt3;->u:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    goto/16 :goto_c

    :cond_0
    invoke-virtual {p0}, Lyads/gt3;->k()Z

    move-result v1

    const/high16 v6, 0x40000000    # 2.0f

    const/16 v7, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    move v9, v2

    :goto_0
    if-ge v9, v8, :cond_3

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v7, :cond_2

    invoke-virtual {p0, v9}, Lyads/gt3;->b(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lyads/ro1;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v2, v1

    iget v1, p0, Lyads/gt3;->l:I

    sub-int/2addr v2, v1

    iget v1, p0, Lyads/gt3;->n:I

    sub-int/2addr v2, v1

    iget v1, p0, Lyads/gt3;->s:I

    iget-object v3, p0, Lyads/gt3;->r:Lyads/xh2;

    if-ne v9, v1, :cond_1

    iget v1, v3, Lyads/xh2;->c:I

    goto :goto_1

    :cond_1
    iget v1, v3, Lyads/xh2;->b:F

    div-float/2addr v1, v6

    float-to-int v1, v1

    :goto_1
    sub-int v3, v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lyads/gt3;->o:I

    add-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v1, v4

    iget v4, p0, Lyads/gt3;->p:I

    sub-int v4, v1, v4

    iget v1, p0, Lyads/gt3;->l:I

    add-int v5, v3, v1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lyads/gt3;->a(Landroid/graphics/Canvas;IIII)Lj59;

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v1}, Lyads/gt3;->b(I)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lyads/ro1;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v1

    iget v1, p0, Lyads/gt3;->m:I

    add-int/2addr v2, v1

    iget-object v1, p0, Lyads/gt3;->r:Lyads/xh2;

    iget v1, v1, Lyads/xh2;->c:I

    add-int/2addr v2, v1

    :goto_2
    move v3, v2

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lyads/gt3;->l:I

    sub-int/2addr v1, v2

    iget v2, p0, Lyads/gt3;->n:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lyads/gt3;->r:Lyads/xh2;

    iget v2, v2, Lyads/xh2;->c:I

    sub-int v2, v1, v2

    goto :goto_2

    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lyads/gt3;->o:I

    add-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v1, v4

    iget v4, p0, Lyads/gt3;->p:I

    sub-int v4, v1, v4

    iget v1, p0, Lyads/gt3;->l:I

    add-int v5, v3, v1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lyads/gt3;->a(Landroid/graphics/Canvas;IIII)Lj59;

    return-void

    :cond_5
    invoke-static {p0}, Lyads/oh6;->b(Landroid/view/View;)Z

    move-result v8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    move v10, v2

    :goto_4
    if-ge v10, v9, :cond_9

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v7, :cond_8

    invoke-virtual {p0, v10}, Lyads/gt3;->b(I)Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, p0, Lyads/gt3;->s:I

    iget-object v3, p0, Lyads/gt3;->r:Lyads/xh2;

    if-ne v10, v2, :cond_6

    iget v2, v3, Lyads/xh2;->c:I

    goto :goto_5

    :cond_6
    iget v2, v3, Lyads/xh2;->b:F

    div-float/2addr v2, v6

    float-to-int v2, v2

    :goto_5
    if-eqz v8, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lyads/ro1;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v1

    iget v1, p0, Lyads/gt3;->o:I

    add-int/2addr v3, v1

    add-int/2addr v3, v2

    :goto_6
    move v2, v3

    goto :goto_7

    :cond_7
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lyads/ro1;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v3, v1

    iget v1, p0, Lyads/gt3;->k:I

    sub-int/2addr v3, v1

    iget v1, p0, Lyads/gt3;->p:I

    sub-int/2addr v3, v1

    sub-int/2addr v3, v2

    goto :goto_6

    :goto_7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget v3, p0, Lyads/gt3;->m:I

    add-int/2addr v3, v1

    iget v1, p0, Lyads/gt3;->k:I

    add-int v4, v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v1, v5

    iget v5, p0, Lyads/gt3;->n:I

    sub-int v5, v1, v5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lyads/gt3;->a(Landroid/graphics/Canvas;IIII)Lj59;

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v1}, Lyads/gt3;->b(I)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_a

    if-eqz v8, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lyads/gt3;->o:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lyads/gt3;->r:Lyads/xh2;

    iget v2, v2, Lyads/xh2;->c:I

    goto :goto_a

    :cond_a
    if-nez v1, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lyads/gt3;->k:I

    sub-int/2addr v1, v2

    iget v2, p0, Lyads/gt3;->p:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lyads/gt3;->r:Lyads/xh2;

    iget v2, v2, Lyads/xh2;->c:I

    goto :goto_8

    :cond_b
    if-eqz v8, :cond_c

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lyads/ro1;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v2, v1

    iget v1, p0, Lyads/gt3;->k:I

    sub-int/2addr v2, v1

    iget v1, p0, Lyads/gt3;->p:I

    sub-int v1, v2, v1

    iget-object v2, p0, Lyads/gt3;->r:Lyads/xh2;

    iget v2, v2, Lyads/xh2;->c:I

    :goto_8
    sub-int/2addr v1, v2

    :goto_9
    move v2, v1

    goto :goto_b

    :cond_c
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lyads/ro1;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v1

    iget v1, p0, Lyads/gt3;->o:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lyads/gt3;->r:Lyads/xh2;

    iget v2, v2, Lyads/xh2;->c:I

    :goto_a
    add-int/2addr v1, v2

    goto :goto_9

    :goto_b
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget v3, p0, Lyads/gt3;->m:I

    add-int/2addr v3, v1

    iget v1, p0, Lyads/gt3;->k:I

    add-int v4, v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v1, v5

    iget v5, p0, Lyads/gt3;->n:I

    sub-int v5, v1, v5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lyads/gt3;->a(Landroid/graphics/Canvas;IIII)Lj59;

    :cond_d
    :goto_c
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 10

    invoke-virtual {p0}, Lyads/gt3;->k()Z

    move-result p1

    const/4 v0, 0x0

    const v1, 0x7800007

    const v2, 0x70000070

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz p1, :cond_8

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    add-int/2addr p2, p1

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    iget p1, p0, Lyads/gt3;->f:I

    sub-int/2addr p5, p1

    int-to-float p1, p5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lyads/gt3;->r:Lyads/xh2;

    iget p5, p0, Lyads/yh2;->a:I

    and-int/2addr p5, v2

    invoke-static {p0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lzo7;

    move-result-object v2

    invoke-interface {v2}, Lzo7;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v5, v4

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-ne v6, v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v5, v5, 0x1

    if-ltz v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lu96;->n()V

    throw v0

    :cond_2
    invoke-virtual {p3, p5, p1, v5}, Lyads/xh2;->a(IFI)V

    iget-object p1, p0, Lyads/gt3;->r:Lyads/xh2;

    iget p1, p1, Lyads/xh2;->a:F

    add-float/2addr p2, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    :goto_1
    if-ge v4, p1, :cond_16

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p5

    if-eq p5, v3, :cond_7

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Lyads/ro1;

    iget v5, v2, Lyads/ro1;->a:I

    and-int/2addr v5, v1

    if-gez v5, :cond_3

    iget v5, p0, Lyads/yh2;->a:I

    and-int/2addr v5, v1

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    invoke-static {v5, v6}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_6

    const/4 v6, 0x3

    if-eq v5, v6, :cond_5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_4

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2

    :cond_4
    sub-int v5, p4, p5

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v5, v6

    goto :goto_2

    :cond_5
    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2

    :cond_6
    sub-int v5, p4, p5

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    :goto_2
    add-int/2addr v7, v5

    invoke-virtual {p0, v4}, Lyads/gt3;->a(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr p2, v5

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v5, v5

    add-float/2addr p2, v5

    invoke-static {p2}, Lw65;->b(F)I

    move-result v5

    add-int/2addr p5, v7

    add-int v6, v5, v0

    invoke-virtual {p3, v7, v5, p5, v6}, Landroid/view/View;->layout(IIII)V

    iget p3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, p3

    int-to-float p3, v0

    iget-object p5, p0, Lyads/gt3;->r:Lyads/xh2;

    iget p5, p5, Lyads/xh2;->b:F

    add-float/2addr p3, p5

    add-float/2addr p3, p2

    move p2, p3

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    add-int/2addr p3, p1

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    sub-int/2addr p4, p2

    iget p2, p0, Lyads/gt3;->f:I

    sub-int/2addr p4, p2

    int-to-float p2, p4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    int-to-float p3, p3

    iget p4, p0, Lyads/yh2;->a:I

    and-int/2addr p4, v1

    invoke-static {p4, p1}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result p1

    iget-object p4, p0, Lyads/gt3;->r:Lyads/xh2;

    invoke-static {p0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lzo7;

    move-result-object v1

    invoke-interface {v1}, Lzo7;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v5, v4

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-ne v6, v3, :cond_9

    goto :goto_3

    :cond_9
    add-int/lit8 v5, v5, 0x1

    if-ltz v5, :cond_a

    goto :goto_3

    :cond_a
    invoke-static {}, Lu96;->n()V

    throw v0

    :cond_b
    invoke-virtual {p4, p1, p2, v5}, Lyads/xh2;->a(IFI)V

    iget-object p1, p0, Lyads/gt3;->r:Lyads/xh2;

    iget p1, p1, Lyads/xh2;->a:F

    add-float/2addr p3, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    invoke-static {p0, v4, p1}, Lyads/oh6;->a(Landroid/view/View;II)Lw74;

    move-result-object p1

    iget p2, p1, Lw74;->b:I

    iget p4, p1, Lw74;->c:I

    iget p1, p1, Lw74;->d:I

    if-lez p1, :cond_c

    if-le p2, p4, :cond_d

    :cond_c
    if-gez p1, :cond_16

    if-gt p4, p2, :cond_16

    :cond_d
    :goto_4
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_e

    goto/16 :goto_8

    :cond_e
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v6, Lyads/ro1;

    iget v7, v6, Lyads/ro1;->a:I

    and-int/2addr v7, v2

    if-gez v7, :cond_f

    iget v7, p0, Lyads/yh2;->a:I

    and-int/2addr v7, v2

    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    const/16 v9, 0x10

    if-eq v7, v9, :cond_13

    const/16 v9, 0x30

    if-eq v7, v9, :cond_11

    const/16 v9, 0x50

    if-eq v7, v9, :cond_10

    move v7, v4

    goto :goto_6

    :cond_10
    sub-int v7, p5, v5

    iget v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_5
    sub-int/2addr v7, v9

    goto :goto_6

    :cond_11
    iget-boolean v7, v6, Lyads/ro1;->b:Z

    if-eqz v7, :cond_12

    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v9, -0x1

    if-eq v7, v9, :cond_12

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v7

    if-eq v7, v9, :cond_12

    iget v7, p0, Lyads/gt3;->c:I

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v9

    goto :goto_5

    :cond_12
    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_6

    :cond_13
    sub-int v7, p5, v5

    iget v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v7, v9

    iget v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v7, v9

    div-int/lit8 v7, v7, 0x2

    :goto_6
    add-int/2addr v8, v7

    invoke-static {p0}, Lyads/oh6;->b(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_14

    add-int/lit8 v7, p2, 0x1

    goto :goto_7

    :cond_14
    move v7, p2

    :goto_7
    invoke-virtual {p0, v7}, Lyads/gt3;->a(I)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr p3, v7

    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v7, v7

    add-float/2addr p3, v7

    invoke-static {p3}, Lw65;->b(F)I

    move-result v7

    add-int v9, v7, v1

    add-int/2addr v5, v8

    invoke-virtual {v0, v7, v8, v9, v5}, Landroid/view/View;->layout(IIII)V

    iget v0, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v0

    int-to-float v0, v1

    iget-object v1, p0, Lyads/gt3;->r:Lyads/xh2;

    iget v1, v1, Lyads/xh2;->b:F

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    move p3, v0

    :cond_15
    :goto_8
    if-eq p2, p4, :cond_16

    add-int/2addr p2, p1

    goto/16 :goto_4

    :cond_16
    return-void
.end method

.method public final onMeasure(II)V
    .locals 20

    move-object/from16 v0, p0

    const/4 v6, 0x0

    iput v6, v0, Lyads/gt3;->f:I

    iput v6, v0, Lyads/gt3;->y:I

    iput v6, v0, Lyads/gt3;->g:I

    iput v6, v0, Lyads/gt3;->h:I

    const/4 v7, 0x0

    iput v7, v0, Lyads/gt3;->A:F

    iput v6, v0, Lyads/gt3;->i:I

    invoke-static {v0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lzo7;

    move-result-object v1

    invoke-interface {v1}, Lzo7;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v6

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/16 v8, 0x8

    const/4 v9, -0x1

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-ltz v2, :cond_0

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v8, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lu96;->o()V

    throw v4

    :cond_1
    move v2, v9

    :cond_2
    iput v2, v0, Lyads/gt3;->s:I

    invoke-static {v0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lzo7;

    move-result-object v1

    invoke-interface {v1}, Lzo7;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v6

    move v2, v9

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    if-ltz v3, :cond_4

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v8, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-static {}, Lu96;->o()V

    throw v4

    :cond_5
    iput v2, v0, Lyads/gt3;->t:I

    invoke-virtual {v0}, Lyads/gt3;->k()Z

    move-result v1

    const v10, 0xffffff

    const/high16 v11, 0x40000000    # 2.0f

    if-eqz v1, :cond_1e

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-ne v2, v11, :cond_6

    const/4 v13, 0x1

    goto :goto_3

    :cond_6
    move v13, v6

    :goto_3
    invoke-virtual {v0}, Lyads/gt3;->j()F

    move-result v2

    cmpg-float v2, v2, v7

    if-nez v2, :cond_7

    move/from16 v3, p2

    goto :goto_5

    :cond_7
    if-eqz v13, :cond_8

    int-to-float v2, v1

    invoke-virtual {v0}, Lyads/gt3;->j()F

    move-result v3

    div-float/2addr v2, v3

    invoke-static {v2}, Lw65;->b(F)I

    move-result v2

    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    :goto_4
    move v3, v2

    goto :goto_5

    :cond_8
    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_4

    :goto_5
    if-eqz v13, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_6
    if-gez v1, :cond_a

    move v14, v6

    goto :goto_7

    :cond_a
    move v14, v1

    :goto_7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    move v1, v6

    :goto_8
    if-ge v1, v15, :cond_13

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v8, :cond_11

    iget v4, v0, Lyads/gt3;->f:I

    invoke-virtual {v0, v1}, Lyads/gt3;->a(I)I

    move-result v5

    add-int/2addr v5, v4

    iput v5, v0, Lyads/gt3;->f:I

    iget v4, v0, Lyads/gt3;->A:F

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v5, Lyads/ro1;

    move/from16 v16, v7

    iget v7, v5, Lyads/ro1;->c:F

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v5, v7}, Lyads/gt3;->a(IF)F

    move-result v5

    add-float/2addr v5, v4

    iput v5, v0, Lyads/gt3;->A:F

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Lyads/ro1;

    invoke-static/range {p1 .. p1}, Lyads/nh6;->a(I)Z

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v7, Lyads/ro1;

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v7, v9, :cond_c

    invoke-static {v3}, Lyads/nh6;->a(I)Z

    move-result v7

    if-nez v7, :cond_b

    goto :goto_9

    :cond_b
    move v7, v6

    goto :goto_a

    :cond_c
    :goto_9
    const/4 v7, 0x1

    :goto_a
    if-eqz v5, :cond_d

    move v4, v7

    goto :goto_b

    :cond_d
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-eq v4, v9, :cond_e

    const/4 v4, 0x1

    goto :goto_b

    :cond_e
    move v4, v6

    :goto_b
    if-eqz v4, :cond_f

    const/4 v4, 0x1

    const/4 v5, 0x1

    move/from16 v17, v1

    move-object v1, v2

    move/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Lyads/gt3;->a(Landroid/view/View;IIZZ)V

    goto :goto_c

    :cond_f
    move/from16 v17, v1

    move-object v1, v2

    if-nez v5, :cond_10

    iget-object v2, v0, Lyads/gt3;->z:Ljava/util/LinkedHashSet;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_10
    if-nez v7, :cond_12

    iget-object v2, v0, Lyads/gt3;->x:Ljava/util/LinkedHashSet;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget v2, v0, Lyads/gt3;->f:I

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lyads/ro1;

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v1

    add-int/2addr v4, v2

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lyads/gt3;->f:I

    goto :goto_c

    :cond_11
    move/from16 v17, v1

    move/from16 v16, v7

    :cond_12
    :goto_c
    add-int/lit8 v1, v17, 0x1

    move/from16 v7, v16

    goto/16 :goto_8

    :cond_13
    move/from16 v16, v7

    invoke-static/range {p1 .. p1}, Lyads/nh6;->a(I)Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_14
    move/from16 v7, p1

    goto :goto_f

    :cond_15
    iget v1, v0, Lyads/gt3;->y:I

    iget-object v2, v0, Lyads/gt3;->z:Ljava/util/LinkedHashSet;

    if-eqz v1, :cond_16

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget v4, v0, Lyads/gt3;->y:I

    invoke-virtual {v2}, Landroid/view/View;->getMinimumWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Lyads/ro1;

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v6, v2

    add-int/2addr v6, v5

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Lyads/gt3;->y:I

    goto :goto_d

    :cond_16
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Lyads/gt3;->a(Landroid/view/View;IIZZ)V

    move v7, v2

    iget-object v2, v0, Lyads/gt3;->x:Ljava/util/LinkedHashSet;

    invoke-interface {v2, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_e

    :goto_f
    iget-object v1, v0, Lyads/gt3;->z:Ljava/util/LinkedHashSet;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_17
    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Lyads/ro1;

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v2, v9, :cond_18

    invoke-static {v3}, Lyads/nh6;->a(I)Z

    move-result v2

    if-nez v2, :cond_17

    :cond_18
    iget v2, v0, Lyads/gt3;->y:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v5, v2

    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lyads/gt3;->a(Landroid/view/View;IIZZ)V

    iget-object v2, v0, Lyads/gt3;->x:Ljava/util/LinkedHashSet;

    invoke-interface {v2, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_19
    iget v1, v0, Lyads/gt3;->f:I

    if-lez v1, :cond_1a

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lyads/gt3;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget v1, v0, Lyads/gt3;->f:I

    iget v2, v0, Lyads/gt3;->l:I

    iget v4, v0, Lyads/gt3;->m:I

    add-int/2addr v2, v4

    iget v4, v0, Lyads/gt3;->n:I

    add-int/2addr v2, v4

    add-int/2addr v2, v1

    iput v2, v0, Lyads/gt3;->f:I

    :cond_1a
    iget v1, v0, Lyads/gt3;->f:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v4, v2

    add-int/2addr v4, v1

    iput v4, v0, Lyads/gt3;->f:I

    iget v1, v0, Lyads/gt3;->y:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v4, v2

    add-int/2addr v4, v1

    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lyads/gt3;->y:I

    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {v0}, Lyads/gt3;->j()F

    move-result v2

    cmpg-float v2, v2, v16

    if-nez v2, :cond_1b

    goto :goto_11

    :cond_1b
    if-nez v13, :cond_1c

    iget v1, v0, Lyads/gt3;->y:I

    iget v2, v0, Lyads/gt3;->i:I

    invoke-static {v1, v7, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    and-int/2addr v1, v10

    int-to-float v1, v1

    invoke-virtual {v0}, Lyads/gt3;->j()F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {v1}, Lw65;->b(F)I

    move-result v1

    invoke-static {v1, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v7, v1, v3, v14}, Lyads/gt3;->a(IIII)V

    goto :goto_12

    :cond_1c
    :goto_11
    invoke-virtual {v0}, Lyads/gt3;->j()F

    move-result v2

    cmpg-float v2, v2, v16

    if-nez v2, :cond_1d

    invoke-static {v3}, Lyads/nh6;->a(I)Z

    move-result v2

    if-nez v2, :cond_1d

    iget v1, v0, Lyads/gt3;->f:I

    invoke-virtual {v0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v7, v1, v3, v14}, Lyads/gt3;->a(IIII)V

    iget v1, v0, Lyads/gt3;->f:I

    invoke-virtual {v0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_12

    :cond_1d
    invoke-virtual {v0, v7, v1, v3, v14}, Lyads/gt3;->a(IIII)V

    :goto_12
    iget v2, v0, Lyads/gt3;->y:I

    iget v4, v0, Lyads/gt3;->i:I

    invoke-static {v2, v7, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v2

    iget v4, v0, Lyads/gt3;->i:I

    shl-int/lit8 v4, v4, 0x10

    invoke-static {v1, v3, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    goto/16 :goto_2c

    :cond_1e
    move/from16 v16, v7

    move/from16 v7, p1

    iput v9, v0, Lyads/gt3;->c:I

    iput v9, v0, Lyads/gt3;->d:I

    invoke-static {v7}, Lyads/nh6;->a(I)Z

    move-result v13

    invoke-virtual {v0}, Lyads/gt3;->j()F

    move-result v1

    cmpg-float v1, v1, v16

    if-nez v1, :cond_1f

    move/from16 v4, p2

    goto :goto_14

    :cond_1f
    if-eqz v13, :cond_20

    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Lyads/gt3;->j()F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {v1}, Lw65;->b(F)I

    move-result v1

    invoke-static {v1, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_13
    move v4, v1

    goto :goto_14

    :cond_20
    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_13

    :goto_14
    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    invoke-static {v4}, Lyads/nh6;->a(I)Z

    move-result v15

    if-eqz v15, :cond_21

    move v1, v14

    goto :goto_15

    :cond_21
    invoke-virtual {v0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_15
    if-gez v1, :cond_22

    move v1, v6

    :cond_22
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v3, v6

    :goto_16
    const v5, 0x7fffffff

    move/from16 v17, v10

    const/4 v10, -0x3

    if-ge v3, v2, :cond_29

    move/from16 v18, v1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-eq v12, v8, :cond_23

    iget v12, v0, Lyads/gt3;->f:I

    invoke-virtual {v0, v3}, Lyads/gt3;->a(I)I

    move-result v19

    add-int v12, v19, v12

    iput v12, v0, Lyads/gt3;->f:I

    iget v12, v0, Lyads/gt3;->A:F

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v6, v19

    check-cast v6, Lyads/ro1;

    iget v11, v6, Lyads/ro1;->d:F

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v6, v11}, Lyads/gt3;->a(IF)F

    move-result v6

    add-float/2addr v6, v12

    iput v6, v0, Lyads/gt3;->A:F

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v6, Lyads/ro1;

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v6, v9, :cond_24

    invoke-static {v7}, Lyads/nh6;->a(I)Z

    move-result v6

    if-nez v6, :cond_23

    goto :goto_17

    :cond_23
    move v11, v2

    move v2, v7

    move/from16 v7, v18

    move/from16 v18, v3

    goto/16 :goto_1b

    :cond_24
    :goto_17
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v6, Lyads/ro1;

    iget v11, v6, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v12, -0x2

    if-eq v11, v10, :cond_26

    if-eq v11, v9, :cond_25

    move v5, v3

    const/4 v3, 0x0

    move v10, v5

    const/4 v5, 0x0

    move v11, v2

    move v2, v7

    move/from16 v7, v18

    move/from16 v18, v10

    invoke-virtual/range {v0 .. v5}, Lyads/yh2;->measureChildWithMargins(Landroid/view/View;IIII)V

    move-object/from16 v0, p0

    :goto_18
    move/from16 v2, p1

    goto/16 :goto_19

    :cond_25
    move v11, v2

    move/from16 v7, v18

    move/from16 v18, v3

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v10, v0

    check-cast v10, Lyads/ro1;

    iput v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Lyads/yh2;->measureChildWithMargins(Landroid/view/View;IIII)V

    iput v9, v10, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v2, v0, Lyads/gt3;->h:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v5, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v10, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v5, v10

    add-int/2addr v5, v3

    add-int/2addr v5, v2

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Lyads/gt3;->h:I

    goto :goto_18

    :cond_26
    move v11, v2

    move/from16 v7, v18

    move/from16 v18, v3

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Lyads/ro1;

    iget v3, v2, Lyads/ro1;->h:I

    iput v12, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v5, v2, Lyads/ro1;->h:I

    move v5, v3

    const/4 v3, 0x0

    move v12, v5

    const/4 v5, 0x0

    move v8, v12

    move-object v12, v2

    move/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Lyads/yh2;->measureChildWithMargins(Landroid/view/View;IIII)V

    iput v10, v12, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v8, v12, Lyads/ro1;->h:I

    iget v3, v0, Lyads/gt3;->g:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v8, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v10, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v8, v10

    add-int/2addr v8, v5

    add-int/2addr v8, v3

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Lyads/gt3;->g:I

    iget-object v3, v0, Lyads/gt3;->w:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_19
    iget v3, v0, Lyads/gt3;->i:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    invoke-static {v3, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v3

    iput v3, v0, Lyads/gt3;->i:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v5, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v8

    add-int/2addr v5, v3

    invoke-virtual {v0, v4, v5}, Lyads/gt3;->c(II)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Lyads/ro1;

    iget-boolean v5, v3, Lyads/ro1;->b:Z

    if-nez v5, :cond_27

    goto :goto_1a

    :cond_27
    invoke-virtual {v1}, Landroid/view/View;->getBaseline()I

    move-result v5

    if-ne v5, v9, :cond_28

    goto :goto_1a

    :cond_28
    iget v8, v0, Lyads/gt3;->c:I

    iget v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v10, v5

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v0, Lyads/gt3;->c:I

    iget v8, v0, Lyads/gt3;->d:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    sub-int/2addr v10, v5

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v10, v3

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Lyads/gt3;->d:I

    :goto_1a
    iget v3, v0, Lyads/gt3;->f:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v5, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    add-int/2addr v5, v1

    add-int/2addr v5, v3

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lyads/gt3;->f:I

    :goto_1b
    add-int/lit8 v3, v18, 0x1

    move v1, v7

    move/from16 v10, v17

    const/4 v6, 0x0

    const/16 v8, 0x8

    move v7, v2

    move v2, v11

    const/high16 v11, 0x40000000    # 2.0f

    goto/16 :goto_16

    :cond_29
    move v2, v7

    move v7, v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v1, :cond_2c

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v11, 0x8

    if-eq v8, v11, :cond_2b

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v8, Lyads/ro1;

    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v8, v9, :cond_2b

    invoke-static {v2}, Lyads/nh6;->a(I)Z

    move-result v8

    if-nez v8, :cond_2a

    goto :goto_1d

    :cond_2a
    iget v8, v0, Lyads/gt3;->f:I

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v6, Lyads/ro1;

    iget v11, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v11, v6

    add-int/2addr v11, v8

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v0, Lyads/gt3;->f:I

    :cond_2b
    :goto_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_2c
    iget v1, v0, Lyads/gt3;->f:I

    if-lez v1, :cond_2d

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lyads/gt3;->b(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget v1, v0, Lyads/gt3;->f:I

    iget v3, v0, Lyads/gt3;->k:I

    iget v6, v0, Lyads/gt3;->p:I

    add-int/2addr v3, v6

    iget v6, v0, Lyads/gt3;->o:I

    add-int/2addr v3, v6

    add-int/2addr v3, v1

    iput v3, v0, Lyads/gt3;->f:I

    :cond_2d
    iget v1, v0, Lyads/gt3;->f:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    add-int/2addr v6, v3

    add-int/2addr v6, v1

    iput v6, v0, Lyads/gt3;->f:I

    invoke-virtual {v0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v1

    iget v3, v0, Lyads/gt3;->f:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v3, v0, Lyads/gt3;->i:I

    invoke-static {v1, v2, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    and-int v1, v1, v17

    if-nez v13, :cond_2f

    invoke-virtual {v0}, Lyads/gt3;->j()F

    move-result v3

    cmpg-float v3, v3, v16

    if-nez v3, :cond_2e

    goto :goto_1e

    :cond_2e
    int-to-float v3, v1

    invoke-virtual {v0}, Lyads/gt3;->j()F

    move-result v4

    div-float/2addr v3, v4

    invoke-static {v3}, Lw65;->b(F)I

    move-result v14

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v14, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    :cond_2f
    :goto_1e
    iget v3, v0, Lyads/gt3;->f:I

    sub-int/2addr v1, v3

    iget-object v3, v0, Lyads/gt3;->w:Ljava/util/ArrayList;

    if-eqz v3, :cond_30

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_30

    goto :goto_20

    :cond_30
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v6, Lyads/ro1;

    iget v6, v6, Lyads/ro1;->h:I

    if-eq v6, v5, :cond_31

    :goto_1f
    const/4 v3, 0x0

    goto :goto_21

    :cond_32
    :goto_20
    invoke-virtual {v0, v1, v2}, Lyads/gt3;->b(II)Z

    move-result v3

    if-eqz v3, :cond_3f

    goto :goto_1f

    :goto_21
    iput v3, v0, Lyads/gt3;->f:I

    invoke-virtual {v0, v1, v2}, Lyads/gt3;->a(II)I

    move-result v3

    iget-object v6, v0, Lyads/gt3;->w:Ljava/util/ArrayList;

    if-ltz v3, :cond_34

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_33
    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v8, Lyads/ro1;

    iget v8, v8, Lyads/ro1;->h:I

    if-eq v8, v5, :cond_33

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v11, Lyads/ro1;

    iget v11, v11, Lyads/ro1;->h:I

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v0, v6, v4, v8}, Lyads/gt3;->b(Landroid/view/View;II)V

    goto :goto_22

    :cond_34
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v8, 0x1

    if-le v5, v8, :cond_35

    new-instance v5, Lyads/ft3;

    invoke-direct {v5}, Lyads/ft3;-><init>()V

    invoke-static {v5, v6}, Lnn1;->J(Ljava/util/Comparator;Ljava/util/List;)V

    :cond_35
    iget-object v5, v0, Lyads/gt3;->w:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_23
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_38

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v11, Lyads/ro1;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v8, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v13, v8

    add-int/2addr v13, v12

    int-to-float v8, v13

    iget v10, v0, Lyads/gt3;->g:I

    int-to-float v10, v10

    div-float/2addr v8, v10

    int-to-float v10, v3

    mul-float/2addr v8, v10

    invoke-static {v8}, Lw65;->b(F)I

    move-result v8

    add-int/2addr v8, v12

    invoke-virtual {v6}, Landroid/view/View;->getMinimumWidth()I

    move-result v10

    if-ge v8, v10, :cond_36

    move v8, v10

    :cond_36
    iget v10, v11, Lyads/ro1;->h:I

    if-le v8, v10, :cond_37

    move v8, v10

    :cond_37
    invoke-virtual {v0, v6, v4, v8}, Lyads/gt3;->b(Landroid/view/View;II)V

    iget v8, v0, Lyads/gt3;->i:I

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredState()I

    move-result v10

    const/high16 v11, 0x1000000

    and-int/2addr v10, v11

    invoke-static {v8, v10}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v8

    iput v8, v0, Lyads/gt3;->i:I

    iget v8, v0, Lyads/gt3;->g:I

    sub-int/2addr v8, v13

    iput v8, v0, Lyads/gt3;->g:I

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v6, v12

    sub-int/2addr v3, v6

    const/4 v8, 0x1

    const/4 v10, -0x3

    goto :goto_23

    :cond_38
    invoke-virtual {v0, v1, v2}, Lyads/gt3;->a(II)I

    move-result v1

    iget v3, v0, Lyads/gt3;->A:F

    const/4 v5, 0x0

    iput v5, v0, Lyads/gt3;->y:I

    iput v9, v0, Lyads/gt3;->c:I

    iput v9, v0, Lyads/gt3;->d:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    move v8, v1

    move v6, v3

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v5, :cond_3e

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_3d

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v11, Lyads/ro1;

    iget v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v12, v9, :cond_39

    if-lez v1, :cond_3a

    iget v13, v11, Lyads/ro1;->d:F

    invoke-static {v12, v13}, Lyads/gt3;->a(IF)F

    move-result v12

    int-to-float v13, v8

    mul-float/2addr v12, v13

    div-float/2addr v12, v6

    float-to-int v12, v12

    iget v13, v11, Lyads/ro1;->d:F

    iget v9, v11, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v9, v13}, Lyads/gt3;->a(IF)F

    move-result v9

    sub-float/2addr v6, v9

    sub-int/2addr v8, v12

    invoke-virtual {v0, v10, v4, v12}, Lyads/gt3;->b(Landroid/view/View;II)V

    :cond_39
    const/4 v12, 0x0

    goto :goto_25

    :cond_3a
    invoke-virtual {v10}, Landroid/view/View;->getMinimumWidth()I

    move-result v9

    const/4 v12, 0x0

    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {v0, v10, v4, v9}, Lyads/gt3;->b(Landroid/view/View;II)V

    :goto_25
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v13, v12

    add-int/2addr v13, v9

    invoke-virtual {v0, v4, v13}, Lyads/gt3;->c(II)V

    iget v9, v0, Lyads/gt3;->f:I

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v13, v11

    add-int/2addr v13, v12

    add-int/2addr v13, v9

    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v0, Lyads/gt3;->f:I

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v9, Lyads/ro1;

    iget-boolean v11, v9, Lyads/ro1;->b:Z

    if-nez v11, :cond_3b

    goto :goto_26

    :cond_3b
    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_3c

    goto :goto_26

    :cond_3c
    iget v12, v0, Lyads/gt3;->c:I

    iget v13, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v13, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    iput v12, v0, Lyads/gt3;->c:I

    iget v12, v0, Lyads/gt3;->d:I

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    sub-int/2addr v10, v11

    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v10, v9

    invoke-static {v12, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v0, Lyads/gt3;->d:I

    :cond_3d
    :goto_26
    add-int/lit8 v3, v3, 0x1

    const/4 v9, -0x1

    goto/16 :goto_24

    :cond_3e
    iget v1, v0, Lyads/gt3;->f:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    add-int/2addr v5, v3

    add-int/2addr v5, v1

    iput v5, v0, Lyads/gt3;->f:I

    :cond_3f
    if-nez v15, :cond_46

    invoke-virtual {v0}, Lyads/gt3;->j()F

    move-result v1

    cmpg-float v1, v1, v16

    if-nez v1, :cond_46

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_27
    if-ge v3, v1, :cond_44

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v11, 0x8

    if-eq v6, v11, :cond_43

    iget v6, v0, Lyads/gt3;->y:I

    if-nez v6, :cond_40

    const/4 v6, 0x1

    goto :goto_28

    :cond_40
    const/4 v6, 0x0

    :goto_28
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v8, Lyads/ro1;

    iget v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v12, -0x1

    if-eq v9, v12, :cond_41

    goto :goto_29

    :cond_41
    if-eqz v6, :cond_42

    iget v6, v0, Lyads/gt3;->y:I

    invoke-virtual {v5}, Landroid/view/View;->getMinimumHeight()I

    move-result v5

    iget v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v9, v8

    add-int/2addr v9, v5

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v0, Lyads/gt3;->y:I

    goto :goto_29

    :cond_42
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v0, v5, v4, v6}, Lyads/gt3;->b(Landroid/view/View;II)V

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v6, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v6, v8

    add-int/2addr v6, v5

    invoke-virtual {v0, v4, v6}, Lyads/gt3;->c(II)V

    :cond_43
    :goto_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_44
    iget v1, v0, Lyads/gt3;->y:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    add-int/2addr v5, v3

    add-int/2addr v5, v1

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lyads/gt3;->y:I

    iget v1, v0, Lyads/gt3;->c:I

    const/4 v12, -0x1

    if-eq v1, v12, :cond_45

    iget v3, v0, Lyads/gt3;->d:I

    add-int/2addr v1, v3

    invoke-virtual {v0, v4, v1}, Lyads/gt3;->c(II)V

    :cond_45
    iget v1, v0, Lyads/gt3;->y:I

    invoke-static {v1, v4}, Landroid/view/View;->resolveSize(II)I

    move-result v14

    :cond_46
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v6, 0x0

    :goto_2a
    if-ge v6, v1, :cond_49

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v11, 0x8

    if-eq v5, v11, :cond_48

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v14, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v8, Lyads/ro1;

    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v12, -0x1

    const/4 v9, -0x3

    if-eq v8, v12, :cond_47

    if-eq v8, v9, :cond_47

    goto :goto_2b

    :cond_47
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v0, v3, v7, v8}, Lyads/gt3;->b(Landroid/view/View;II)V

    goto :goto_2b

    :cond_48
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v9, -0x3

    const/4 v12, -0x1

    :goto_2b
    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    :cond_49
    invoke-virtual {v0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v1

    iget v3, v0, Lyads/gt3;->f:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v3, v0, Lyads/gt3;->i:I

    invoke-static {v1, v2, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    iget v2, v0, Lyads/gt3;->i:I

    shl-int/lit8 v2, v2, 0x10

    invoke-static {v14, v4, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_2c
    iget-object v1, v0, Lyads/gt3;->w:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, Lyads/gt3;->z:Ljava/util/LinkedHashSet;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    iget-object v0, v0, Lyads/gt3;->x:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public setAspectRatio(F)V
    .locals 3

    iget-object v0, p0, Lyads/gt3;->j:Lyads/hp0;

    sget-object v1, Lyads/gt3;->B:[Lze4;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Lyads/hp0;->setValue(Ljava/lang/Object;Lze4;Ljava/lang/Object;)V

    return-void
.end method

.method public final setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lyads/gt3;->u:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lyads/gt3;->u:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    iput v1, p0, Lyads/gt3;->k:I

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    iput v1, p0, Lyads/gt3;->l:I

    if-nez p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final setDividerMargins(IIII)V
    .locals 0

    iput p1, p0, Lyads/gt3;->o:I

    iput p3, p0, Lyads/gt3;->p:I

    iput p2, p0, Lyads/gt3;->m:I

    iput p4, p0, Lyads/gt3;->n:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final setItemSpacing(I)V
    .locals 1

    iget v0, p0, Lyads/gt3;->q:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lyads/gt3;->q:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final setOrientation(I)V
    .locals 3

    iget-object v0, p0, Lyads/gt3;->e:Lyads/hp0;

    sget-object v1, Lyads/gt3;->B:[Lze4;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Lyads/hp0;->setValue(Ljava/lang/Object;Lze4;Ljava/lang/Object;)V

    return-void
.end method

.method public final setShowDividers(I)V
    .locals 3

    iget-object v0, p0, Lyads/gt3;->v:Lyads/hp0;

    sget-object v1, Lyads/gt3;->B:[Lze4;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Lyads/hp0;->setValue(Ljava/lang/Object;Lze4;Ljava/lang/Object;)V

    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
