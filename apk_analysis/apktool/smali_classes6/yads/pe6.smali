.class public final Lyads/pe6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/iw4;


# instance fields
.field public final a:Lyads/ix3;

.field public b:Lyads/ql5;

.field public c:Lyads/ql5;

.field public d:Landroid/view/TextureView;

.field public e:Lyads/se6;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lyads/ix3;

    invoke-direct {v0}, Lyads/ix3;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/pe6;->a:Lyads/ix3;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lyads/pe6;->c:Lyads/ql5;

    iget-object v1, p0, Lyads/pe6;->e:Lyads/se6;

    iget-object v2, p0, Lyads/pe6;->b:Lyads/ql5;

    iget-object p0, p0, Lyads/pe6;->d:Landroid/view/TextureView;

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-eqz p0, :cond_4

    new-instance v3, Lyads/re6;

    invoke-direct {v3, v0, v2}, Lyads/re6;-><init>(Lyads/ql5;Lyads/ql5;)V

    iget v4, v2, Lyads/ql5;->b:I

    if-lez v4, :cond_3

    iget v4, v2, Lyads/ql5;->c:I

    if-lez v4, :cond_3

    iget v4, v0, Lyads/ql5;->b:I

    if-lez v4, :cond_3

    iget v4, v0, Lyads/ql5;->c:I

    if-lez v4, :cond_3

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v4, 0x1

    if-eq v1, v4, :cond_1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    iget v1, v0, Lyads/ql5;->b:I

    int-to-float v1, v1

    iget v4, v2, Lyads/ql5;->b:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    iget v0, v0, Lyads/ql5;->c:I

    int-to-float v0, v0

    iget v2, v2, Lyads/ql5;->c:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    div-float v1, v2, v1

    div-float/2addr v2, v0

    sget-object v0, Lyads/qe6;->c:Lyads/qe6;

    invoke-virtual {v3, v1, v2, v0}, Lyads/re6;->a(FFLyads/qe6;)Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lme0;->e()V

    return-void

    :cond_1
    iget v1, v0, Lyads/ql5;->b:I

    int-to-float v1, v1

    iget v4, v2, Lyads/ql5;->b:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    iget v0, v0, Lyads/ql5;->c:I

    int-to-float v0, v0

    iget v2, v2, Lyads/ql5;->c:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float v1, v2, v1

    div-float/2addr v2, v0

    sget-object v0, Lyads/qe6;->c:Lyads/qe6;

    invoke-virtual {v3, v1, v2, v0}, Lyads/re6;->a(FFLyads/qe6;)Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Lyads/qe6;->b:Lyads/qe6;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v3, v1, v1, v0}, Lyads/re6;->a(FFLyads/qe6;)Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    :cond_4
    return-void
.end method

.method public final a(Lyads/ye6;)V
    .locals 3

    .line 125
    iget v0, p1, Lyads/ye6;->b:I

    .line 126
    iget v1, p1, Lyads/ye6;->e:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    .line 127
    invoke-static {v0}, Lw65;->b(F)I

    move-result v0

    .line 128
    :cond_0
    new-instance v1, Lyads/ql5;

    iget p1, p1, Lyads/ye6;->c:I

    invoke-direct {v1, v0, p1}, Lyads/ql5;-><init>(II)V

    iput-object v1, p0, Lyads/pe6;->b:Lyads/ql5;

    .line 129
    invoke-virtual {p0}, Lyads/pe6;->a()V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lyads/pe6;->d:Landroid/view/TextureView;

    iget-object v1, p0, Lyads/pe6;->e:Lyads/se6;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyads/pe6;->a:Lyads/ix3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method public final onSurfaceSizeChanged(II)V
    .locals 1

    new-instance v0, Lyads/ql5;

    invoke-direct {v0, p1, p2}, Lyads/ql5;-><init>(II)V

    iput-object v0, p0, Lyads/pe6;->c:Lyads/ql5;

    invoke-virtual {p0}, Lyads/pe6;->a()V

    return-void
.end method
