.class public final Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field public static final synthetic C:I


# instance fields
.field public final A:Landroid/graphics/Rect;

.field public final B:Landroid/graphics/RectF;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field public volatile d:Landroid/graphics/Bitmap;

.field public volatile e:Lfm;

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public final l:Landroid/graphics/Paint;

.field public m:I

.field public final n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile p:Landroid/animation/AnimatorSet;

.field public final q:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final r:J

.field public final s:J

.field public final t:J

.field public u:F

.field public v:F

.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 82
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 80
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p1, Lkx2;->b:Lkx2;

    iput-object p1, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->b:Ljava/util/List;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->j:F

    new-instance p1, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->l:Landroid/graphics/Paint;

    const/16 p1, 0xff

    iput p1, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->m:I

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    const-wide/16 p1, 0x190

    iput-wide p1, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->r:J

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->s:J

    iput-wide p1, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->t:J

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->A:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->B:Landroid/graphics/RectF;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 p3, 0x0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;)V
    .locals 0

    invoke-static {p0}, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->setImageUrls$lambda$1$lambda$0(Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;)V

    return-void
.end method

.method private static final setImageUrls$lambda$1$lambda$0(Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->e()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget-object v3, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    rem-int/2addr v2, v4

    iget-object v4, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    sget-object v2, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    iget-object v2, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->e:Lfm;

    if-eqz v2, :cond_3

    :try_start_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object v4

    invoke-virtual {v4, v2}, Lp37;->c(Lwk8;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->e:Lfm;

    iget-object v4, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->p:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_4
    iput-object v2, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->p:Landroid/animation/AnimatorSet;

    new-instance v4, Lfm;

    invoke-direct {v4, v0, p0}, Lfm;-><init>(ILcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;)V

    iput-object v4, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->e:Lfm;

    :try_start_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object v0

    invoke-virtual {v0}, Lp37;->b()Lh37;

    move-result-object v0

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lh37;->N(Ljava/lang/Object;)Lh37;

    move-result-object v0

    invoke-virtual {v0, v4, v0}, Lh37;->K(Lwk8;Lee0;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    iget-object v0, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-object v2, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->e:Lfm;

    return-void

    :goto_0
    monitor-exit p0

    throw v0

    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_6
    :goto_2
    iget-object p0, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final c()V
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->h:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v3, v4

    sub-float v5, v2, v5

    iput v5, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->u:F

    iget v5, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->i:F

    neg-float v6, v5

    iput v6, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->v:F

    const v6, 0x3e19999a    # 0.15f

    mul-float/2addr v0, v6

    div-float v6, v3, v4

    sub-float/2addr v0, v6

    iput v0, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->w:F

    const v0, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v1

    div-float v6, v5, v4

    sub-float/2addr v0, v6

    iput v0, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->x:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->y:F

    const v0, 0x3f666666    # 0.9f

    mul-float/2addr v5, v0

    sub-float/2addr v1, v5

    iput v1, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->z:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    :cond_1
    :goto_0
    return-void
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    iput v1, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->i:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->h:F

    :cond_1
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->b()V

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Lxl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lxl;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->p:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->p:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->e:Lfm;

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object v2

    invoke-virtual {v2, v1}, Lp37;->c(Lwk8;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iput-object v0, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->e:Lfm;

    iget-object v1, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->p:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    iput-object v0, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->p:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->d:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    :try_start_0
    iget v2, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->g:F

    iget v3, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->h:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v2

    iget v2, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->f:F

    iget v5, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->i:F

    div-float/2addr v5, v4

    add-float/2addr v5, v2

    iget v2, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->k:F

    invoke-virtual {p1, v2, v3, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v2, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->j:F

    invoke-virtual {p1, v2, v2, v3, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v2, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->l:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    iget-object v3, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->l:Landroid/graphics/Paint;

    iget v4, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->m:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v3, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->A:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->B:Landroid/graphics/RectF;

    iget v4, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->g:F

    iget v5, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->f:F

    iget v6, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->h:F

    add-float/2addr v6, v4

    iget v7, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->i:F

    add-float/2addr v7, v5

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->A:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->B:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object p0, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->l:Landroid/graphics/Paint;

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setAlpha(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p0
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    new-instance p1, Loh;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Loh;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final setImageUrls(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    move v1, v3

    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    if-lez p1, :cond_1

    new-instance p1, Lph;

    invoke-direct {p1, p0, v3}, Lph;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method
