.class public final synthetic Lem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;

.field public final synthetic d:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(ILcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lem;->b:I

    iput-object p2, p0, Lem;->c:Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;

    iput-object p3, p0, Lem;->d:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget v0, p0, Lem;->b:I

    iget-object v6, p0, Lem;->c:Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;

    iget-object p0, p0, Lem;->d:Landroid/graphics/Bitmap;

    iget-object v1, v6, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_5

    invoke-virtual {v6}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iput-object p0, v6, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->d()V

    invoke-virtual {v6}, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->c()V

    iget-object p0, v6, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-eq v0, p0, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object p0, v6, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->p:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    const/4 p0, 0x0

    iput-object p0, v6, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->p:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    const/4 v7, 0x0

    if-eqz p0, :cond_4

    iget-object p0, v6, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/4 p0, 0x2

    new-array v1, p0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    iget-wide v1, v6, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->r:J

    invoke-virtual {v8, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v8, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lam;

    invoke-direct {v1, v6}, Lam;-><init>(Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;)V

    invoke-virtual {v8, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Lzl;

    invoke-direct {v1, v6, v7}, Lzl;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v8, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lbm;

    invoke-direct {v1, v6}, Lbm;-><init>(Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;)V

    invoke-virtual {v8, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v1, p0, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v9

    iget-wide v1, v6, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->s:J

    invoke-virtual {v9, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v1, p0, [F

    fill-array-data v1, :array_2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v10

    iget-wide v1, v6, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->t:J

    invoke-virtual {v10, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v10, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lo07;

    invoke-direct {v2}, Lo07;-><init>()V

    new-instance v3, Lo07;

    invoke-direct {v3}, Lo07;-><init>()V

    new-instance v4, Lo07;

    invoke-direct {v4}, Lo07;-><init>()V

    new-instance v5, Lo07;

    invoke-direct {v5}, Lo07;-><init>()V

    new-instance v1, Lcm;

    invoke-direct/range {v1 .. v6}, Lcm;-><init>(Lo07;Lo07;Lo07;Lo07;Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;)V

    invoke-virtual {v10, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Lyl;

    move-object v11, v4

    move-object v4, v3

    move-object v3, v11

    invoke-direct/range {v1 .. v6}, Lyl;-><init>(Lo07;Lo07;Lo07;Lo07;Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;)V

    invoke-virtual {v10, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Ldm;

    invoke-direct {v1, v6}, Ldm;-><init>(Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;)V

    invoke-virtual {v10, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v8, v2, v7

    const/4 v3, 0x1

    aput-object v9, v2, v3

    aput-object v10, v2, p0

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    new-instance p0, Lgm;

    invoke-direct {p0, v0, v6}, Lgm;-><init>(ILcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;)V

    invoke-virtual {v1, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    iput-object v1, v6, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->p:Landroid/animation/AnimatorSet;

    return-void

    :cond_4
    :goto_0
    iget-object p0, v6, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_5
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
