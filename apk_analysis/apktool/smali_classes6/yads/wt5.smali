.class public final Lyads/wt5;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/SurfaceView;

.field public b:F

.field public c:Lyads/wx3;

.field public d:Lyads/tj;

.field public e:Lyads/kw4;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lyads/wt5;->a:Landroid/view/SurfaceView;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lyads/wt5;->b:F

    new-instance p1, Lyads/uk5;

    invoke-direct {p1}, Lyads/uk5;-><init>()V

    iput-object p1, p0, Lyads/wt5;->c:Lyads/wx3;

    const/high16 p1, -0x1000000

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/16 v2, 0x11

    const/4 v3, -0x1

    invoke-direct {p1, v3, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final onMeasure(II)V
    .locals 6

    iget-object v0, p0, Lyads/wt5;->c:Lyads/wx3;

    invoke-interface {v0, p1, p2}, Lyads/wx3;->a(II)Lyads/vx3;

    move-result-object p1

    iget p2, p1, Lyads/vx3;->a:I

    iget p1, p1, Lyads/vx3;->b:I

    invoke-super {p0, p2, p1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-object p1, p0, Lyads/wt5;->d:Lyads/tj;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v1, p2

    int-to-float v2, v0

    div-float v3, v1, v2

    iget v4, p1, Lyads/tj;->a:F

    div-float v3, v4, v3

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v3, v5

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_0

    div-float/2addr v1, v4

    float-to-int v0, v1

    goto :goto_0

    :cond_0
    mul-float/2addr v2, v4

    float-to-int p2, v2

    :goto_0
    iget-object v1, p1, Lyads/tj;->b:Lyads/vx3;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iput p2, v1, Lyads/vx3;->a:I

    iget-object p2, p1, Lyads/tj;->b:Lyads/vx3;

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p2, Lyads/vx3;->b:I

    iget-object p1, p1, Lyads/tj;->b:Lyads/vx3;

    iget-object p0, p0, Lyads/wt5;->a:Landroid/view/SurfaceView;

    iget p2, p1, Lyads/vx3;->a:I

    iget p1, p1, Lyads/vx3;->b:I

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->measure(II)V

    :cond_1
    return-void
.end method

.method public final setAspectRatio(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    iget v0, p0, Lyads/wt5;->b:F

    cmpg-float v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lyads/wt5;->b:F

    new-instance v0, Lyads/tj;

    invoke-direct {v0, p1}, Lyads/tj;-><init>(F)V

    iput-object v0, p0, Lyads/wt5;->d:Lyads/tj;

    new-instance v0, Lyads/l25;

    invoke-direct {v0, p1}, Lyads/l25;-><init>(F)V

    iput-object v0, p0, Lyads/wt5;->c:Lyads/wx3;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setPlayer(Lyads/kw4;)V
    .locals 5

    iget-object v0, p0, Lyads/wt5;->e:Lyads/kw4;

    invoke-static {v0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lyads/wt5;->e:Lyads/kw4;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lyads/wt5;->a:Landroid/view/SurfaceView;

    check-cast v0, Lyads/eq2;

    invoke-virtual {v0}, Lyads/eq2;->q()V

    if-nez v3, :cond_1

    move-object v3, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0}, Lyads/eq2;->q()V

    if-eqz v3, :cond_2

    iget-object v4, v0, Lyads/eq2;->M:Landroid/view/SurfaceHolder;

    if-ne v3, v4, :cond_2

    invoke-virtual {v0}, Lyads/eq2;->q()V

    invoke-virtual {v0}, Lyads/eq2;->m()V

    invoke-virtual {v0, v1}, Lyads/eq2;->a(Landroid/view/Surface;)V

    invoke-virtual {v0, v2, v2}, Lyads/eq2;->a(II)V

    :cond_2
    iput-object p1, p0, Lyads/wt5;->e:Lyads/kw4;

    if-eqz p1, :cond_a

    move-object v0, p1

    check-cast v0, Lyads/fs;

    check-cast v0, Lyads/eq2;

    invoke-virtual {v0}, Lyads/eq2;->q()V

    iget-object v0, v0, Lyads/eq2;->H:Lyads/hw4;

    iget-object v0, v0, Lyads/hw4;->b:Lyads/my2;

    iget-object v0, v0, Lyads/my2;->a:Landroid/util/SparseBooleanArray;

    const/16 v3, 0x1b

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object p0, p0, Lyads/wt5;->a:Landroid/view/SurfaceView;

    check-cast p1, Lyads/eq2;

    invoke-virtual {p1}, Lyads/eq2;->q()V

    instance-of v0, p0, Lyads/bp5;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lyads/eq2;->m()V

    move-object v0, p0

    check-cast v0, Lyads/bp5;

    iput-object v0, p1, Lyads/eq2;->N:Lyads/bp5;

    iget-object v0, p1, Lyads/eq2;->u:Lyads/cq2;

    invoke-virtual {p1, v0}, Lyads/eq2;->a(Lyads/tw4;)Lyads/uw4;

    move-result-object v0

    iget-boolean v1, v0, Lyads/uw4;->g:Z

    if-nez v1, :cond_5

    const/16 v3, 0x2710

    iput v3, v0, Lyads/uw4;->d:I

    iget-object v3, p1, Lyads/eq2;->N:Lyads/bp5;

    if-nez v1, :cond_4

    iput-object v3, v0, Lyads/uw4;->e:Ljava/lang/Object;

    invoke-virtual {v0}, Lyads/uw4;->a()Lyads/uw4;

    iget-object v0, p1, Lyads/eq2;->N:Lyads/bp5;

    iget-object v1, p1, Lyads/eq2;->t:Lyads/bq2;

    iget-object v0, v0, Lyads/bp5;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lyads/eq2;->N:Lyads/bp5;

    iget-object v0, v0, Lyads/bp5;->h:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Lyads/eq2;->a(Landroid/view/Surface;)V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    iput-boolean v2, p1, Lyads/eq2;->O:Z

    iput-object p0, p1, Lyads/eq2;->M:Landroid/view/SurfaceHolder;

    iget-object v0, p1, Lyads/eq2;->t:Lyads/bq2;

    invoke-interface {p0, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object p0, p1, Lyads/eq2;->M:Landroid/view/SurfaceHolder;

    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/view/Surface;->isValid()Z

    move-result p0

    if-eqz p0, :cond_3

    iget-object p0, p1, Lyads/eq2;->M:Landroid/view/SurfaceHolder;

    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lyads/eq2;->a(II)V

    return-void

    :cond_3
    invoke-virtual {p1, v2, v2}, Lyads/eq2;->a(II)V

    return-void

    :cond_4
    invoke-static {}, Lud;->g()V

    return-void

    :cond_5
    invoke-static {}, Lud;->g()V

    return-void

    :cond_6
    if-nez p0, :cond_7

    move-object p0, v1

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    :goto_1
    invoke-virtual {p1}, Lyads/eq2;->q()V

    if-nez p0, :cond_8

    invoke-virtual {p1}, Lyads/eq2;->q()V

    invoke-virtual {p1}, Lyads/eq2;->m()V

    invoke-virtual {p1, v1}, Lyads/eq2;->a(Landroid/view/Surface;)V

    invoke-virtual {p1, v2, v2}, Lyads/eq2;->a(II)V

    return-void

    :cond_8
    invoke-virtual {p1}, Lyads/eq2;->m()V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lyads/eq2;->O:Z

    iput-object p0, p1, Lyads/eq2;->M:Landroid/view/SurfaceHolder;

    iget-object v0, p1, Lyads/eq2;->t:Lyads/bq2;

    invoke-interface {p0, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p1, v0}, Lyads/eq2;->a(Landroid/view/Surface;)V

    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lyads/eq2;->a(II)V

    return-void

    :cond_9
    invoke-virtual {p1, v1}, Lyads/eq2;->a(Landroid/view/Surface;)V

    invoke-virtual {p1, v2, v2}, Lyads/eq2;->a(II)V

    :cond_a
    :goto_2
    return-void
.end method
