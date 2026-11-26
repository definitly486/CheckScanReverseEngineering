.class public final Lyads/vv5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/af;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Landroid/animation/ArgbEvaluator;

.field public d:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x1f4

    iput v1, p0, Lyads/vv5;->a:I

    iput p1, p0, Lyads/vv5;->b:I

    iput-object v0, p0, Lyads/vv5;->c:Landroid/animation/ArgbEvaluator;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 3

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    iget-object v1, p0, Lyads/vv5;->c:Landroid/animation/ArgbEvaluator;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p0, Lyads/vv5;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lyads/vv5;->d:Landroid/animation/ValueAnimator;

    new-instance v1, Lyads/uv5;

    invoke-direct {v1, p1}, Lyads/uv5;-><init>(Landroid/widget/TextView;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    iget-object p1, p0, Lyads/vv5;->d:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lyads/vv5;->a:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :goto_0
    iget-object p0, p0, Lyads/vv5;->d:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void
.end method

.method public final cancel()V
    .locals 1

    iget-object v0, p0, Lyads/vv5;->d:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_0
    iget-object p0, p0, Lyads/vv5;->d:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method
