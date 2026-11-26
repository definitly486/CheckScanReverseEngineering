.class public final Lyads/nc5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/View;

.field public final b:F

.field public final c:F

.field public d:Z

.field public final synthetic e:Lyads/oc5;


# direct methods
.method public constructor <init>(Lyads/oc5;Landroid/view/View;FF)V
    .locals 0

    iput-object p1, p0, Lyads/nc5;->e:Lyads/oc5;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iput-object p2, p0, Lyads/nc5;->a:Landroid/view/View;

    iput p3, p0, Lyads/nc5;->b:F

    iput p4, p0, Lyads/nc5;->c:F

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lyads/nc5;->a:Landroid/view/View;

    iget v1, p0, Lyads/nc5;->b:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lyads/nc5;->a:Landroid/view/View;

    iget v1, p0, Lyads/nc5;->c:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-boolean v0, p0, Lyads/nc5;->d:Z

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v1, p0, Lyads/nc5;->a:Landroid/view/View;

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->resetPivot()V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lyads/nc5;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    :cond_1
    :goto_0
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lyads/nc5;->a:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lyads/nc5;->e:Lyads/oc5;

    iget v0, p1, Lyads/oc5;->b:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    iget p1, p1, Lyads/oc5;->c:F

    cmpg-float p1, p1, v1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lyads/nc5;->d:Z

    iget-object p1, p0, Lyads/nc5;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lyads/nc5;->e:Lyads/oc5;

    iget v1, v1, Lyads/oc5;->b:F

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    iget-object p1, p0, Lyads/nc5;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object p0, p0, Lyads/nc5;->e:Lyads/oc5;

    iget p0, p0, Lyads/oc5;->c:F

    mul-float/2addr v0, p0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method
