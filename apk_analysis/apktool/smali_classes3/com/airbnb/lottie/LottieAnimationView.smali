.class public Lcom/airbnb/lottie/LottieAnimationView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/LottieAnimationView$c;,
        Lcom/airbnb/lottie/LottieAnimationView$b;,
        Lcom/airbnb/lottie/LottieAnimationView$SavedState;,
        Lcom/airbnb/lottie/LottieAnimationView$a;
    }
.end annotation


# static fields
.field public static final B:Llw4;


# instance fields
.field public A:Lxx4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxx4<",
            "Lnw4;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Lcom/airbnb/lottie/LottieAnimationView$c;

.field public final p:Lcom/airbnb/lottie/LottieAnimationView$b;

.field public q:Ltx4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltx4<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public r:I

.field public final s:Lox4;

.field public t:Ljava/lang/String;

.field public u:I

.field public v:Z

.field public w:Z

.field public x:Z

.field public final y:Ljava/util/HashSet;

.field public final z:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Llw4;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/LottieAnimationView;->B:Llw4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$c;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$c;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Lcom/airbnb/lottie/LottieAnimationView$c;

    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$b;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$b;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->p:Lcom/airbnb/lottie/LottieAnimationView$b;

    const/4 p1, 0x0

    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->r:I

    new-instance v0, Lox4;

    invoke-direct {v0}, Lox4;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->v:Z

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->w:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->x:Z

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->y:Ljava/util/HashSet;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->z:Ljava/util/HashSet;

    const/4 p1, 0x0

    const v0, 0x7f0403a0

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->q(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 56
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$c;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$c;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Lcom/airbnb/lottie/LottieAnimationView$c;

    .line 58
    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$b;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$b;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->p:Lcom/airbnb/lottie/LottieAnimationView$b;

    const/4 p1, 0x0

    .line 59
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->r:I

    .line 60
    new-instance v0, Lox4;

    invoke-direct {v0}, Lox4;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    .line 61
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->v:Z

    .line 62
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->w:Z

    const/4 p1, 0x1

    .line 63
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->x:Z

    .line 64
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->y:Ljava/util/HashSet;

    .line 65
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->z:Ljava/util/HashSet;

    const p1, 0x7f0403a0

    .line 66
    invoke-virtual {p0, p2, p1}, Lcom/airbnb/lottie/LottieAnimationView;->q(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$c;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$c;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Lcom/airbnb/lottie/LottieAnimationView$c;

    .line 69
    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$b;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$b;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->p:Lcom/airbnb/lottie/LottieAnimationView$b;

    const/4 p1, 0x0

    .line 70
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->r:I

    .line 71
    new-instance v0, Lox4;

    invoke-direct {v0}, Lox4;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    .line 72
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->v:Z

    .line 73
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->w:Z

    const/4 p1, 0x1

    .line 74
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->x:Z

    .line 75
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->y:Ljava/util/HashSet;

    .line 76
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->z:Ljava/util/HashSet;

    .line 77
    invoke-virtual {p0, p2, p3}, Lcom/airbnb/lottie/LottieAnimationView;->q(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private setCompositionTask(Lxx4;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxx4<",
            "Lnw4;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p1, Lxx4;->d:Lwx4;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-ne v1, v2, :cond_0

    iget-object v1, v1, Lox4;->b:Lnw4;

    iget-object v0, v0, Lwx4;->a:Lnw4;

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->y:Ljava/util/HashSet;

    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$a;->SET_ANIMATION:Lcom/airbnb/lottie/LottieAnimationView$a;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    invoke-virtual {v0}, Lox4;->d()V

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->p()V

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Lcom/airbnb/lottie/LottieAnimationView$c;

    invoke-virtual {p1, v0}, Lxx4;->b(Ltx4;)V

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->p:Lcom/airbnb/lottie/LottieAnimationView$b;

    invoke-virtual {p1, v0}, Lxx4;->a(Ltx4;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->A:Lxx4;

    return-void
.end method


# virtual methods
.method public getAsyncUpdates()Ldt;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    iget-object p0, p0, Lox4;->N:Ldt;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lah4;->a:Ldt;

    return-object p0
.end method

.method public getAsyncUpdatesEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    iget-object p0, p0, Lox4;->N:Ldt;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lah4;->a:Ldt;

    :goto_0
    sget-object v0, Ldt;->ENABLED:Ldt;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getClipTextToBoundingBox()Z
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    iget-boolean p0, p0, Lox4;->w:Z

    return p0
.end method

.method public getClipToCompositionBounds()Z
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    iget-boolean p0, p0, Lox4;->p:Z

    return p0
.end method

.method public getComposition()Lnw4;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    if-ne v0, p0, :cond_0

    iget-object p0, p0, Lox4;->b:Lnw4;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDuration()J
    .locals 2

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getComposition()Lnw4;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lnw4;->b()F

    move-result p0

    float-to-long v0, p0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFrame()I
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    iget-object p0, p0, Lox4;->c:Lay4;

    iget p0, p0, Lay4;->i:F

    float-to-int p0, p0

    return p0
.end method

.method public getImageAssetsFolder()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    iget-object p0, p0, Lox4;->j:Ljava/lang/String;

    return-object p0
.end method

.method public getMaintainOriginalImageBounds()Z
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    iget-boolean p0, p0, Lox4;->o:Z

    return p0
.end method

.method public getMaxFrame()F
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    iget-object p0, p0, Lox4;->c:Lay4;

    invoke-virtual {p0}, Lay4;->i()F

    move-result p0

    return p0
.end method

.method public getMinFrame()F
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    iget-object p0, p0, Lox4;->c:Lay4;

    invoke-virtual {p0}, Lay4;->j()F

    move-result p0

    return p0
.end method

.method public getPerformanceTracker()Ls46;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    iget-object p0, p0, Lox4;->b:Lnw4;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lnw4;->a:Ls46;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getProgress()F
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    iget-object p0, p0, Lox4;->c:Lay4;

    invoke-virtual {p0}, Lay4;->h()F

    move-result p0

    return p0
.end method

.method public getRenderMode()Le27;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    iget-boolean p0, p0, Lox4;->y:Z

    if-eqz p0, :cond_0

    sget-object p0, Le27;->SOFTWARE:Le27;

    return-object p0

    :cond_0
    sget-object p0, Le27;->HARDWARE:Le27;

    return-object p0
.end method

.method public getRepeatCount()I
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    iget-object p0, p0, Lox4;->c:Lay4;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result p0

    return p0
.end method

.method public getRepeatMode()I
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    iget-object p0, p0, Lox4;->c:Lay4;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    move-result p0

    return p0
.end method

.method public getSpeed()F
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    iget-object p0, p0, Lox4;->c:Lay4;

    iget p0, p0, Lay4;->e:F

    return p0
.end method

.method public final invalidate()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lox4;

    if-eqz v1, :cond_1

    check-cast v0, Lox4;

    iget-boolean v0, v0, Lox4;->y:Z

    if-eqz v0, :cond_0

    sget-object v0, Le27;->SOFTWARE:Le27;

    goto :goto_0

    :cond_0
    sget-object v0, Le27;->HARDWARE:Le27;

    :goto_0
    sget-object v1, Le27;->SOFTWARE:Le27;

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    invoke-virtual {p0}, Lox4;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    if-ne v0, v1, :cond_0

    invoke-super {p0, v1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->w:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    invoke-virtual {p0}, Lox4;->k()V

    :cond_0
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    instance-of v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->t:Ljava/lang/String;

    sget-object v0, Lcom/airbnb/lottie/LottieAnimationView$a;->SET_ANIMATION:Lcom/airbnb/lottie/LottieAnimationView$a;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->y:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->t:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->t:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :cond_1
    iget v2, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->c:I

    iput v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->u:I

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->u:I

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    :cond_2
    sget-object v0, Lcom/airbnb/lottie/LottieAnimationView$a;->SET_PROGRESS:Lcom/airbnb/lottie/LottieAnimationView$a;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-object v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    if-nez v0, :cond_3

    iget v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->d:F

    invoke-virtual {v2, v0}, Lox4;->w(F)V

    :cond_3
    sget-object v0, Lcom/airbnb/lottie/LottieAnimationView$a;->PLAY_OPTION:Lcom/airbnb/lottie/LottieAnimationView$a;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-boolean v3, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->e:Z

    if-eqz v3, :cond_4

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lox4;->k()V

    :cond_4
    sget-object v0, Lcom/airbnb/lottie/LottieAnimationView$a;->SET_IMAGE_ASSETS:Lcom/airbnb/lottie/LottieAnimationView$a;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    :cond_5
    sget-object v0, Lcom/airbnb/lottie/LottieAnimationView$a;->SET_REPEAT_MODE:Lcom/airbnb/lottie/LottieAnimationView$a;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->g:I

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V

    :cond_6
    sget-object v0, Lcom/airbnb/lottie/LottieAnimationView$a;->SET_REPEAT_COUNT:Lcom/airbnb/lottie/LottieAnimationView$a;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget p1, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->h:I

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    :cond_7
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    invoke-direct {v1, v0}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->t:Ljava/lang/String;

    iput-object v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->b:Ljava/lang/String;

    iget v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->u:I

    iput v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->c:I

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    iget-object v0, p0, Lox4;->c:Lay4;

    iget-object v2, p0, Lox4;->c:Lay4;

    invoke-virtual {v0}, Lay4;->h()F

    move-result v0

    iput v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->d:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, v2, Lay4;->n:Z

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lox4;->g:Lox4$b;

    sget-object v3, Lox4$b;->PLAY:Lox4$b;

    if-eq v0, v3, :cond_2

    sget-object v3, Lox4$b;->RESUME:Lox4$b;

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->e:Z

    iget-object p0, p0, Lox4;->j:Ljava/lang/String;

    iput-object p0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->f:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    move-result p0

    iput p0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->g:I

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result p0

    iput p0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->h:I

    return-object v1
.end method

.method public final p()V
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->A:Lxx4;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Lcom/airbnb/lottie/LottieAnimationView$c;

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lxx4;->a:Ljava/util/LinkedHashSet;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->A:Lxx4;

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->p:Lcom/airbnb/lottie/LottieAnimationView$b;

    monitor-enter v1

    :try_start_1
    iget-object v0, v1, Lxx4;->b:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_0
    return-void
.end method

.method public final q(Landroid/util/AttributeSet;I)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lbx6;->a:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x4

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/airbnb/lottie/LottieAnimationView;->x:Z

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    const/16 v3, 0xb

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    const/16 v5, 0x15

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v1, :cond_1

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "lottie_rawRes and lottie_fileName cannot be used at the same time. Please use only one at once."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimationFromUrl(Ljava/lang/String;)V

    :cond_4
    :goto_1
    const/16 p2, 0xa

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setFallbackResource(I)V

    const/4 p2, 0x3

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_5

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->w:Z

    :cond_5
    const/16 p2, 0xe

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    const/4 v1, -0x1

    iget-object v3, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    if-eqz p2, :cond_6

    iget-object p2, v3, Lox4;->c:Lay4;

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    :cond_6
    const/16 p2, 0x13

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V

    :cond_7
    const/16 p2, 0x12

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    :cond_8
    const/16 p2, 0x14

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_9

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    :cond_9
    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setClipToCompositionBounds(Z)V

    :cond_a
    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setClipTextToBoundingBox(Z)V

    :cond_b
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setDefaultFontFileExtension(Ljava/lang/String;)V

    :cond_c
    const/16 p2, 0xd

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    const/16 p2, 0xf

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/airbnb/lottie/LottieAnimationView;->y:Ljava/util/HashSet;

    sget-object v5, Lcom/airbnb/lottie/LottieAnimationView$a;->SET_PROGRESS:Lcom/airbnb/lottie/LottieAnimationView$a;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-virtual {v3, p2}, Lox4;->w(F)V

    const/16 p2, 0x9

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    sget-object v4, Lpx4;->MergePathsApi19:Lpx4;

    iget-object v5, v3, Lox4;->n:Lqx4;

    iget-object v5, v5, Lqx4;->a:Ljava/util/HashSet;

    if-eqz p2, :cond_f

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v6, v4, Lpx4;->minRequiredSdkVersion:I

    if-ge p2, v6, :cond_e

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    iget v4, v4, Lpx4;->minRequiredSdkVersion:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {p2, v4}, [Ljava/lang/Object;

    move-result-object p2

    const-string v4, "%s is not supported pre SDK %d"

    invoke-static {v4, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lgv4;->b(Ljava/lang/String;)V

    move p2, v2

    goto :goto_2

    :cond_e
    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p2

    goto :goto_2

    :cond_f
    invoke-virtual {v5, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p2

    :goto_2
    iget-object v4, v3, Lox4;->b:Lnw4;

    if-eqz v4, :cond_10

    if-eqz p2, :cond_10

    invoke-virtual {v3}, Lox4;->c()V

    :cond_10
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setApplyingOpacityToLayersEnabled(Z)V

    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setApplyingShadowToLayersEnabled(Z)V

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    new-instance v0, Lbz7;

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance p2, Lnf4;

    const-string v1, "**"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Lnf4;-><init>([Ljava/lang/String;)V

    new-instance v1, Lby4;

    invoke-direct {v1, v0}, Lby4;-><init>(Lbz7;)V

    sget-object v0, Lvx4;->I:Landroid/graphics/ColorFilter;

    invoke-virtual {v3, p2, v0, v1}, Lox4;->a(Lnf4;Ljava/lang/Object;Lby4;)V

    :cond_11
    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Le27;->AUTOMATIC:Le27;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-static {}, Le27;->values()[Le27;

    move-result-object v1

    array-length v1, v1

    if-lt p2, v1, :cond_12

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    :cond_12
    invoke-static {}, Le27;->values()[Le27;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setRenderMode(Le27;)V

    :cond_13
    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Ldt;->AUTOMATIC:Ldt;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-static {}, Le27;->values()[Le27;

    move-result-object v1

    array-length v1, v1

    if-lt p2, v1, :cond_14

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    :cond_14
    invoke-static {}, Ldt;->values()[Ldt;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAsyncUpdates(Ldt;)V

    :cond_15
    const/16 p2, 0xc

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setIgnoreDisabledSystemAnimations(Z)V

    const/16 p2, 0x16

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setUseCompositionFrameRate(Z)V

    :cond_16
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public setAnimation(I)V
    .locals 5

    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->u:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->t:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lxx4;

    new-instance v1, Lmw4;

    invoke-direct {v1, p0, p1}, Lmw4;-><init>(Lcom/airbnb/lottie/LottieAnimationView;I)V

    const/4 p1, 0x1

    invoke-direct {v0, v1, p1}, Lxx4;-><init>(Ljava/util/concurrent/Callable;Z)V

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->x:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1}, Lww4;->k(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v4, Lvw4;

    invoke-direct {v4, v3, v1, p1, v2}, Lvw4;-><init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;ILjava/lang/String;)V

    invoke-static {v2, v4, v0}, Lww4;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;Ljava/lang/Runnable;)Lxx4;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lww4;->a:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lvw4;

    invoke-direct {v3, v2, v1, p1, v0}, Lvw4;-><init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;ILjava/lang/String;)V

    invoke-static {v0, v3, v0}, Lww4;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;Ljava/lang/Runnable;)Lxx4;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Lxx4;)V

    return-void
.end method

.method public setAnimation(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 3

    .line 82
    new-instance v0, Lqw4;

    invoke-direct {v0, p1, p2}, Lqw4;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v1, Ljj2;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Ljj2;-><init>(Ljava/lang/Object;I)V

    invoke-static {p2, v0, v1}, Lww4;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;Ljava/lang/Runnable;)Lxx4;

    move-result-object p1

    .line 83
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Lxx4;)V

    return-void
.end method

.method public setAnimation(Ljava/lang/String;)V
    .locals 4

    .line 84
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->t:Ljava/lang/String;

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->u:I

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Lxx4;

    new-instance v1, Lkw4;

    invoke-direct {v1, p0, p1}, Lkw4;-><init>(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-direct {v0, v1, p1}, Lxx4;-><init>(Ljava/util/concurrent/Callable;Z)V

    goto :goto_0

    .line 88
    :cond_0
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->x:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lww4;->a:Ljava/util/HashMap;

    .line 90
    const-string v2, "asset_"

    .line 91
    invoke-static {v2, p1}, Lbj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 93
    new-instance v3, Lsw4;

    invoke-direct {v3, v0, p1, v2}, Lsw4;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v3, v1}, Lww4;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;Ljava/lang/Runnable;)Lxx4;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lww4;->a:Ljava/util/HashMap;

    .line 95
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 96
    new-instance v2, Lsw4;

    invoke-direct {v2, v0, p1, v1}, Lsw4;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2, v1}, Lww4;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;Ljava/lang/Runnable;)Lxx4;

    move-result-object v0

    .line 97
    :goto_0
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Lxx4;)V

    return-void
.end method

.method public setAnimation(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)V
    .locals 3

    .line 98
    new-instance v0, Lrw4;

    invoke-direct {v0, p1, p2}, Lrw4;-><init>(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)V

    new-instance v1, Lh51;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lh51;-><init>(Ljava/lang/Object;I)V

    invoke-static {p2, v0, v1}, Lww4;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;Ljava/lang/Runnable;)Lxx4;

    move-result-object p1

    .line 99
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Lxx4;)V

    return-void
.end method

.method public setAnimationFromJson(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimationFromJson(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAnimationFromJson(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public setAnimationFromUrl(Ljava/lang/String;)V
    .locals 4

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->x:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lww4;->a:Ljava/util/HashMap;

    const-string v2, "url_"

    invoke-static {v2, p1}, Lbj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lpw4;

    invoke-direct {v3, v0, p1, v2}, Lpw4;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v3, v1}, Lww4;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;Ljava/lang/Runnable;)Lxx4;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lpw4;

    invoke-direct {v2, v0, p1, v1}, Lpw4;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2, v1}, Lww4;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;Ljava/lang/Runnable;)Lxx4;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Lxx4;)V

    return-void
