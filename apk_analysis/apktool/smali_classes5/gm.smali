.class public final Lgm;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;


# direct methods
.method public constructor <init>(ILcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;)V
    .locals 0

    iput p1, p0, Lgm;->a:I

    iput-object p2, p0, Lgm;->b:Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lgm;->b:Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;

    iget-object p0, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lgm;->a:I

    iget-object v0, p0, Lgm;->b:Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;

    iget-object v0, v0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lgm;->b:Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;

    iget-object p1, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->p:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->b:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lrh;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lrh;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
