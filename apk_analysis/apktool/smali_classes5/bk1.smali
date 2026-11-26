.class public final Lbk1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# static fields
.field public static final f:I

.field public static final g:I

.field public static final h:I

.field public static final i:I

.field public static final j:F

.field public static final k:F

.field public static final l:F


# instance fields
.field public final e:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "#3085FF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lbk1;->f:I

    const-string v0, "#D6E7FF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lbk1;->g:I

    const/16 v0, 0x10

    invoke-static {v0}, Lpl2;->e(I)I

    move-result v0

    sput v0, Lbk1;->h:I

    const/16 v0, 0xc

    invoke-static {v0}, Lpl2;->e(I)I

    move-result v0

    sput v0, Lbk1;->i:I

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lpl2;->d(F)F

    move-result v1

    sput v1, Lbk1;->j:F

    invoke-static {v0}, Lpl2;->d(F)F

    move-result v0

    sput v0, Lbk1;->k:F

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lpl2;->d(F)F

    move-result v0

    sput v0, Lbk1;->l:F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget v1, Lbk1;->j:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-object v0, p0, Lbk1;->e:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lsg;->e(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    instance-of p2, p0, Lx44;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    check-cast p0, Lx44;

    invoke-interface {p0}, Lx44;->i()I

    move-result p0

    const/4 p2, 0x1

    if-le p0, p2, :cond_1

    sget p0, Lbk1;->h:I

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    :goto_0
    return-void
.end method

.method public final onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    instance-of v0, p3, Lx44;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    check-cast p3, Lx44;

    invoke-interface {p3}, Lx44;->i()I

    move-result p3

    const/4 v0, 0x1

    if-le p3, v0, :cond_5

    int-to-float v0, p3

    sget v1, Lbk1;->k:F

    mul-float/2addr v0, v1

    add-int/lit8 v2, p3, -0x1

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    sget v4, Lbk1;->l:F

    mul-float/2addr v2, v4

    add-float/2addr v2, v0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sget v8, Lbk1;->i:I

    invoke-virtual {p2, v5, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lbk1;->h:I

    int-to-float v6, v6

    div-float/2addr v6, v2

    sub-float/2addr v5, v6

    sget v6, Lbk1;->g:I

    iget-object p0, p0, Lbk1;->e:Landroid/graphics/Paint;

    invoke-virtual {p0, v6}, Landroid/graphics/Paint;->setColor(I)V

    add-float v6, v1, v4

    move v7, v0

    :goto_0
    if-ge v3, p3, :cond_1

    div-float v8, v1, v2

    invoke-virtual {p1, v7, v5, v8, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-float/2addr v7, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    rem-int/2addr p2, p3

    sget p3, Lbk1;->f:I

    invoke-virtual {p0, p3}, Landroid/graphics/Paint;->setColor(I)V

    add-float/2addr v4, v1

    int-to-float p2, p2

    mul-float/2addr v4, p2

    add-float/2addr v4, v0

    div-float/2addr v1, v2

    invoke-virtual {p1, v4, v5, v1, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_5
    :goto_3
    return-void
.end method
