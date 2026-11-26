.class public Lyads/kn5;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field public static final synthetic H:I


# instance fields
.field public final A:Lyads/fn5;

.field public B:Lyads/jn5;

.field public C:Z

.field public D:F

.field public E:F

.field public F:F

.field public G:Ljava/lang/Integer;

.field public final a:Lyads/an5;

.field public final b:Lyads/gp4;

.field public c:Landroid/animation/ValueAnimator;

.field public d:F

.field public e:Landroid/animation/ValueAnimator;

.field public f:Ljava/lang/Float;

.field public final g:Lyads/en5;

.field public final h:Lyads/en5;

.field public final i:Ljava/util/ArrayList;

.field public j:J

.field public final k:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field public l:Z

.field public m:F

.field public n:F

.field public o:Landroid/graphics/drawable/Drawable;

.field public p:Landroid/graphics/drawable/Drawable;

.field public q:Landroid/graphics/drawable/Drawable;

.field public r:Landroid/graphics/drawable/Drawable;

.field public s:F

.field public t:Landroid/graphics/drawable/Drawable;

.field public u:Lyads/cw5;

.field public v:Ljava/lang/Float;

.field public final w:Lyads/rm5;

.field public x:Landroid/graphics/drawable/Drawable;

.field public y:Lyads/cw5;

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 110
    invoke-direct {p0, p1, v2, v0, v1}, Lyads/kn5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 108
    invoke-direct {p0, p1, p2, v0, v1}, Lyads/kn5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lyads/an5;

    invoke-direct {p1}, Lyads/an5;-><init>()V

    iput-object p1, p0, Lyads/kn5;->a:Lyads/an5;

    new-instance p1, Lyads/gp4;

    invoke-direct {p1}, Lyads/gp4;-><init>()V

    iput-object p1, p0, Lyads/kn5;->b:Lyads/gp4;

    new-instance p1, Lyads/en5;

    new-instance p2, Lsl2;

    const/4 p3, 0x3

    invoke-direct {p2, p0, p3}, Lsl2;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p1, p2}, Lyads/en5;-><init>(Lnl3;)V

    iput-object p1, p0, Lyads/kn5;->g:Lyads/en5;

    new-instance p1, Lyads/en5;

    new-instance p2, Ltl2;

    const/4 p3, 0x2

    invoke-direct {p2, p0, p3}, Ltl2;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p1, p2}, Lyads/en5;-><init>(Lnl3;)V

    iput-object p1, p0, Lyads/kn5;->h:Lyads/en5;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lyads/kn5;->i:Ljava/util/ArrayList;

    const-wide/16 p1, 0x12c

    iput-wide p1, p0, Lyads/kn5;->j:J

    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lyads/kn5;->k:Landroid/view/animation/AccelerateDecelerateInterpolator;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lyads/kn5;->l:Z

    const/high16 p2, 0x42c80000    # 100.0f

    iput p2, p0, Lyads/kn5;->n:F

    iget p2, p0, Lyads/kn5;->m:F

    iput p2, p0, Lyads/kn5;->s:F

    new-instance p2, Lyads/rm5;

    invoke-direct {p2, p0}, Lyads/rm5;-><init>(Lyads/kn5;)V

    iput-object p2, p0, Lyads/kn5;->w:Lyads/rm5;

    const/4 p2, -0x1

    iput p2, p0, Lyads/kn5;->z:I

    new-instance p2, Lyads/fn5;

    invoke-direct {p2, p0}, Lyads/fn5;-><init>(Lyads/kn5;)V

    iput-object p2, p0, Lyads/kn5;->A:Lyads/fn5;

    sget-object p2, Lyads/jn5;->b:Lyads/jn5;

    iput-object p2, p0, Lyads/kn5;->B:Lyads/jn5;

    iput-boolean p1, p0, Lyads/kn5;->C:Z

    const-wide p1, 0x4046800000000000L    # 45.0

    invoke-static {p1, p2}, Ljava/lang/Math;->tan(D)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lyads/kn5;->D:F

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 p3, 0x0

    .line 109
    invoke-direct {p0, p1, p2, p3}, Lyads/kn5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final a(Lyads/kn5;Z)Lj59;
    .locals 2

    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lyads/kn5;->c:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_0

    .line 168
    iget p1, p0, Lyads/kn5;->d:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget v0, p0, Lyads/kn5;->s:F

    .line 169
    invoke-static {p1, v0}, Laa4;->c(Ljava/lang/Float;F)Z

    move-result p1

    if-nez p1, :cond_0

    .line 170
    iget-object p0, p0, Lyads/kn5;->b:Lyads/gp4;

    .line 171
    invoke-virtual {p0}, Lyads/gp4;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    move-object p1, p0

    check-cast p1, Lyads/fp4;

    invoke-virtual {p1}, Lyads/fp4;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lyads/fp4;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/gn5;

    .line 172
    invoke-interface {p1, v0}, Lyads/gn5;->a(F)V

    goto :goto_0

    .line 173
    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static a(Lyads/in5;Lyads/kn5;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;III)V
    .locals 1

    and-int/lit8 v0, p6, 0x10

    if-eqz v0, :cond_0

    .line 202
    iget p4, p0, Lyads/in5;->g:I

    :cond_0
    and-int/lit8 p6, p6, 0x20

    if-eqz p6, :cond_1

    .line 203
    iget p5, p0, Lyads/in5;->h:I

    .line 204
    :cond_1
    iget-object p0, p1, Lyads/kn5;->a:Lyads/an5;

    if-nez p3, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    .line 205
    :cond_2
    iget p1, p0, Lyads/an5;->b:I

    div-int/lit8 p1, p1, 0x2

    .line 206
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p6

    div-int/lit8 p6, p6, 0x2

    sub-int/2addr p1, p6

    .line 207
    iget p0, p0, Lyads/an5;->b:I

    div-int/lit8 p0, p0, 0x2

    .line 208
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p6

    div-int/lit8 p6, p6, 0x2

    add-int/2addr p6, p0

    .line 209
    invoke-virtual {p3, p4, p1, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 210
    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public static final a(Lyads/kn5;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 174
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Float;

    iput-object p1, p0, Lyads/kn5;->v:Ljava/lang/Float;

    .line 175
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method

.method public static final b(Lyads/kn5;Z)Lj59;
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lyads/kn5;->e:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_0

    iget-object p1, p0, Lyads/kn5;->f:Ljava/lang/Float;

    iget-object v0, p0, Lyads/kn5;->v:Ljava/lang/Float;

    invoke-static {p1, v0}, Laa4;->d(Ljava/lang/Float;Ljava/lang/Float;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lyads/kn5;->b:Lyads/gp4;

    invoke-virtual {p0}, Lyads/gp4;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    move-object p1, p0

    check-cast p1, Lyads/fp4;

    invoke-virtual {p1}, Lyads/fp4;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lyads/fp4;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/gn5;

    invoke-interface {p1, v0}, Lyads/gn5;->a(Ljava/lang/Float;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final b(Lyads/kn5;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 43
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lyads/kn5;->s:F

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method

.method public static synthetic setThumbSecondaryValue$default(Lyads/kn5;Ljava/lang/Float;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    iget-boolean p2, p0, Lyads/kn5;->l:Z

    :cond_0
    invoke-virtual {p0, p1, p2}, Lyads/kn5;->setThumbSecondaryValue(Ljava/lang/Float;Z)V

    return-void

    :cond_1
    const-string p0, "Super calls with default arguments not supported in this target, function: setThumbSecondaryValue"

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic setThumbValue$default(Lyads/kn5;FZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    iget-boolean p2, p0, Lyads/kn5;->l:Z

    :cond_0
    invoke-virtual {p0, p1, p2}, Lyads/kn5;->setThumbValue(FZ)V

    return-void

    :cond_1
    const-string p0, "Super calls with default arguments not supported in this target, function: setThumbValue"

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(IF)I
    .locals 2

    .line 176
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lyads/kn5;->h()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    .line 177
    iget v0, p0, Lyads/kn5;->n:F

    iget v1, p0, Lyads/kn5;->m:F

    sub-float/2addr v0, v1

    div-float/2addr p1, v0

    .line 178
    invoke-static {p0}, Lyads/oh6;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lyads/kn5;->n:F

    sub-float/2addr p0, p2

    goto :goto_0

    :cond_0
    iget p0, p0, Lyads/kn5;->m:F

    sub-float p0, p2, p0

    :goto_0
    mul-float/2addr p1, p0

    invoke-static {p1}, Lw65;->b(F)I

    move-result p0

    return p0
.end method

.method public final a(FZZ)V
    .locals 2

    .line 179
    iget v0, p0, Lyads/kn5;->m:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v0, p0, Lyads/kn5;->n:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 180
    iget v0, p0, Lyads/kn5;->s:F

    cmpg-float v1, v0, p1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_3

    .line 181
    iget-boolean p2, p0, Lyads/kn5;->l:Z

    if-eqz p2, :cond_3

    .line 182
    iget-object p2, p0, Lyads/kn5;->c:Landroid/animation/ValueAnimator;

    if-nez p2, :cond_1

    .line 183
    iput v0, p0, Lyads/kn5;->d:F

    :cond_1
    if-eqz p2, :cond_2

    .line 184
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 185
    :cond_2
    iget p2, p0, Lyads/kn5;->s:F

    const/4 p3, 0x2

    new-array p3, p3, [F

    const/4 v0, 0x0

    aput p2, p3, v0

    const/4 p2, 0x1

    aput p1, p3, p2

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 186
    new-instance p2, Lz0a;

    invoke-direct {p2, p0}, Lz0a;-><init>(Lyads/kn5;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 187
    iget-object p2, p0, Lyads/kn5;->g:Lyads/en5;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 188
    iget-wide p2, p0, Lyads/kn5;->j:J

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 189
    iget-object p2, p0, Lyads/kn5;->k:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 190
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 191
    iput-object p1, p0, Lyads/kn5;->c:Landroid/animation/ValueAnimator;

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    .line 192
    iget-object p2, p0, Lyads/kn5;->c:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    if-nez p3, :cond_5

    .line 193
    iget-object p2, p0, Lyads/kn5;->c:Landroid/animation/ValueAnimator;

    if-nez p2, :cond_6

    .line 194
    :cond_5
    iget p2, p0, Lyads/kn5;->s:F

    iput p2, p0, Lyads/kn5;->d:F

    .line 195
    iput p1, p0, Lyads/kn5;->s:F

    .line 196
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget p2, p0, Lyads/kn5;->s:F

    .line 197
    invoke-static {p1, p2}, Laa4;->c(Ljava/lang/Float;F)Z

    move-result p1

    if-nez p1, :cond_6

    .line 198
    iget-object p1, p0, Lyads/kn5;->b:Lyads/gp4;

    .line 199
    invoke-virtual {p1}, Lyads/gp4;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    move-object p3, p1

    check-cast p3, Lyads/fp4;

    invoke-virtual {p3}, Lyads/fp4;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p3}, Lyads/fp4;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lyads/gn5;

    .line 200
    invoke-interface {p3, p2}, Lyads/gn5;->a(F)V

    goto :goto_0

    .line 201
    :cond_6
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final a(Ljava/lang/Float;ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v0, p0, Lyads/kn5;->m:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v0, p0, Lyads/kn5;->n:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lyads/kn5;->v:Ljava/lang/Float;

    invoke-static {v0, p1}, Laa4;->d(Ljava/lang/Float;Ljava/lang/Float;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_4

    iget-boolean p2, p0, Lyads/kn5;->l:Z

    if-eqz p2, :cond_4

    iget-object p2, p0, Lyads/kn5;->v:Ljava/lang/Float;

    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    iget-object p3, p0, Lyads/kn5;->e:Landroid/animation/ValueAnimator;

    if-nez p3, :cond_2

    iput-object p2, p0, Lyads/kn5;->f:Ljava/lang/Float;

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    iget-object p2, p0, Lyads/kn5;->v:Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 p3, 0x2

    new-array p3, p3, [F

    const/4 v0, 0x0

    aput p2, p3, v0

    const/4 p2, 0x1

    aput p1, p3, p2

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p2, La1a;

    invoke-direct {p2, p0}, La1a;-><init>(Lyads/kn5;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lyads/kn5;->h:Lyads/en5;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-wide p2, p0, Lyads/kn5;->j:J

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lyads/kn5;->k:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iput-object p1, p0, Lyads/kn5;->e:Landroid/animation/ValueAnimator;

    goto :goto_2

    :cond_4
    if-eqz p3, :cond_5

    iget-object p2, p0, Lyads/kn5;->e:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_5
    if-nez p3, :cond_6

    iget-object p2, p0, Lyads/kn5;->e:Landroid/animation/ValueAnimator;

    if-nez p2, :cond_7

    :cond_6
    iget-object p2, p0, Lyads/kn5;->v:Ljava/lang/Float;

    iput-object p2, p0, Lyads/kn5;->f:Ljava/lang/Float;

    iput-object p1, p0, Lyads/kn5;->v:Ljava/lang/Float;

    invoke-static {p2, p1}, Laa4;->d(Ljava/lang/Float;Ljava/lang/Float;)Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p2, p0, Lyads/kn5;->b:Lyads/gp4;

    invoke-virtual {p2}, Lyads/gp4;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    move-object p3, p2

    check-cast p3, Lyads/fp4;

    invoke-virtual {p3}, Lyads/fp4;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p3}, Lyads/fp4;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lyads/gn5;

    invoke-interface {p3, p1}, Lyads/gn5;->a(Ljava/lang/Float;)V

    goto :goto_1

    :cond_7
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lyads/kn5;->w:Lyads/rm5;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lyads/kn5;->w:Lyads/rm5;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getSuggestedMinimumHeight()I
    .locals 5

    iget-object v0, p0, Lyads/kn5;->q:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lyads/hn5;->a(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    iget-object v1, p0, Lyads/kn5;->r:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Lyads/hn5;->a(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lyads/kn5;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/in5;

    iget-object v3, v2, Lyads/in5;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {v3}, Lyads/hn5;->a(Landroid/graphics/drawable/Drawable;)I

    move-result v3

    iget-object v2, v2, Lyads/in5;->f:Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Lyads/hn5;->a(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/in5;

    iget-object v4, v3, Lyads/in5;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {v4}, Lyads/hn5;->a(Landroid/graphics/drawable/Drawable;)I

    move-result v4

    iget-object v3, v3, Lyads/in5;->f:Landroid/graphics/drawable/Drawable;

    invoke-static {v3}, Lyads/hn5;->a(Landroid/graphics/drawable/Drawable;)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lyads/kn5;->t:Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Lyads/hn5;->a(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    iget-object p0, p0, Lyads/kn5;->x:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Lyads/hn5;->a(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public final getSuggestedMinimumWidth()I
    .locals 3

    iget v0, p0, Lyads/kn5;->n:F

    iget v1, p0, Lyads/kn5;->m:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lyads/kn5;->q:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Lyads/hn5;->b(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    iget-object v2, p0, Lyads/kn5;->r:Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Lyads/hn5;->b(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/2addr v1, v0

    iget-object v0, p0, Lyads/kn5;->t:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lyads/hn5;->b(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    iget-object v2, p0, Lyads/kn5;->x:Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Lyads/hn5;->b(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lyads/kn5;->u:Lyads/cw5;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lyads/cw5;->getIntrinsicWidth()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object p0, p0, Lyads/kn5;->y:Lyads/cw5;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lyads/cw5;->getIntrinsicWidth()I

    move-result v2

    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public final h()I
    .locals 3

    iget v0, p0, Lyads/kn5;->z:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lyads/kn5;->o:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lyads/hn5;->b(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    iget-object v1, p0, Lyads/kn5;->p:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Lyads/hn5;->b(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lyads/kn5;->t:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Lyads/hn5;->b(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    iget-object v2, p0, Lyads/kn5;->x:Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Lyads/hn5;->b(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lyads/kn5;->z:I

    :cond_0
    return v0
.end method

.method public final j()Z
    .locals 0

    iget-object p0, p0, Lyads/kn5;->v:Ljava/lang/Float;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final k()V
    .locals 4

    iget v0, p0, Lyads/kn5;->s:F

    iget v1, p0, Lyads/kn5;->m:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lyads/kn5;->n:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lyads/kn5;->a(FZZ)V

    invoke-virtual {p0}, Lyads/kn5;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lyads/kn5;->v:Ljava/lang/Float;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v3, p0, Lyads/kn5;->m:F

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v3, p0, Lyads/kn5;->n:F

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1, v2}, Lyads/kn5;->a(Ljava/lang/Float;ZZ)V

    :cond_1
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lyads/kn5;->h()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v3, p0, Lyads/kn5;->i:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/in5;

    iget v4, v3, Lyads/in5;->g:I

    iget v5, v3, Lyads/in5;->c:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, v3, Lyads/in5;->h:I

    iget v3, v3, Lyads/in5;->d:I

    add-int/2addr v5, v3

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v6, v3

    sget-object v7, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move v3, v4

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lyads/kn5;->a:Lyads/an5;

    iget-object v4, p0, Lyads/kn5;->r:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_1
    iget v5, v3, Lyads/an5;->b:I

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iget v6, v3, Lyads/an5;->a:I

    iget v3, v3, Lyads/an5;->b:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v3

    const/4 v3, 0x0

    invoke-virtual {v4, v3, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_1
    iget-object v3, p0, Lyads/kn5;->A:Lyads/fn5;

    iget-object v4, v3, Lyads/fn5;->a:Lyads/kn5;

    invoke-virtual {v4}, Lyads/kn5;->j()Z

    move-result v4

    iget-object v3, v3, Lyads/fn5;->a:Lyads/kn5;

    if-nez v4, :cond_2

    iget v3, v3, Lyads/kn5;->m:F

    :goto_2
    move v7, v3

    goto :goto_3

    :cond_2
    iget v4, v3, Lyads/kn5;->s:F

    iget-object v3, v3, Lyads/kn5;->v:Ljava/lang/Float;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    goto :goto_2

    :cond_3
    move v7, v4

    :goto_3
    iget-object v3, p0, Lyads/kn5;->A:Lyads/fn5;

    iget-object v4, v3, Lyads/fn5;->a:Lyads/kn5;

    invoke-virtual {v4}, Lyads/kn5;->j()Z

    move-result v4

    iget-object v3, v3, Lyads/fn5;->a:Lyads/kn5;

    if-nez v4, :cond_4

    iget v3, v3, Lyads/kn5;->s:F

    :goto_4
    move v8, v3

    goto :goto_5

    :cond_4
    iget v4, v3, Lyads/kn5;->s:F

    iget-object v3, v3, Lyads/kn5;->v:Ljava/lang/Float;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    goto :goto_4

    :cond_5
    move v8, v4

    :goto_5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0, v3, v7}, Lyads/kn5;->a(IF)I

    move-result v9

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0, v3, v8}, Lyads/kn5;->a(IF)I

    move-result v10

    iget-object v3, p0, Lyads/kn5;->a:Lyads/an5;

    iget-object v4, p0, Lyads/kn5;->q:Landroid/graphics/drawable/Drawable;

    if-le v9, v10, :cond_6

    move v5, v10

    goto :goto_6

    :cond_6
    move v5, v9

    :goto_6
    if-ge v10, v9, :cond_7

    move v6, v9

    goto :goto_7

    :cond_7
    move v6, v10

    :goto_7
    if-nez v4, :cond_8

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_8

    :cond_8
    iget v11, v3, Lyads/an5;->b:I

    div-int/lit8 v11, v11, 0x2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    iget v3, v3, Lyads/an5;->b:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v3

    invoke-virtual {v4, v5, v11, v6, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_8
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object v0, p0, Lyads/kn5;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/in5;

    iget v3, v0, Lyads/in5;->h:I

    if-lt v3, v9, :cond_10

    iget v4, v0, Lyads/in5;->g:I

    if-le v4, v10, :cond_9

    goto/16 :goto_c

    :cond_9
    if-lt v4, v9, :cond_a

    if-gt v3, v10, :cond_a

    iget-object v3, v0, Lyads/in5;->e:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    const/16 v6, 0x30

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lyads/kn5;->a(Lyads/in5;Lyads/kn5;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;III)V

    goto :goto_9

    :cond_a
    if-ge v4, v9, :cond_c

    if-gt v3, v10, :cond_c

    iget-object v3, v0, Lyads/in5;->f:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v1, v9, -0x1

    if-ge v1, v4, :cond_b

    move v5, v4

    goto :goto_a

    :cond_b
    move v5, v1

    :goto_a
    const/16 v6, 0x10

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lyads/kn5;->a(Lyads/in5;Lyads/kn5;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;III)V

    iget-object v3, v0, Lyads/in5;->e:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    const/16 v6, 0x20

    move v4, v9

    invoke-static/range {v0 .. v6}, Lyads/kn5;->a(Lyads/in5;Lyads/kn5;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;III)V

    goto :goto_9

    :cond_c
    if-lt v4, v9, :cond_e

    if-le v3, v10, :cond_e

    iget-object v3, v0, Lyads/in5;->e:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/16 v6, 0x10

    move-object v1, p0

    move-object v2, p1

    move v5, v10

    invoke-static/range {v0 .. v6}, Lyads/kn5;->a(Lyads/in5;Lyads/kn5;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;III)V

    iget-object v3, v0, Lyads/in5;->f:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v1, v10, 0x1

    iget v2, v0, Lyads/in5;->h:I

    if-le v1, v2, :cond_d

    move v4, v2

    goto :goto_b

    :cond_d
    move v4, v1

    :goto_b
    const/4 v5, 0x0

    const/16 v6, 0x20

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lyads/kn5;->a(Lyads/in5;Lyads/kn5;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;III)V

    goto :goto_9

    :cond_e
    iget-object v3, v0, Lyads/in5;->f:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    const/16 v6, 0x30

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lyads/kn5;->a(Lyads/in5;Lyads/kn5;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;III)V

    iget-object v0, v0, Lyads/in5;->e:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lyads/kn5;->a:Lyads/an5;

    if-nez v0, :cond_f

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_9

    :cond_f
    iget v4, v3, Lyads/an5;->b:I

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v3, v3, Lyads/an5;->b:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v3

    invoke-virtual {v0, v9, v4, v10, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_9

    :cond_10
    :goto_c
    iget-object v3, v0, Lyads/in5;->f:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    const/16 v6, 0x30

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lyads/kn5;->a(Lyads/in5;Lyads/kn5;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;III)V

    goto/16 :goto_9

    :cond_11
    iget v0, p0, Lyads/kn5;->m:F

    float-to-int v0, v0

    iget v1, p0, Lyads/kn5;->n:F

    float-to-int v1, v1

    if-gt v0, v1, :cond_14

    :goto_d
    float-to-int v3, v7

    float-to-int v4, v8

    if-gt v0, v4, :cond_12

    if-gt v3, v0, :cond_12

    iget-object v3, p0, Lyads/kn5;->o:Landroid/graphics/drawable/Drawable;

    goto :goto_e

    :cond_12
    iget-object v3, p0, Lyads/kn5;->p:Landroid/graphics/drawable/Drawable;

    :goto_e
    iget-object v4, p0, Lyads/kn5;->a:Lyads/an5;

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual {p0, v9, v5}, Lyads/kn5;->a(IF)I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v3, :cond_13

    goto :goto_f

    :cond_13
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int v10, v5, v9

    iget v11, v4, Lyads/an5;->b:I

    div-int/lit8 v11, v11, 0x2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    add-int/2addr v5, v9

    iget v4, v4, Lyads/an5;->b:I

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v4

    invoke-virtual {v3, v10, v11, v5, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_f
    if-eq v0, v1, :cond_14

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_14
    iget-object v0, p0, Lyads/kn5;->a:Lyads/an5;

    iget v1, p0, Lyads/kn5;->s:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0, v3, v1}, Lyads/kn5;->a(IF)I

    move-result v1

    iget-object v3, p0, Lyads/kn5;->t:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lyads/kn5;->s:F

    float-to-int v4, v4

    iget-object v5, p0, Lyads/kn5;->u:Lyads/cw5;

    move v2, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lyads/an5;->a(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;ILyads/cw5;)V

    invoke-virtual {p0}, Lyads/kn5;->j()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lyads/kn5;->a:Lyads/an5;

    iget-object v1, p0, Lyads/kn5;->v:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lyads/kn5;->a(IF)I

    move-result v2

    iget-object v3, p0, Lyads/kn5;->x:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lyads/kn5;->v:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-int v4, v1

    iget-object v5, p0, Lyads/kn5;->y:Lyads/cw5;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lyads/an5;->a(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;ILyads/cw5;)V

    :cond_15
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iget-object p0, p0, Lyads/kn5;->w:Lyads/rm5;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/customview/widget/ExploreByTouchHelper;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 5

    invoke-virtual {p0}, Lyads/kn5;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lyads/kn5;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, -0x80000000

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    goto :goto_0

    :cond_1
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, p2

    goto :goto_1

    :cond_3
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    iget-object p1, p0, Lyads/kn5;->a:Lyads/an5;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    sub-int p2, v0, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr p2, v2

    invoke-virtual {p0}, Lyads/kn5;->h()I

    move-result v2

    sub-int/2addr p2, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iput p2, p1, Lyads/an5;->a:I

    iput v1, p1, Lyads/an5;->b:I

    iget-object p1, p0, Lyads/kn5;->i:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/in5;

    iget v1, p2, Lyads/in5;->a:F

    iget v2, p0, Lyads/kn5;->m:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lyads/kn5;->a(IF)I

    move-result v1

    iget v2, p2, Lyads/in5;->c:I

    add-int/2addr v1, v2

    iput v1, p2, Lyads/in5;->g:I

    iget v1, p2, Lyads/in5;->b:F

    iget v2, p0, Lyads/kn5;->n:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lyads/kn5;->a(IF)I

    move-result v1

    iget v2, p2, Lyads/in5;->d:I

    sub-int/2addr v1, v2

    iput v1, p2, Lyads/in5;->h:I

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-boolean v0, p0, Lyads/kn5;->C:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lyads/kn5;->h()I

    move-result v2

    const/4 v3, 0x2

    div-int/2addr v2, v3

    sub-int/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    if-eqz v2, :cond_12

    if-eq v2, v5, :cond_b

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lyads/kn5;->B:Lyads/jn5;

    iget-object v3, p0, Lyads/kn5;->p:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_4

    iget-object v3, p0, Lyads/kn5;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget v3, p0, Lyads/kn5;->m:F

    int-to-float v0, v0

    iget v6, p0, Lyads/kn5;->n:F

    sub-float/2addr v6, v3

    mul-float/2addr v6, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v0, v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int/2addr v0, v7

    invoke-virtual {p0}, Lyads/kn5;->h()I

    move-result v7

    sub-int/2addr v0, v7

    int-to-float v0, v0

    div-float/2addr v6, v0

    invoke-static {p0}, Lyads/oh6;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lyads/kn5;->n:F

    sub-float/2addr v0, v6

    sub-float v6, v0, v4

    :cond_3
    add-float/2addr v3, v6

    goto :goto_1

    :cond_4
    :goto_0
    iget v3, p0, Lyads/kn5;->m:F

    int-to-float v0, v0

    iget v6, p0, Lyads/kn5;->n:F

    sub-float/2addr v6, v3

    mul-float/2addr v6, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v0, v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int/2addr v0, v7

    invoke-virtual {p0}, Lyads/kn5;->h()I

    move-result v7

    sub-int/2addr v0, v7

    int-to-float v0, v0

    div-float/2addr v6, v0

    invoke-static {p0}, Lyads/oh6;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lyads/kn5;->n:F

    sub-float/2addr v0, v6

    sub-float v6, v0, v4

    :cond_5
    add-float/2addr v3, v6

    invoke-static {v3}, Lw65;->b(F)I

    move-result v0

    int-to-float v3, v0

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v5, :cond_6

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v5}, Lyads/kn5;->a(Ljava/lang/Float;ZZ)V

    goto :goto_2

    :cond_6
    invoke-static {}, Lme0;->e()V

    return v1

    :cond_7
    invoke-virtual {p0, v3, v1, v5}, Lyads/kn5;->a(FZZ)V

    :goto_2
    iget-object v0, p0, Lyads/kn5;->G:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lyads/kn5;->G:Ljava/lang/Integer;

    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lyads/kn5;->F:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v0, v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_4

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lyads/kn5;->E:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    div-float/2addr v2, v0

    iget v0, p0, Lyads/kn5;->D:F

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_a

    move v1, v5

    :cond_a
    invoke-interface {v3, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :goto_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lyads/kn5;->E:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lyads/kn5;->F:F

    return v5

    :cond_b
    iget-object p1, p0, Lyads/kn5;->B:Lyads/jn5;

    iget-object v2, p0, Lyads/kn5;->p:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_e

    iget-object v2, p0, Lyads/kn5;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_c

    goto :goto_5

    :cond_c
    iget v2, p0, Lyads/kn5;->m:F

    int-to-float v0, v0

    iget v3, p0, Lyads/kn5;->n:F

    sub-float/2addr v3, v2

    mul-float/2addr v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v0, v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v0, v6

    invoke-virtual {p0}, Lyads/kn5;->h()I

    move-result v6

    sub-int/2addr v0, v6

    int-to-float v0, v0

    div-float/2addr v3, v0

    invoke-static {p0}, Lyads/oh6;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p0, Lyads/kn5;->n:F

    sub-float/2addr v0, v3

    sub-float v3, v0, v4

    :cond_d
    add-float/2addr v2, v3

    goto :goto_6

    :cond_e
    :goto_5
    iget v2, p0, Lyads/kn5;->m:F

    int-to-float v0, v0

    iget v3, p0, Lyads/kn5;->n:F

    sub-float/2addr v3, v2

    mul-float/2addr v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v0, v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v0, v6

    invoke-virtual {p0}, Lyads/kn5;->h()I

    move-result v6

    sub-int/2addr v0, v6

    int-to-float v0, v0

    div-float/2addr v3, v0

    invoke-static {p0}, Lyads/oh6;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Lyads/kn5;->n:F

    sub-float/2addr v0, v3

    sub-float v3, v0, v4

    :cond_f
    add-float/2addr v2, v3

    invoke-static {v2}, Lw65;->b(F)I

    move-result v0

    int-to-float v2, v0

    :goto_6
    iget-boolean v0, p0, Lyads/kn5;->l:Z

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_11

    if-ne p1, v5, :cond_10

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Lyads/kn5;->a(Ljava/lang/Float;ZZ)V

    goto :goto_7

    :cond_10
    invoke-static {}, Lme0;->e()V

    return v1

    :cond_11
    invoke-virtual {p0, v2, v0, v1}, Lyads/kn5;->a(FZZ)V

    :goto_7
    return v5

    :cond_12
    invoke-virtual {p0}, Lyads/kn5;->j()Z

    move-result v2

    if-nez v2, :cond_13

    sget-object v2, Lyads/jn5;->b:Lyads/jn5;

    goto :goto_8

    :cond_13
    iget v2, p0, Lyads/kn5;->s:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0, v3, v2}, Lyads/kn5;->a(IF)I

    move-result v2

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-object v3, p0, Lyads/kn5;->v:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p0, v6, v3}, Lyads/kn5;->a(IF)I

    move-result v3

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v2, v3, :cond_14

    sget-object v2, Lyads/jn5;->b:Lyads/jn5;

    goto :goto_8

    :cond_14
    sget-object v2, Lyads/jn5;->c:Lyads/jn5;

    :goto_8
    iput-object v2, p0, Lyads/kn5;->B:Lyads/jn5;

    iget-object v3, p0, Lyads/kn5;->p:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_17

    iget-object v3, p0, Lyads/kn5;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_15

    goto :goto_9

    :cond_15
    iget v3, p0, Lyads/kn5;->m:F

    int-to-float v0, v0

    iget v6, p0, Lyads/kn5;->n:F

    sub-float/2addr v6, v3

    mul-float/2addr v6, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v0, v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int/2addr v0, v7

    invoke-virtual {p0}, Lyads/kn5;->h()I

    move-result v7

    sub-int/2addr v0, v7

    int-to-float v0, v0

    div-float/2addr v6, v0

    invoke-static {p0}, Lyads/oh6;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget v0, p0, Lyads/kn5;->n:F

    sub-float/2addr v0, v6

    sub-float v6, v0, v4

    :cond_16
    add-float/2addr v3, v6

    goto :goto_a

    :cond_17
    :goto_9
    iget v3, p0, Lyads/kn5;->m:F

    int-to-float v0, v0

    iget v6, p0, Lyads/kn5;->n:F

    sub-float/2addr v6, v3

    mul-float/2addr v6, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v0, v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int/2addr v0, v7

    invoke-virtual {p0}, Lyads/kn5;->h()I

    move-result v7

    sub-int/2addr v0, v7

    int-to-float v0, v0

    div-float/2addr v6, v0

    invoke-static {p0}, Lyads/oh6;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget v0, p0, Lyads/kn5;->n:F

    sub-float/2addr v0, v6

    sub-float v6, v0, v4

    :cond_18
    add-float/2addr v3, v6

    invoke-static {v3}, Lw65;->b(F)I

    move-result v0

    int-to-float v3, v0

    :goto_a
    iget-boolean v0, p0, Lyads/kn5;->l:Z

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_1a

    if-ne v2, v5, :cond_19

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lyads/kn5;->a(Ljava/lang/Float;ZZ)V

    goto :goto_b

    :cond_19
    invoke-static {}, Lme0;->e()V

    return v1

    :cond_1a
    invoke-virtual {p0, v3, v0, v1}, Lyads/kn5;->a(FZZ)V

    :goto_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lyads/kn5;->E:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lyads/kn5;->F:F

    return v5
.end method

.method public final setActiveTickMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iput-object p1, p0, Lyads/kn5;->o:Landroid/graphics/drawable/Drawable;

    const/4 p1, -0x1

    iput p1, p0, Lyads/kn5;->z:I

    iget p1, p0, Lyads/kn5;->s:F

    invoke-static {p1}, Lw65;->b(F)I

    move-result p1

    int-to-float p1, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lyads/kn5;->a(FZZ)V

    iget-object p1, p0, Lyads/kn5;->v:Ljava/lang/Float;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-static {p1}, Lw65;->b(F)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Lyads/kn5;->a(Ljava/lang/Float;ZZ)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setActiveTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lyads/kn5;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setAnimationDuration(J)V
    .locals 2

    iget-wide v0, p0, Lyads/kn5;->j:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-wide p1, p0, Lyads/kn5;->j:J

    :cond_1
    :goto_0
    return-void
.end method

.method public final setAnimationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lyads/kn5;->l:Z

    return-void
.end method

.method public final setInactiveTickMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iput-object p1, p0, Lyads/kn5;->p:Landroid/graphics/drawable/Drawable;

    const/4 p1, -0x1

    iput p1, p0, Lyads/kn5;->z:I

    iget p1, p0, Lyads/kn5;->s:F

    invoke-static {p1}, Lw65;->b(F)I

    move-result p1

    int-to-float p1, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lyads/kn5;->a(FZZ)V

    iget-object p1, p0, Lyads/kn5;->v:Ljava/lang/Float;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-static {p1}, Lw65;->b(F)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Lyads/kn5;->a(Ljava/lang/Float;ZZ)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setInactiveTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lyads/kn5;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setInteractive(Z)V
    .locals 0

    iput-boolean p1, p0, Lyads/kn5;->C:Z

    return-void
.end method

.method public final setInterceptionAngle(F)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x42b40000    # 90.0f

    rem-float/2addr p1, v0

    const/high16 v0, 0x42340000    # 45.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lyads/kn5;->D:F

    return-void
.end method

.method public final setMaxValue(F)V
    .locals 2

    iget v0, p0, Lyads/kn5;->n:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lyads/kn5;->m:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lyads/kn5;->setMinValue(F)V

    iput p1, p0, Lyads/kn5;->n:F

    invoke-virtual {p0}, Lyads/kn5;->k()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setMinValue(F)V
    .locals 2

    iget v0, p0, Lyads/kn5;->m:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lyads/kn5;->n:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lyads/kn5;->setMaxValue(F)V

    iput p1, p0, Lyads/kn5;->m:F

    invoke-virtual {p0}, Lyads/kn5;->k()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lyads/kn5;->t:Landroid/graphics/drawable/Drawable;

    const/4 p1, -0x1

    iput p1, p0, Lyads/kn5;->z:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setThumbSecondTextDrawable(Lyads/cw5;)V
    .locals 0

    iput-object p1, p0, Lyads/kn5;->y:Lyads/cw5;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setThumbSecondaryDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lyads/kn5;->x:Landroid/graphics/drawable/Drawable;

    const/4 p1, -0x1

    iput p1, p0, Lyads/kn5;->z:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setThumbSecondaryValue(Ljava/lang/Float;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lyads/kn5;->a(Ljava/lang/Float;ZZ)V

    return-void
.end method

.method public final setThumbTextDrawable(Lyads/cw5;)V
    .locals 0

    iput-object p1, p0, Lyads/kn5;->u:Lyads/cw5;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setThumbValue(FZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lyads/kn5;->a(FZZ)V

    return-void
.end method

.method public final setValueToAccessibilityThumb$mobileads_externalRelease(Lyads/jn5;F)V
    .locals 2

    iget v0, p0, Lyads/kn5;->m:F

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget v0, p0, Lyads/kn5;->n:F

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v1, :cond_0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Lyads/kn5;->a(Ljava/lang/Float;ZZ)V

    return-void

    :cond_0
    invoke-static {}, Lme0;->e()V

    return-void

    :cond_1
    invoke-virtual {p0, p2, v0, v1}, Lyads/kn5;->a(FZZ)V

    return-void
.end method
