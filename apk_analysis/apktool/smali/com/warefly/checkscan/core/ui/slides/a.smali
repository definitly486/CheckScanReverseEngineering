.class public final Lcom/warefly/checkscan/core/ui/slides/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic a:Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/core/ui/slides/a;->a:Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/slides/a;->a:Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;

    iget-object p1, p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;->h:Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar$b;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;->b:I

    iget-wide v1, p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;->c:J

    invoke-interface {p1, v0, v1, v2}, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar$b;->onAnimationEnd(IJ)V

    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/slides/a;->a:Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;->e:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
