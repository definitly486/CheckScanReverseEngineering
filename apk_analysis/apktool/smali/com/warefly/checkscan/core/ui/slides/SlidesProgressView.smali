.class public final Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView$SlidesProgressViewState;
    }
.end annotation


# instance fields
.field public final b:Landroid/widget/LinearLayout$LayoutParams;

.field public final c:Ljava/util/ArrayList;

.field public final d:I

.field public final e:I

.field public final f:Landroid/widget/LinearLayout$LayoutParams;

.field public g:I

.field public h:Z

.field public i:Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/presenter/OnboardingHowGetCashPresenter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v0, p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView;->b:Landroid/widget/LinearLayout$LayoutParams;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView;->d:I

    const/16 v0, 0x8

    invoke-static {v0}, Lpl2;->e(I)I

    move-result v1

    iput v1, p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView;->e:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v0}, Lpl2;->e(I)I

    move-result v0

    invoke-direct {v1, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView;->f:Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    iput v0, p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView;->g:I

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget-object p1, Lax6;->e:[I

    invoke-virtual {p0, p2, p1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final getCollectionSize()I
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView;->c:Ljava/util/ArrayList;

    invoke-static {p0}, Lu96;->g(Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public final getCurrentId()J
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Lu96;->f(Ljava/util/Collection;)Ly74;

    move-result-object v1

    iget v2, p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView;->g:I

    invoke-virtual {v1, v2}, Ly74;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget p0, p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView;->g:I

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;->getStoryId()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final getCurrentIndex()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView;->g:I

    return p0
.end method

.method public final getCurrentProgress()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView;->c:Ljava/util/ArrayList;

    iget p0, p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView;->g:I

    invoke-static {p0, v0}, Lqn1;->W(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;->getCurrentProgress()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    instance-of v0, p1, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView$SlidesProgressViewState;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView$SlidesProgressViewState;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    const/4 v0, -0x1

    if-eqz p1, :cond_1

    iget v2, p1, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView$SlidesProgressViewState;->c:I

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    iput v2, p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView;->g:I

    if-eq v2, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView;->h:Z

    if-eqz p1, :cond_3

    iget-object v1, p1, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView$SlidesProgressViewState;->b:Landroid/os/Parcelable;

    :cond_3
    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView$SlidesProgressViewState;

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iget p0, p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView;->g:I

    invoke-direct {v0, v1, p0}, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView$SlidesProgressViewState;-><init>(Landroid/os/Parcelable;I)V

    return-object v0
.end method

.method public final setCurrentIndex(I)V
    .locals 0

    iput p1, p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView;->g:I

    return-void
.end method

.method public final setCurrentProgressByVideoPosition(FI)V
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView;->c:Ljava/util/ArrayList;

    invoke-static {p0}, Lu96;->f(Ljava/util/Collection;)Ly74;

    move-result-object v0

    invoke-virtual {v0, p2}, Ly74;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;->setPartProgress(F)V

    :cond_0
    return-void
.end method
