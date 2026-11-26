.class public final Lup3;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Lzp3$b;
.implements Landroid/graphics/drawable/Animatable;
.implements Landroidx/vectordrawable/graphics/drawable/Animatable2Compat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lup3$a;
    }
.end annotation


# instance fields
.field public final b:Lup3$a;

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:I

.field public h:I

.field public i:Z

.field public j:Landroid/graphics/Paint;

.field public k:Landroid/graphics/Rect;

.field public l:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lup3$a;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lup3;->f:Z

    const/4 v0, -0x1

    iput v0, p0, Lup3;->h:I

    iput-object p1, p0, Lup3;->b:Lup3$a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lup3;->stop()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    iget-object v0, p0, Lup3;->b:Lup3$a;

    iget-object v0, v0, Lup3$a;->a:Lzp3;

    iget-object v1, v0, Lzp3;->i:Lzp3$a;

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    iget v1, v1, Lzp3$a;->c:I

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iget-object v0, v0, Lzp3;->a:Lu68;

    iget-object v0, v0, Lu68;->l:Lbq3;

    iget v0, v0, Lbq3;->c:I

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_3

    iget v0, p0, Lup3;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lup3;->g:I

    :cond_3
    iget v0, p0, Lup3;->h:I

    if-eq v0, v2, :cond_4

    iget v1, p0, Lup3;->g:I

    if-lt v1, v0, :cond_4

    invoke-virtual {p0}, Lup3;->stop()V

    iget-object v0, p0, Lup3;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_4

    iget-object v2, p0, Lup3;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    invoke-virtual {v2, p0}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final b()V
    .locals 4

    iget-boolean v0, p0, Lup3;->e:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request."

    invoke-static {v0, v2}, Lr96;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lup3;->b:Lup3$a;

    iget-object v0, v0, Lup3$a;->a:Lzp3;

    iget-object v2, v0, Lzp3;->a:Lu68;

    iget-object v2, v2, Lu68;->l:Lbq3;

    iget v2, v2, Lbq3;->c:I

    if-ne v2, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :cond_0
    iget-boolean v2, p0, Lup3;->c:Z

    if-nez v2, :cond_5

    iput-boolean v1, p0, Lup3;->c:Z

    iget-object v2, v0, Lzp3;->c:Ljava/util/ArrayList;

    iget-boolean v3, v0, Lzp3;->j:Z

    if-nez v3, :cond_4

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_2

    iget-boolean v2, v0, Lzp3;->f:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v1, v0, Lzp3;->f:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lzp3;->j:Z

    invoke-virtual {v0}, Lzp3;->a()V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :cond_3
    const-string p0, "Cannot subscribe twice in a row"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_4
    const-string p0, "Cannot subscribe to a cleared frame loader"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public final clearAnimationCallbacks()V
    .locals 0

    iget-object p0, p0, Lup3;->l:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-boolean v0, p0, Lup3;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lup3;->i:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lup3;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Lup3;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lup3;->k:Landroid/graphics/Rect;

    if-nez v3, :cond_1

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lup3;->k:Landroid/graphics/Rect;

    :cond_1
    const/16 v4, 0x77

    invoke-static {v4, v0, v1, v2, v3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lup3;->i:Z

    :cond_2
    iget-object v0, p0, Lup3;->b:Lup3$a;

    iget-object v0, v0, Lup3$a;->a:Lzp3;

    iget-object v1, v0, Lzp3;->i:Lzp3$a;

    if-eqz v1, :cond_3

    iget-object v0, v1, Lzp3$a;->e:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_3
    iget-object v0, v0, Lzp3;->l:Landroid/graphics/Bitmap;

    :goto_0
    iget-object v1, p0, Lup3;->k:Landroid/graphics/Rect;

    if-nez v1, :cond_4

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lup3;->k:Landroid/graphics/Rect;

    :cond_4
    iget-object v2, p0, Lup3;->j:Landroid/graphics/Paint;

    if-nez v2, :cond_5

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lup3;->j:Landroid/graphics/Paint;

    :cond_5
    const/4 p0, 0x0

    invoke-virtual {p1, v0, p0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    iget-object p0, p0, Lup3;->b:Lup3$a;

    return-object p0
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    iget-object p0, p0, Lup3;->b:Lup3$a;

    iget-object p0, p0, Lup3$a;->a:Lzp3;

    iget p0, p0, Lzp3;->q:I

    return p0
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    iget-object p0, p0, Lup3;->b:Lup3$a;

    iget-object p0, p0, Lup3$a;->a:Lzp3;

    iget p0, p0, Lzp3;->p:I

    return p0
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, -0x2

    return p0
.end method

.method public final isRunning()Z
    .locals 0

    iget-boolean p0, p0, Lup3;->c:Z

    return p0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lup3;->i:Z

    return-void
.end method

.method public final registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lup3;->l:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lup3;->l:Ljava/util/ArrayList;

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setAlpha(I)V
    .locals 2

    iget-object v0, p0, Lup3;->j:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lup3;->j:Landroid/graphics/Paint;

    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    iget-object v0, p0, Lup3;->j:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lup3;->j:Landroid/graphics/Paint;

    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public final setVisible(ZZ)Z
    .locals 3

    iget-boolean v0, p0, Lup3;->e:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View\'s visibility."

    invoke-static {v0, v1}, Lr96;->a(ZLjava/lang/String;)V

    iput-boolean p1, p0, Lup3;->f:Z

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lup3;->c:Z

    iget-object v1, p0, Lup3;->b:Lup3$a;

    iget-object v1, v1, Lup3$a;->a:Lzp3;

    iget-object v2, v1, Lzp3;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v0, v1, Lzp3;->f:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lup3;->d:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lup3;->b()V

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p0

    return p0
.end method

.method public final start()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lup3;->d:Z

    const/4 v0, 0x0

    iput v0, p0, Lup3;->g:I

    iget-boolean v0, p0, Lup3;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lup3;->b()V

    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lup3;->d:Z

    iput-boolean v0, p0, Lup3;->c:Z

    iget-object v1, p0, Lup3;->b:Lup3$a;

    iget-object v1, v1, Lup3$a;->a:Lzp3;

    iget-object v2, v1, Lzp3;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    iput-boolean v0, v1, Lzp3;->f:Z

    :cond_0
    return-void
.end method

.method public final unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z
    .locals 0

    iget-object p0, p0, Lup3;->l:Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
