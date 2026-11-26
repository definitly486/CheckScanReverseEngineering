.class public final Lcom/warefly/checkscan/ui/dotindicator/a;
.super Lgw5;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/ui/dotindicator/a;->c:Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lgw5;->a:I

    iput p1, p0, Lgw5;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/ui/dotindicator/a;->c:Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;

    iget-object p0, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final c(FII)V
    .locals 7

    iget-object p0, p0, Lcom/warefly/checkscan/ui/dotindicator/a;->c:Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;

    iget-object v0, p0, Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;->p:Landroid/animation/ArgbEvaluator;

    iget-object v1, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Landroid/widget/ImageView;

    iget v3, p0, Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;->n:I

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->getDotsSize()F

    move-result v3

    invoke-virtual {p0}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->getDotsSize()F

    move-result v5

    iget v6, p0, Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;->k:F

    sub-float/2addr v6, v4

    mul-float/2addr v6, v5

    invoke-static {v4, p1, v6, v3}, Li8;->b(FFFF)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v2, v3}, Lie9;->b(Landroid/view/View;I)V

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p3, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p3, v3, :cond_4

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p3, Landroid/widget/ImageView;

    iget v1, p0, Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;->n:I

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->getDotsSize()F

    move-result v1

    invoke-virtual {p0}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->getDotsSize()F

    move-result v3

    iget v5, p0, Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;->k:F

    sub-float/2addr v5, v4

    mul-float/2addr v5, v3

    mul-float/2addr v5, p1

    add-float/2addr v5, v1

    float-to-int v1, v5

    invoke-static {p3, v1}, Lie9;->b(Landroid/view/View;I)V

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lgq2;

    invoke-virtual {p3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p3, Lgq2;

    invoke-virtual {p0}, Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;->getSelectedDotColor()I

    move-result v2

    invoke-virtual {p0}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->getDotsColor()I

    move-result v3

    if-eq v2, v3, :cond_4

    invoke-virtual {p0}, Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;->getSelectedDotColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->getDotsColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, p1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->getDotsColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;->getSelectedDotColor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, p1, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-boolean p1, p0, Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;->l:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->getPager()Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$a;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$a;->a()I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-gt p2, p1, :cond_3

    invoke-virtual {p0}, Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;->getSelectedDotColor()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final d(I)V
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/ui/dotindicator/a;->c:Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;

    iget-object v0, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->getDotsSize()F

    move-result p0

    float-to-int p0, p0

    invoke-static {p1, p0}, Lie9;->b(Landroid/view/View;I)V

    return-void
.end method
