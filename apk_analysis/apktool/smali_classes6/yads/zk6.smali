.class public final Lyads/zk6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/pf3;


# instance fields
.field public final a:Lyads/cg3;

.field public b:F

.field public final c:Landroid/graphics/RectF;

.field public d:F

.field public e:F

.field public final f:Lyads/yf3;


# direct methods
.method public constructor <init>(Lyads/cg3;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/zk6;->a:Lyads/cg3;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lyads/zk6;->c:Landroid/graphics/RectF;

    iget-object p1, p1, Lyads/cg3;->c:Lyads/bg3;

    instance-of v0, p1, Lyads/zf3;

    if-eqz v0, :cond_0

    check-cast p1, Lyads/zf3;

    iget-object p1, p1, Lyads/zf3;->b:Lyads/wf3;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lyads/ag3;

    if-eqz v0, :cond_1

    check-cast p1, Lyads/ag3;

    iget-object v0, p1, Lyads/ag3;->b:Lyads/xf3;

    iget v1, v0, Lyads/xf3;->a:F

    iget p1, p1, Lyads/ag3;->c:F

    add-float/2addr v1, p1

    iget v2, v0, Lyads/xf3;->b:F

    add-float/2addr v2, p1

    const/4 p1, 0x4

    invoke-static {v0, v1, v2, p1}, Lyads/xf3;->a(Lyads/xf3;FFI)Lyads/xf3;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lyads/zk6;->f:Lyads/yf3;

    return-void

    :cond_1
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final a(FFFZ)Landroid/graphics/RectF;
    .locals 8

    iget v0, p0, Lyads/zk6;->e:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-nez v2, :cond_0

    iget-object v0, p0, Lyads/zk6;->a:Lyads/cg3;

    iget-object v0, v0, Lyads/cg3;->b:Lyads/bg3;

    invoke-virtual {v0}, Lyads/bg3;->b()Lyads/yf3;

    move-result-object v0

    invoke-virtual {v0}, Lyads/yf3;->b()F

    move-result v0

    :cond_0
    iget-object v2, p0, Lyads/zk6;->c:Landroid/graphics/RectF;

    iget-object v3, p0, Lyads/zk6;->a:Lyads/cg3;

    iget-object v3, v3, Lyads/cg3;->b:Lyads/bg3;

    invoke-virtual {v3}, Lyads/bg3;->b()Lyads/yf3;

    move-result-object v3

    invoke-virtual {v3}, Lyads/yf3;->a()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v3, p2, v3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lyads/zk6;->c:Landroid/graphics/RectF;

    const/high16 v3, 0x3f000000    # 0.5f

    if-eqz p4, :cond_3

    iget p4, p0, Lyads/zk6;->d:F

    iget v5, p0, Lyads/zk6;->b:F

    sub-float v3, v5, v3

    mul-float/2addr v3, p4

    mul-float/2addr v3, v4

    cmpg-float v6, v3, v1

    if-gez v6, :cond_1

    move v3, v1

    :cond_1
    sub-float v3, p1, v3

    div-float/2addr v0, v4

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->right:F

    mul-float/2addr v5, p4

    mul-float/2addr v5, v4

    cmpl-float v3, v5, p4

    if-lez v3, :cond_2

    goto :goto_0

    :cond_2
    move p4, v5

    :goto_0
    sub-float/2addr p1, p4

    sub-float/2addr p1, v0

    iput p1, v2, Landroid/graphics/RectF;->left:F

    goto :goto_1

    :cond_3
    iget p4, p0, Lyads/zk6;->d:F

    iget v5, p0, Lyads/zk6;->b:F

    mul-float v6, p4, v5

    mul-float/2addr v6, v4

    cmpl-float v7, v6, p4

    if-lez v7, :cond_4

    move v6, p4

    :cond_4
    add-float/2addr v6, p1

    div-float/2addr v0, v4

    add-float/2addr v6, v0

    iput v6, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v3

    mul-float/2addr v5, p4

    mul-float/2addr v5, v4

    cmpg-float p4, v5, v1

    if-gez p4, :cond_5

    move v5, v1

    :cond_5
    add-float/2addr v5, p1

    sub-float/2addr v5, v0

    iput v5, v2, Landroid/graphics/RectF;->left:F

    :goto_1
    iget-object p1, p0, Lyads/zk6;->a:Lyads/cg3;

    iget-object p1, p1, Lyads/cg3;->b:Lyads/bg3;

    invoke-virtual {p1}, Lyads/bg3;->b()Lyads/yf3;

    move-result-object p1

    invoke-virtual {p1}, Lyads/yf3;->a()F

    move-result p1

    div-float/2addr p1, v4

    add-float/2addr p1, p2

    iput p1, v2, Landroid/graphics/RectF;->bottom:F

    iget-object p1, p0, Lyads/zk6;->c:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->left:F

    cmpg-float p4, p2, v1

    if-gez p4, :cond_6

    neg-float p2, p2

    invoke-virtual {p1, p2, v1}, Landroid/graphics/RectF;->offset(FF)V

    :cond_6
    iget-object p1, p0, Lyads/zk6;->c:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->right:F

    cmpl-float p4, p2, p3

    if-lez p4, :cond_7

    sub-float/2addr p2, p3

    neg-float p2, p2

    invoke-virtual {p1, p2, v1}, Landroid/graphics/RectF;->offset(FF)V

    :cond_7
    iget-object p0, p0, Lyads/zk6;->c:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final a(I)Lyads/yf3;
    .locals 0

    .line 153
    iget-object p0, p0, Lyads/zk6;->f:Lyads/yf3;

    return-object p0
.end method

.method public final a(F)V
    .locals 0

    .line 151
    iput p1, p0, Lyads/zk6;->d:F

    return-void
.end method

.method public final a(IF)V
    .locals 0

    .line 152
    iput p2, p0, Lyads/zk6;->b:F

    return-void
.end method

.method public final b(I)I
    .locals 0

    iget-object p0, p0, Lyads/zk6;->a:Lyads/cg3;

    iget-object p0, p0, Lyads/cg3;->c:Lyads/bg3;

    invoke-virtual {p0}, Lyads/bg3;->a()I

    move-result p0

    return p0
.end method

.method public final b(F)V
    .locals 0

    .line 9
    iput p1, p0, Lyads/zk6;->e:F

    return-void
.end method

.method public final c(I)I
    .locals 0

    iget-object p0, p0, Lyads/zk6;->a:Lyads/cg3;

    iget-object p0, p0, Lyads/cg3;->c:Lyads/bg3;

    instance-of p1, p0, Lyads/ag3;

    if-eqz p1, :cond_0

    check-cast p0, Lyads/ag3;

    iget p0, p0, Lyads/ag3;->d:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final e(I)F
    .locals 0

    iget-object p0, p0, Lyads/zk6;->a:Lyads/cg3;

    iget-object p0, p0, Lyads/cg3;->c:Lyads/bg3;

    instance-of p1, p0, Lyads/ag3;

    if-eqz p1, :cond_0

    check-cast p0, Lyads/ag3;

    iget p0, p0, Lyads/ag3;->c:F

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