.end method

.method public setAnimationFromUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 45
    new-instance v1, Lpw4;

    invoke-direct {v1, v0, p1, p2}, Lpw4;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p2, v1, p1}, Lww4;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;Ljava/lang/Runnable;)Lxx4;

    move-result-object p1

    .line 46
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Lxx4;)V

    return-void
.end method

.method public setApplyingOpacityToLayersEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    iput-boolean p1, p0, Lox4;->u:Z

    return-void
.end method

.method public setApplyingShadowToLayersEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    iput-boolean p1, p0, Lox4;->v:Z

    return-void
.end method

.method public setAsyncUpdates(Ldt;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    iput-object p1, p0, Lox4;->N:Ldt;

    return-void
.end method

.method public setCacheComposition(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->x:Z

    return-void
.end method

.method public setClipTextToBoundingBox(Z)V
    .locals 1

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    iget-boolean v0, p0, Lox4;->w:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lox4;->w:Z

    invoke-virtual {p0}, Lox4;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setClipToCompositionBounds(Z)V
    .locals 1

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    iget-boolean v0, p0, Lox4;->p:Z

    if-eq p1, v0, :cond_1

    iput-boolean p1, p0, Lox4;->p:Z

    iget-object v0, p0, Lox4;->q:Lku1;

    if-eqz v0, :cond_0

    iput-boolean p1, v0, Lku1;->L:Z

    :cond_0
    invoke-virtual {p0}, Lox4;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setComposition(Lnw4;)V
    .locals 9

    sget-object v0, Lah4;->a:Ldt;

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->v:Z

    iget-object v2, v0, Lox4;->h:Ljava/util/ArrayList;

    iget-object v3, v0, Lox4;->c:Lay4;

    iget-object v4, v0, Lox4;->b:Lnw4;

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-ne v4, p1, :cond_0

    move v1, v6

    goto/16 :goto_3

    :cond_0
    iput-boolean v1, v0, Lox4;->M:Z

    invoke-virtual {v0}, Lox4;->d()V

    iput-object p1, v0, Lox4;->b:Lnw4;

    invoke-virtual {v0}, Lox4;->c()V

    iget-object v4, v3, Lay4;->m:Lnw4;

    if-nez v4, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    move v4, v6

    :goto_0
    iput-object p1, v3, Lay4;->m:Lnw4;

    if-eqz v4, :cond_2

    iget v4, v3, Lay4;->k:F

    iget v7, p1, Lnw4;->l:F

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v7, v3, Lay4;->l:F

    iget v8, p1, Lnw4;->m:F

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-virtual {v3, v4, v7}, Lay4;->q(FF)V

    goto :goto_1

    :cond_2
    iget v4, p1, Lnw4;->l:F

    float-to-int v4, v4

    int-to-float v4, v4

    iget v7, p1, Lnw4;->m:F

    float-to-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v3, v4, v7}, Lay4;->q(FF)V

    :goto_1
    iget v4, v3, Lay4;->i:F

    const/4 v7, 0x0

    iput v7, v3, Lay4;->i:F

    iput v7, v3, Lay4;->h:F

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lay4;->p(F)V

    invoke-virtual {v3}, Lod0;->e()V

    invoke-virtual {v3}, Lay4;->getAnimatedFraction()F

    move-result v4

    invoke-virtual {v0, v4}, Lox4;->w(F)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lox4$a;

    if-eqz v7, :cond_3

    invoke-interface {v7}, Lox4$a;->run()V

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-boolean v2, v0, Lox4;->s:Z

    iget-object p1, p1, Lnw4;->a:Ls46;

    iput-boolean v2, p1, Ls46;->a:Z

    invoke-virtual {v0}, Lox4;->e()V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    instance-of v2, p1, Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    :goto_3
    iget-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->w:Z

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Lox4;->k()V

    :cond_6
    iput-boolean v6, p0, Lcom/airbnb/lottie/LottieAnimationView;->v:Z

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-ne p1, v0, :cond_7

    if-nez v1, :cond_7

    goto :goto_6

    :cond_7
    if-nez v1, :cond_9

    if-nez v3, :cond_8

    goto :goto_4

    :cond_8
    iget-boolean v6, v3, Lay4;->n:Z

    :goto_4
    invoke-virtual {p0, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v6, :cond_9

    invoke-virtual {v0}, Lox4;->m()V

    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    invoke-virtual {p0, p0, p1}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->z:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lux4;

    invoke-interface {p1}, Lux4;->a()V

    goto :goto_5

    :cond_a
    :goto_6
    return-void
.end method

.method public setDefaultFontFileExtension(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    iput-object p1, p0, Lox4;->m:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lox4;->k:Lfi3;

    if-nez v0, :cond_1

    new-instance v0, Lfi3;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    invoke-direct {v0, v1}, Lfi3;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v0, p0, Lox4;->k:Lfi3;

    iget-object p0, p0, Lox4;->m:Ljava/lang/String;

    if-eqz p0, :cond_1

    iput-object p0, v0, Lfi3;->e:Ljava/lang/String;

    :cond_1
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_2

    iput-object p1, p0, Lfi3;->e:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public setFailureListener(Ltx4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltx4<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->q:Ltx4;

    return-void
.end method

.method public setFallbackResource(I)V
    .locals 0

    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->r:I

    return-void
.end method

.method public setFontAssetDelegate(Lei3;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    iget-object p0, p0, Lox4;->k:Lfi3;

    return-void
.end method

.method public setFontMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    iget-object v0, p0, Lox4;->l:Ljava/util/Map;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lox4;->l:Ljava/util/Map;

    invoke-virtual {p0}, Lox4;->invalidateSelf()V

    return-void
.end method

.method public setFrame(I)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    invoke-virtual {p0, p1}, Lox4;->n(I)V

    return-void
.end method

.method public setIgnoreDisabledSystemAnimations(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    iput-boolean p1, p0, Lox4;->e:Z

    return-void
.end method

.method public setImageAssetDelegate(Lz04;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    iget-object p0, p0, Lox4;->i:La14;

    return-void
.end method

.method public setImageAssetsFolder(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    iput-object p1, p0, Lox4;->j:Ljava/lang/String;

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->u:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->t:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->p()V

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->u:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->t:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->p()V

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->u:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->t:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->p()V

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method

.method public setMaintainOriginalImageBounds(Z)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    iput-boolean p1, p0, Lox4;->o:Z

    return-void
.end method

.method public setMaxFrame(I)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    invoke-virtual {p0, p1}, Lox4;->o(I)V

    return-void
.end method

.method public setMaxFrame(Ljava/lang/String;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    invoke-virtual {p0, p1}, Lox4;->p(Ljava/lang/String;)V

    return-void
.end method

.method public setMaxProgress(F)V
    .locals 2

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    iget-object v0, p0, Lox4;->b:Lnw4;

    if-nez v0, :cond_0

    iget-object v0, p0, Lox4;->h:Ljava/util/ArrayList;

    new-instance v1, Lfx4;

    invoke-direct {v1, p0, p1}, Lfx4;-><init>(Lox4;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lox4;->c:Lay4;

    iget v1, v0, Lnw4;->l:F

    iget v0, v0, Lnw4;->m:F

    invoke-static {v1, v0, p1}, Lhb5;->f(FFF)F

    move-result p1

    iget v0, p0, Lay4;->k:F

    invoke-virtual {p0, v0, p1}, Lay4;->q(FF)V

    return-void
.end method

.method public setMinAndMaxFrame(II)V
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    invoke-virtual {p0, p1, p2}, Lox4;->q(II)V

    return-void
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    invoke-virtual {p0, p1}, Lox4;->r(Ljava/lang/String;)V

    return-void
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    invoke-virtual {p0, p1, p2, p3}, Lox4;->s(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setMinAndMaxProgress(FF)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    invoke-virtual {p0, p1, p2}, Lox4;->t(FF)V

    return-void
.end method

.method public setMinFrame(I)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    invoke-virtual {p0, p1}, Lox4;->u(I)V

    return-void
.end method

.method public setMinFrame(Ljava/lang/String;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    invoke-virtual {p0, p1}, Lox4;->v(Ljava/lang/String;)V

    return-void
.end method

.method public setMinProgress(F)V
    .locals 2

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    iget-object v0, p0, Lox4;->b:Lnw4;

    if-nez v0, :cond_0

    iget-object v0, p0, Lox4;->h:Ljava/util/ArrayList;

    new-instance v1, Lmx4;

    invoke-direct {v1, p0, p1}, Lmx4;-><init>(Lox4;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget v1, v0, Lnw4;->l:F

    iget v0, v0, Lnw4;->m:F

    invoke-static {v1, v0, p1}, Lhb5;->f(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lox4;->u(I)V

    return-void
.end method

.method public setOutlineMasksAndMattes(Z)V
    .locals 1

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    iget-boolean v0, p0, Lox4;->t:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lox4;->t:Z

    iget-object p0, p0, Lox4;->q:Lku1;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lku1;->r(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    iput-boolean p1, p0, Lox4;->s:Z

    iget-object p0, p0, Lox4;->b:Lnw4;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lnw4;->a:Ls46;

    iput-boolean p1, p0, Ls46;->a:Z

    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->y:Ljava/util/HashSet;

    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$a;->SET_PROGRESS:Lcom/airbnb/lottie/LottieAnimationView$a;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    invoke-virtual {p0, p1}, Lox4;->w(F)V

    return-void
.end method

.method public setRenderMode(Le27;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    iput-object p1, p0, Lox4;->x:Le27;

    invoke-virtual {p0}, Lox4;->e()V

    return-void
.end method

.method public setRepeatCount(I)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->y:Ljava/util/HashSet;

    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$a;->SET_REPEAT_COUNT:Lcom/airbnb/lottie/LottieAnimationView$a;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    iget-object p0, p0, Lox4;->c:Lay4;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->y:Ljava/util/HashSet;

    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$a;->SET_REPEAT_MODE:Lcom/airbnb/lottie/LottieAnimationView$a;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    iget-object p0, p0, Lox4;->c:Lay4;

    invoke-virtual {p0, p1}, Lay4;->setRepeatMode(I)V

    return-void
.end method

.method public setSafeMode(Z)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    iput-boolean p1, p0, Lox4;->f:Z

    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    iget-object p0, p0, Lox4;->c:Lay4;

    iput p1, p0, Lay4;->e:F

    return-void
.end method

.method public setTextDelegate(Lgq8;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public setUseCompositionFrameRate(Z)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    iget-object p0, p0, Lox4;->c:Lay4;

    iput-boolean p1, p0, Lay4;->o:Z

    return-void
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->v:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    if-ne p1, v2, :cond_1

    iget-object v3, v2, Lox4;->c:Lay4;

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    iget-boolean v3, v3, Lay4;->n:Z

    :goto_0
    if-eqz v3, :cond_1

    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->w:Z

    invoke-virtual {v2}, Lox4;->j()V

    goto :goto_2

    :cond_1
    if-nez v0, :cond_3

    instance-of v0, p1, Lox4;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lox4;

    iget-object v2, v0, Lox4;->c:Lay4;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean v1, v2, Lay4;->n:Z

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lox4;->j()V

    :cond_3
    :goto_2
    invoke-super {p0, p1}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
