.class public final Lyads/rc5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/pf3;


# instance fields
.field public final a:Lyads/cg3;

.field public final b:Landroid/animation/ArgbEvaluator;

.field public final c:Landroid/util/SparseArray;

.field public d:I


# direct methods
.method public constructor <init>(Lyads/cg3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/rc5;->a:Lyads/cg3;

    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p1, p0, Lyads/rc5;->b:Landroid/animation/ArgbEvaluator;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lyads/rc5;->c:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final a(FFFZ)Landroid/graphics/RectF;
    .locals 0

    .line 123
    const/4 p0, 0x0

    return-object p0
.end method

.method public final a(I)Lyads/yf3;
    .locals 7

    iget-object v0, p0, Lyads/rc5;->a:Lyads/cg3;

    iget-object v1, v0, Lyads/cg3;->b:Lyads/bg3;

    instance-of v2, v1, Lyads/zf3;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lyads/cg3;->c:Lyads/bg3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lyads/zf3;

    new-instance v2, Lyads/wf3;

    iget-object v0, v0, Lyads/zf3;->b:Lyads/wf3;

    iget v0, v0, Lyads/wf3;->a:F

    check-cast v1, Lyads/zf3;

    iget-object v1, v1, Lyads/zf3;->b:Lyads/wf3;

    iget v1, v1, Lyads/wf3;->a:F

    invoke-virtual {p0, p1}, Lyads/rc5;->f(I)F

    move-result p0

    invoke-static {v1, v0, p0, v0}, Li8;->b(FFFF)F

    move-result p0

    invoke-direct {v2, p0}, Lyads/wf3;-><init>(F)V

    return-object v2

    :cond_0
    instance-of v2, v1, Lyads/ag3;

    if-eqz v2, :cond_1

    iget-object v0, v0, Lyads/cg3;->c:Lyads/bg3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lyads/ag3;

    new-instance v2, Lyads/xf3;

    iget-object v3, v0, Lyads/ag3;->b:Lyads/xf3;

    iget v3, v3, Lyads/xf3;->a:F

    iget v4, v0, Lyads/ag3;->c:F

    add-float/2addr v3, v4

    check-cast v1, Lyads/ag3;

    iget-object v4, v1, Lyads/ag3;->b:Lyads/xf3;

    iget v4, v4, Lyads/xf3;->a:F

    iget v5, v1, Lyads/ag3;->c:F

    add-float/2addr v4, v5

    invoke-virtual {p0, p1}, Lyads/rc5;->f(I)F

    move-result v5

    invoke-static {v4, v3, v5, v3}, Li8;->b(FFFF)F

    move-result v3

    iget-object v4, v0, Lyads/ag3;->b:Lyads/xf3;

    iget v4, v4, Lyads/xf3;->b:F

    iget v5, v0, Lyads/ag3;->c:F

    add-float/2addr v4, v5

    iget-object v5, v1, Lyads/ag3;->b:Lyads/xf3;

    iget v5, v5, Lyads/xf3;->b:F

    iget v6, v1, Lyads/ag3;->c:F

    add-float/2addr v5, v6

    invoke-virtual {p0, p1}, Lyads/rc5;->f(I)F

    move-result v6

    invoke-static {v5, v4, v6, v4}, Li8;->b(FFFF)F

    move-result v4

    iget-object v0, v0, Lyads/ag3;->b:Lyads/xf3;

    iget v0, v0, Lyads/xf3;->c:F

    iget-object v1, v1, Lyads/ag3;->b:Lyads/xf3;

    iget v1, v1, Lyads/xf3;->c:F

    invoke-virtual {p0, p1}, Lyads/rc5;->f(I)F

    move-result p0

    invoke-static {v1, v0, p0, v0}, Li8;->b(FFFF)F

    move-result p0

    invoke-direct {v2, v3, v4, p0}, Lyads/xf3;-><init>(FFF)V

    return-object v2

    :cond_1
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final a(IF)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    .line 124
    iget-object v3, p0, Lyads/rc5;->c:Landroid/util/SparseArray;

    if-nez v2, :cond_0

    .line 125
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 126
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 127
    :goto_0
    iget v0, p0, Lyads/rc5;->d:I

    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x1

    if-ge p1, v2, :cond_2

    add-int/2addr p1, v3

    cmpg-float v0, p2, v1

    .line 128
    iget-object p0, p0, Lyads/rc5;->c:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 129
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void

    .line 130
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_2
    if-le v0, v3, :cond_4

    cmpg-float p1, p2, v1

    .line 131
    iget-object p0, p0, Lyads/rc5;->c:Landroid/util/SparseArray;

    const/4 v0, 0x0

    if-nez p1, :cond_3

    .line 132
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->remove(I)V

    return-void

    .line 133
    :cond_3
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public final b(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lyads/rc5;->f(I)F

    move-result p1

    iget-object v0, p0, Lyads/rc5;->a:Lyads/cg3;

    iget-object v0, v0, Lyads/cg3;->c:Lyads/bg3;

    invoke-virtual {v0}, Lyads/bg3;->a()I

    move-result v0

    iget-object v1, p0, Lyads/rc5;->a:Lyads/cg3;

    iget-object v1, v1, Lyads/cg3;->b:Lyads/bg3;

    invoke-virtual {v1}, Lyads/bg3;->a()I

    move-result v1

    iget-object p0, p0, Lyads/rc5;->b:Landroid/animation/ArgbEvaluator;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final c(I)I
    .locals 3

    iget-object v0, p0, Lyads/rc5;->a:Lyads/cg3;

    iget-object v1, v0, Lyads/cg3;->b:Lyads/bg3;

    instance-of v2, v1, Lyads/ag3;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lyads/cg3;->c:Lyads/bg3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lyads/ag3;

    invoke-virtual {p0, p1}, Lyads/rc5;->f(I)F

    move-result p1

    iget v0, v0, Lyads/ag3;->d:I

    check-cast v1, Lyads/ag3;

    iget v1, v1, Lyads/ag3;->d:I

    iget-object p0, p0, Lyads/rc5;->b:Landroid/animation/ArgbEvaluator;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lyads/rc5;->d:I

    return-void
.end method

.method public final e(I)F
    .locals 3

    iget-object v0, p0, Lyads/rc5;->a:Lyads/cg3;

    iget-object v1, v0, Lyads/cg3;->b:Lyads/bg3;

    instance-of v2, v1, Lyads/ag3;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lyads/cg3;->c:Lyads/bg3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lyads/ag3;

    iget v0, v0, Lyads/ag3;->c:F

    check-cast v1, Lyads/ag3;

    iget v1, v1, Lyads/ag3;->c:F

    sub-float/2addr v1, v0

    invoke-virtual {p0, p1}, Lyads/rc5;->f(I)F

    move-result p0

    mul-float/2addr p0, v1

    add-float/2addr p0, v0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final f(I)F
    .locals 1

    iget-object p0, p0, Lyads/rc5;->c:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final onPageSelected(I)V
    .locals 1

    iget-object v0, p0, Lyads/rc5;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object p0, p0, Lyads/rc5;->c:Landroid/util/SparseArray;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
