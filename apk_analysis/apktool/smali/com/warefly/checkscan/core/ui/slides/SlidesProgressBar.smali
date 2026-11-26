.class public final Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar$a;,
        Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar$b;
    }
.end annotation


# instance fields
.field public final b:I

.field public final c:J

.field public final d:J

.field public final e:Landroid/view/View;

.field public final f:Landroid/view/View;

.field public g:Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar$a;

.field public h:Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;IJ)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput p2, p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;->b:I

    iput-wide p3, p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;->c:J

    const-wide/16 p2, 0x1388

    iput-wide p2, p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;->d:J

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0343

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a02ad

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;->e:Landroid/view/View;

    const p1, 0x7f0a045d

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;->f:Landroid/view/View;

    new-instance p1, Lp38;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lp38;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;->g:Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;->g:Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar$a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    :cond_1
    iput-object v1, p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;->g:Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar$a;

    return-void
.end method

.method public final getCurrentProgress()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getStoryId()J
    .locals 2

    iget-wide v0, p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;->c:J

    return-wide v0
.end method

.method public final setEndAnimationListener(Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar$b;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;->h:Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar$b;

    return-void
.end method

.method public final setMax()V
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;->a()V

    return-void
.end method

.method public final setMaxWithoutCallback()V
    .locals 2

    const v0, 0x7f0604fc

    iget-object v1, p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;->f:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;->g:Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar$a;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;->g:Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar$a;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/animation/Animation;->cancel()V

    :cond_1
    return-void
.end method

.method public final setMin()V
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;->a()V

    return-void
.end method

.method public final setPartProgress(F)V
    .locals 11

    iget-object v0, p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar$a;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v3, p1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v2, p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;->g:Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar$a;

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object p1, p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;->e:Landroid/view/View;

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;->g:Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar$a;

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
