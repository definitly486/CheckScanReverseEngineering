.class public abstract Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$a;,
        Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;
    }
.end annotation


# static fields
.field public static final synthetic i:I


# instance fields
.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z

.field public d:I

.field public e:F

.field public f:F

.field public g:F

.field public h:Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 176
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 174
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->b:Ljava/util/ArrayList;

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->c:Z

    const v0, -0xff0001

    iput v0, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->d:I

    invoke-virtual {p0}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->getType()Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;->a()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->e:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v2, v1

    iput v2, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->f:F

    invoke-virtual {p0}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->getType()Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;->d()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->g:F

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->getType()Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;->k()[I

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->getType()Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;->f()I

    move-result p2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->setDotsColor(I)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->getType()Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;->i()I

    move-result p2

    iget v0, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->e:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->e:F

    invoke-virtual {p0}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->getType()Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;->g()I

    move-result p2

    iget v0, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->f:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->f:F

    invoke-virtual {p0}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->getType()Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;->j()I

    move-result p2

    iget v0, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->g:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->g:F

    invoke-virtual {p0}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->getType()Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;->e()I

    move-result p2

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->c:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 p3, 0x0

    .line 175
    invoke-direct {p0, p1, p2, p3}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public abstract a(I)V
.end method

.method public final b(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 3

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljq2;

    invoke-direct {v1, p0}, Ljq2;-><init>(Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;)V

    new-instance v2, Lhe9;

    invoke-direct {v2, v1}, Lhe9;-><init>(Ljq2;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    new-instance v0, Lge9;

    invoke-direct {v0, p1}, Lge9;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->setPager(Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$a;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->d()V

    return-void

    :cond_0
    const-string p0, "Please set an adapter to the view pager before initializing the dots indicator"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public abstract c()Lcom/warefly/checkscan/ui/dotindicator/a;
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->h:Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Llh;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Llh;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract f()V
.end method

.method public final getDotsClickable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->c:Z

    return p0
.end method

.method public final getDotsColor()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->d:I

    return p0
.end method

.method public final getDotsCornerRadius()F
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->f:F

    return p0
.end method

.method public final getDotsSize()F
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->e:F

    return p0
.end method

.method public final getDotsSpacing()F
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->g:F

    return p0
.end method

.method public final getPager()Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$a;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->h:Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$a;

    return-object p0
.end method

.method public abstract getType()Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;
.end method

.method public final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    new-instance v0, Led0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Led0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutDirection(I)V

    const/high16 p1, 0x43340000    # 180.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    new-instance p1, Ldd0;

    invoke-direct {p1, p0}, Ldd0;-><init>(Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setDotsClickable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->c:Z

    return-void
.end method

.method public final setDotsColor(I)V
    .locals 0

    iput p1, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->d:I

    invoke-virtual {p0}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->e()V

    return-void
.end method

.method public final setDotsCornerRadius(F)V
    .locals 0

    iput p1, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->f:F

    return-void
.end method

.method public final setDotsSize(F)V
    .locals 0

    iput p1, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->e:F

    return-void
.end method

.method public final setDotsSpacing(F)V
    .locals 0

    iput p1, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->g:F

    return-void
.end method

.method public final setPager(Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$a;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->h:Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$a;

    return-void
.end method

.method public final setPointsColor(I)V
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->setDotsColor(I)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->e()V

    return-void
.end method

.method public final setViewPager2(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 3
    .annotation runtime Lul2;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljq2;

    invoke-direct {v1, p0}, Ljq2;-><init>(Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;)V

    new-instance v2, Lhe9;

    invoke-direct {v2, v1}, Lhe9;-><init>(Ljq2;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    new-instance v0, Lge9;

    invoke-direct {v0, p1}, Lge9;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->setPager(Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$a;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->d()V

    return-void

    :cond_0
    const-string p0, "Please set an adapter to the view pager before initializing the dots indicator"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method
