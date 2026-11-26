.class public final Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;
.super Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;
.source "SourceFile"


# static fields
.field public static final synthetic q:I


# instance fields
.field public final j:Landroid/widget/LinearLayout;

.field public final k:F

.field public final l:Z

.field public final m:F

.field public final n:I

.field public o:I

.field public final p:Landroid/animation/ArgbEvaluator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 139
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 137
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2, p3}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;->p:Landroid/animation/ArgbEvaluator;

    const/high16 p1, 0x40200000    # 2.5f

    iput p1, p0, Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;->k:F

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lyw6;->b:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x7

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;->n:I

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;->j:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;->n:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;->j:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    const/16 v0, 0x9

    const v1, -0xff0001

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;->setSelectedDotColor(I)V

    const/4 v0, 0x6

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;->k:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    iput v0, p0, Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;->k:F

    :cond_0
    const/16 p1, 0x8

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;->l:Z

    const/4 p1, 0x3

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;->m:F

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_1
    const-string p0, "linearLayout"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_4

    :goto_1
    const/4 p1, 0x5

    if-ge p3, p1, :cond_3

    invoke-virtual {p0, p3}, Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;->a(I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->d()V

    :cond_4
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 p3, 0x0

    .line 138
    invoke-direct {p0, p1, p2, p3}, Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d009f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0249

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutDirection(I)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->getDotsSize()F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v4, p0, Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;->n:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->getDotsSpacing()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->getDotsSpacing()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v2, v4, v2, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->getDotsSpacing()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->getDotsSpacing()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v2, v5, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_0
    new-instance v2, Lgq2;

    invoke-direct {v2}, Lgq2;-><init>()V

    invoke-virtual {p0}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->getDotsCornerRadius()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez p1, :cond_1

    iget v3, p0, Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;->o:I

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->getDotsColor()I

    move-result v3

    :goto_1
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->getPager()Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$a;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$a;->a()I

    move-result v3

    if-ne v3, p1, :cond_3

    iget v3, p0, Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;->o:I

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->getDotsColor()I

    move-result v3

    :goto_2
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :goto_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lhq2;

    invoke-direct {v2, p0, p1}, Lhq2;-><init>(Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x3f4ccccd    # 0.8f

    iget v2, p0, Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;->m:F

    mul-float/2addr p1, v2

    float-to-int p1, p1

    invoke-static {p1, v0}, Lie9;->a(ILandroid/view/View;)V

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr p1, v2

    float-to-int p1, p1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {v0, v3, p1, v4, p1}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setElevation(F)V

    iget-object p1, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;->j:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_4
    const-string p0, "linearLayout"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final c()Lcom/warefly/checkscan/ui/dotindicator/a;
    .locals 1

    new-instance v0, Lcom/warefly/checkscan/ui/dotindicator/a;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/ui/dotindicator/a;-><init>(Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;)V

    return-object v0
.end method

.method public final f()V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "linearLayout"

    iget-object v2, p0, Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;->j:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object p0, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-static {v1}, Laa4;->j(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v1}, Laa4;->j(Ljava/lang/String;)V

    throw v0
.end method

.method public final getSelectedDotColor()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;->o:I

    return p0
.end method

.method public getType()Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;
    .locals 0

    sget-object p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;->DEFAULT:Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;

    return-object p0
.end method

.method public final setSelectedDotColor(I)V
    .locals 0

    iput p1, p0, Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;->o:I

    invoke-virtual {p0}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->e()V

    return-void
.end method

.method public final setSelectedPointColor(I)V
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;->setSelectedDotColor(I)V

    return-void
.end method
